#!/bin/bash
# =============================================================================
# Installation du DSDT corrigé pour ELAN0643 — Lenovo 14w Gen 2
# Télécharge le DSDT pré-corrigé depuis GitHub et l'installe.
# =============================================================================

set -euo pipefail

# --- Couleurs ---
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

# --- Installation des outils nécessaires ---
info "Vérification des outils..."
MISSING=()
for tool in git wget iasl cpio update-grub; do
    if ! command -v "$tool" &> /dev/null; then
        MISSING+=("$tool")
    fi
done

if [ ${#MISSING[@]} -gt 0 ]; then
    warning "Outils manquants : ${MISSING[*]}"
    info "Installation en cours..."
    apt-get update && apt-get install -y git wget acpica-tools cpio || error "Échec de l'installation."
fi
success "Tous les outils sont disponibles."

# --- Téléchargement du DSDT corrigé depuis GitHub ---
GITHUB_URL="https://raw.githubusercontent.com/lenormandien/lenovo-14w-gen2-touchpad-fix/main/dsdt.dsl"
WORKDIR=$(mktemp -d /tmp/acpi-fix-XXXXXX)
cd "$WORKDIR"

info "Téléchargement du DSDT corrigé depuis GitHub..."
if ! wget -O dsdt.dsl "$GITHUB_URL"; then
    error "Échec du téléchargement. Vérifie ta connexion Internet."
fi
success "DSDT corrigé téléchargé : dsdt.dsl"

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
success "Tables ACPI installées."

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
