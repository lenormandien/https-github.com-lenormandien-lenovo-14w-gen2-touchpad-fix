#!/bin/bash
# =============================================================================
# Installation du DSDT corrigé pour ELAN0643 — Lenovo 14w Gen 2
# Utilise le fichier dsdt.dsl déjà présent dans le répertoire courant.
#
# Usage : sudo bash install-dsdt-elan0643.sh
# =============================================================================
set -euo pipefail

# --- Couleurs pour les messages ---
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

info()    { echo -e "${BLUE}[INFO]${NC} $1"; }
success() { echo -e "${GREEN}[OK]${NC} $1"; }
warning() { echo -e "${YELLOW}[ATTENTION]${NC} $1"; }
error()   { echo -e "${RED}[ERREUR]${NC} $1"; exit 1; }
step()    { echo -e "\n${BOLD}${CYAN}>>> $1${NC}"; }
detail()  { echo -e "    ${NC}$1"; }

# =============================================================================
# Bannière
# =============================================================================
echo ""
echo -e "${BOLD}${BLUE}============================================================${NC}"
echo -e "${BOLD}${BLUE}   Installation DSDT — Touchpad ELAN0643 Lenovo 14w Gen 2${NC}"
echo -e "${BOLD}${BLUE}============================================================${NC}"
echo -e "  Script    : $0"
echo -e "  Répertoire: $(pwd)"
echo -e "  Date      : $(date '+%Y-%m-%d %H:%M:%S')"
echo -e "  Kernel    : $(uname -r)"
echo -e "${BLUE}------------------------------------------------------------${NC}"

# =============================================================================
# 0. Vérifications préliminaires
# =============================================================================
step "Étape 0 — Vérifications préliminaires"

# Vérification root
info "Vérification des privilèges root..."
if [ "$EUID" -ne 0 ]; then
    error "Ce script doit être exécuté en root.\n    Relance avec : sudo bash $0"
fi
success "Privilèges root confirmés (UID=0)."

# Vérification des outils
info "Recherche des outils nécessaires : iasl, cpio, update-grub..."
MISSING=()
for tool in iasl cpio update-grub; do
    if command -v "$tool" &> /dev/null; then
        detail "✔ $tool → $(command -v "$tool")"
    else
        detail "✘ $tool → introuvable"
        MISSING+=("$tool")
    fi
done

if [ ${#MISSING[@]} -gt 0 ]; then
    warning "Outils manquants : ${MISSING[*]}"
    info "Tentative d'installation via apt-get..."
    apt-get update -qq
    apt-get install -y acpica-tools cpio || error "Échec de l'installation des outils. Installe-les manuellement."
    success "Outils installés."
else
    success "Tous les outils sont disponibles."
fi

# Vérification du fichier dsdt.dsl
info "Recherche du fichier dsdt.dsl dans le répertoire courant..."
if [ ! -f "dsdt.dsl" ]; then
    error "Fichier 'dsdt.dsl' introuvable dans $(pwd).\n    Place ce script au même endroit que dsdt.dsl et relance."
fi
detail "Fichier trouvé : $(pwd)/dsdt.dsl"
detail "Taille         : $(wc -l < dsdt.dsl) lignes, $(du -h dsdt.dsl | cut -f1)"
success "dsdt.dsl présent."

# Vérification que ELAN0643 est bien dans le DSDT
info "Vérification de la présence de ELAN0643 dans le DSDT..."
if grep -q "ELAN0643" dsdt.dsl; then
    detail "Occurences trouvées :"
    grep -n "ELAN0643" dsdt.dsl | while IFS= read -r line; do
        detail "  ligne $line"
    done
    success "ELAN0643 trouvé dans dsdt.dsl."
else
    warning "ELAN0643 non trouvé dans dsdt.dsl. Ce fichier correspond-il bien au bon laptop ?"
    read -rp "    Continuer quand même ? (o/N) : " CONFIRM
    [[ "$CONFIRM" =~ ^[oO]$ ]] || exit 0
fi

# Vérification rapide que le patch est déjà appliqué
info "Vérification que le correctif ELAN0643 est bien appliqué dans dsdt.dsl..."
PATCH_DSM=$(grep -c "//If.*TPTY.*0x02\|// If.*TPTY.*0x02" dsdt.dsl || true)
if [ "$PATCH_DSM" -ge 1 ]; then
    success "Le correctif semble bien appliqué (If TPTY==0x02 commenté détecté)."
else
    warning "Le correctif ELAN0643 ne semble PAS appliqué dans dsdt.dsl !"
    warning "Assure-toi d'utiliser le bon fichier avant de continuer."
    read -rp "    Continuer quand même ? (o/N) : " CONFIRM
    [[ "$CONFIRM" =~ ^[oO]$ ]] || exit 0
fi

# =============================================================================
# 1. Recompilation du DSDT
# =============================================================================
step "Étape 1 — Recompilation du DSDT"

info "Lancement de iasl -sa dsdt.dsl..."
echo -e "${CYAN}-------- sortie iasl --------${NC}"
if ! iasl -sa dsdt.dsl; then
    echo -e "${CYAN}-----------------------------${NC}"
    error "iasl a signalé une erreur. Vérifie la syntaxe de dsdt.dsl."
fi
echo -e "${CYAN}-----------------------------${NC}"

info "Vérification de la génération de dsdt.aml..."
if [ ! -f "dsdt.aml" ]; then
    error "dsdt.aml non généré par iasl malgré un exit code 0. Vérifie les warnings ci-dessus."
fi
detail "Fichier généré : $(pwd)/dsdt.aml"
detail "Taille         : $(du -h dsdt.aml | cut -f1)"
success "DSDT recompilé avec succès."

# =============================================================================
# 2. Construction de l'initrd ACPI
# =============================================================================
step "Étape 2 — Construction de l'archive initrd ACPI"

WORKDIR=$(mktemp -d /tmp/acpi-fix-XXXXXX)
info "Répertoire de travail temporaire : $WORKDIR"

info "Création de la structure kernel/firmware/acpi/..."
mkdir -p "$WORKDIR/kernel/firmware/acpi"
detail "Structure : $WORKDIR/kernel/firmware/acpi/"

info "Copie de dsdt.aml dans l'arborescence..."
cp dsdt.aml "$WORKDIR/kernel/firmware/acpi/"
detail "Copié     : $WORKDIR/kernel/firmware/acpi/dsdt.aml"
success "Arborescence prête."

info "Génération de l'archive cpio /boot/initrd_acpi_patched..."
detail "Commande  : (cd $WORKDIR && find kernel | cpio -H newc --create)"
CPIO_FILES=$(cd "$WORKDIR" && find kernel | wc -l)
detail "Fichiers à archiver : $CPIO_FILES"
(cd "$WORKDIR" && find kernel | cpio -H newc --create) > /boot/initrd_acpi_patched
detail "Archive produite  : /boot/initrd_acpi_patched"
detail "Taille            : $(du -h /boot/initrd_acpi_patched | cut -f1)"
success "Archive /boot/initrd_acpi_patched créée."

# =============================================================================
# 3. Configuration de GRUB
# =============================================================================
step "Étape 3 — Configuration de GRUB"

GRUB_CONF="/etc/default/grub.d/acpi-tables.cfg"
info "Création du fichier de configuration GRUB : $GRUB_CONF"
mkdir -p /etc/default/grub.d
echo 'GRUB_EARLY_INITRD_LINUX_CUSTOM="initrd_acpi_patched"' > "$GRUB_CONF"
detail "Contenu :"
detail "  $(cat "$GRUB_CONF")"
success "Fichier $GRUB_CONF écrit."

info "Mise à jour de la configuration GRUB (update-grub)..."
echo -e "${CYAN}-------- sortie update-grub --------${NC}"
if ! update-grub; then
    echo -e "${CYAN}-----------------------------------${NC}"
    error "update-grub a échoué. Vérifie ta configuration GRUB."
fi
echo -e "${CYAN}-----------------------------------${NC}"
success "GRUB mis à jour avec succès."

# =============================================================================
# 4. Nettoyage
# =============================================================================
step "Étape 4 — Nettoyage"

info "Suppression du répertoire de travail temporaire : $WORKDIR"
rm -rf "$WORKDIR"
success "Nettoyage terminé."

# =============================================================================
# Récapitulatif et instructions finales
# =============================================================================
echo ""
echo -e "${BOLD}${GREEN}============================================================${NC}"
echo -e "${BOLD}${GREEN}   DSDT corrigé installé avec succès !${NC}"
echo -e "${BOLD}${GREEN}============================================================${NC}"
echo ""
echo -e "  Fichiers installés :"
echo -e "    ${CYAN}/boot/initrd_acpi_patched${NC}   ($(du -h /boot/initrd_acpi_patched | cut -f1))"
echo -e "    ${CYAN}$GRUB_CONF${NC}"
echo ""
echo -e "  👉 Redémarre pour activer le correctif :"
echo -e "     ${YELLOW}reboot${NC}"
echo ""
echo -e "  Après redémarrage, vérifie que le touchpad est reconnu :"
echo -e "     ${YELLOW}dmesg | grep -i elan${NC}"
echo -e "     ${YELLOW}libinput list-devices | grep -A 10 Touchpad${NC}"
echo ""
echo -e "  En cas de problème, supprime le correctif GRUB et relance update-grub :"
echo -e "     ${YELLOW}rm $GRUB_CONF && update-grub${NC}"
echo ""
