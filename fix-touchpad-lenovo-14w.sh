#!/bin/bash
# =============================================================================
# Installation du DSDT corrigé pour ELAN0643 — Lenovo 14w Gen 2
# Utilise le dépôt GitHub local déjà cloné pour installer le DSDT pré-corrigé.
# =============================================================================

set -euo pipefail

# --- Couleurs pour les messages ---
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

info()    { echo -e "${BLUE}[INFO]${NC} $1"; }
success() { echo -e "${GREEN}[OK]${NC} $1"; }
warning() { echo -e "${YELLOW}[ATTENTION]${NC} $1"; }
error()   { echo -e "${RED}[ERREUR]${NC} $1"; exit 1; }

# --- Vérification root ---
if [ "$EUID" -ne 0 ]; then
    error "Exécute ce script en root : sudo bash $0"
fi

# --- Vérification des outils nécessaires ---
info "Vérification des outils..."
MISSING=()
for tool in iasl cpio update-grub; do
    if ! command -v "$tool" &> /dev/null; then
        MISSING+=("$tool")
    fi
done

if [ ${#MISSING[@]} -gt 0 ]; then
    warning "Outils manquants : ${MISSING[*]}"
    info "Installation en cours..."
    apt-get update && apt-get install -y acpica-tools cpio || error "Échec de l'installation des outils."
fi
success "Tous les outils sont disponibles."

# --- Vérification du dépôt GitHub local ---
REPO_DIR="lenovo-14w-gen2-touchpad-fix"
DSDT_SRC="$REPO_DIR/dsdt.dsl"

if [ ! -d "$REPO_DIR" ]; then
    error "Le dépôt '$REPO_DIR' n'existe pas. Clone-le d'abord avec :\n  git clone https://github.com/lenormandien/lenovo-14w-gen2-touchpad-fix.git"
fi

if [ ! -f "$DSDT_SRC" ]; then
    error "Fichier '$DSDT_SRC' introuvable. Vérifie le dépôt cloné."
fi
success "DSDT corrigé trouvé : $DSDT_SRC"

# --- Copie du DSDT corrigé dans un répertoire temporaire ---
WORKDIR=$(mktemp -d /tmp/acpi-fix-XXXXXX)
cp "$DSDT_SRC" "$WORKDIR/dsdt.dsl"
cd "$WORKDIR"
success "DSDT copié dans $WORKDIR/dsdt.dsl"

# --- Recompilation du DSDT ---
info "Recompilation du DSDT..."
if ! iasl -sa dsdt.dsl; then
    error "Erreur de recompilation. Vérifie le fichier dsdt.dsl."
fi
success "DSDT recompilé avec succès (dsdt.aml généré)."

# --- Installation des tables ACPI ---
info "Installation des tables ACPI..."
mkdir -p kernel/firmware/acpi
cp dsdt.aml kernel/firmware/acpi/
find kernel | cpio -H newc --create > /boot/initrd_acpi_patched
echo 'GRUB_EARLY_INITRD_LINUX_CUSTOM="initrd_acpi_patched"' > /etc/default/grub.d/acpi-tables.cfg
if ! update-grub; then
    error "Échec de la mise à jour de GRUB."
fi
success "Tables ACPI installées avec succès."

# --- Nettoyage ---
cd /
rm -rf "$WORKDIR"
success "Nettoyage terminé."

# --- Instructions finales ---
echo ""
echo -e "${GREEN}============================================================${NC}"
echo -e "${GREEN}   DSDT corrigé installé avec succès !${NC}"
echo -e "${GREEN}============================================================${NC}"
echo ""
echo -e "  👉 Redémarre ton laptop pour activer le correctif :"
echo -e "     ${YELLOW}reboot${NC}"
echo ""
echo -e "  Après redémarrage, vérifie le touchpad avec :"
echo -e "     ${YELLOW}dmesg | grep -i elan${NC}"
echo -e "     ${YELLOW}libinput list-devices | grep -A 10 Touchpad${NC}"
echo ""
