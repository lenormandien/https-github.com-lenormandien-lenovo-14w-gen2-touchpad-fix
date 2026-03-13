#!/bin/bash
# =============================================================================
# Correctif touchpad ELAN0643 — Lenovo 14w Gen 2 (version adaptée pour 82N9)
# Source : https://github.com/lenormandien/lenovo-14w-gen2-touchpad-fix
# Adapté pour les modèles Lenovo 14w Gen 2 (y compris 82N9) et Linux Mint 22.3.
# =============================================================================

set -euo pipefail  # Arrête le script si une commande échoue ou si une variable est non définie

# --- Couleurs pour les messages ---
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

info()    { echo -e "${BLUE}[INFO]${NC} $1"; }
success() { echo -e "${GREEN}[OK]${NC} $1"; }
warning() { echo -e "${YELLOW}[ATTENTION]${NC} $1"; }
error()   { echo -e "${RED}[ERREUR]${NC} $1"; exit 1; }

# =============================================================================
# 0. Vérifications préliminaires
# =============================================================================

echo ""
echo -e "${BLUE}============================================================${NC}"
echo -e "${BLUE}   Correctif touchpad ELAN0643 — Lenovo 14w Gen 2 (82N9)${NC}"
echo -e "${BLUE}============================================================${NC}"
echo ""

# Vérifier qu'on est root
if [ "$EUID" -ne 0 ]; then
    error "Ce script doit être exécuté en tant que root.\nRelance avec : sudo bash $0"
fi

# --- Vérification non bloquante de l'OS (Linux Mint 22.3) ---
OS_INFO=$(lsb_release -d 2>/dev/null | grep -i "Description" | cut -d':' -f2 | sed 's/^[ \t]*//' || echo "inconnu")
if [[ "$OS_INFO" != *"Linux Mint 22"* && "$OS_INFO" != *"Linux Mint 21"* ]]; then
    warning "Ce script a été testé principalement sur Linux Mint 22.3.\nOS détecté : $OS_INFO"
    read -rp "Continuer quand même ? (O/n) : " CONFIRM
    [[ "$CONFIRM" =~ ^[nN]$ ]] && exit 0
else
    success "OS compatible détecté : $OS_INFO"
fi

# Vérifier les outils nécessaires
info "Vérification des outils nécessaires..."
MISSING=()
for tool in acpidump iasl cpio update-grub; do
    if ! command -v "$tool" &> /dev/null; then
        MISSING+=("$tool")
    fi
done

if [ ${#MISSING[@]} -gt 0 ]; then
    warning "Outils manquants : ${MISSING[*]}"
    info "Installation en cours..."
    apt-get update && apt-get install -y acpica-tools acpidump cpio || error "Impossible d'installer les outils."
fi
success "Tous les outils sont disponibles."

# Vérifier qu'on est bien sur un Lenovo 14w Gen 2 (y compris 82N9)
PRODUCT=$(cat /sys/class/dmi/id/product_name 2>/dev/null || echo "inconnu")
LENOVO_14W_MODELS=("14w" "82N9" "82N9CTO" "14w Gen 2" "20XW" "20XWCTO")

IS_LENOVO_14W=false
for model in "${LENOVO_14W_MODELS[@]}"; do
    if [[ "$PRODUCT" == *"$model"* ]]; then
        IS_LENOVO_14W=true
        break
    fi
done

if [ "$IS_LENOVO_14W" = false ]; then
    warning "Ce laptop ne semble pas être un Lenovo 14w Gen 2 (détecté : $PRODUCT)."
    read -rp "Ce correctif est conçu pour les modèles Lenovo 14w Gen 2 (ex: 82N9).\nForcer l'exécution ? (o/N) : " CONFIRM
    [[ "$CONFIRM" =~ ^[oO]$ ]] || exit 0
else
    success "Modèle compatible détecté : $PRODUCT (Lenovo 14w Gen 2)."
fi

# Répertoire de travail temporaire
WORKDIR=$(mktemp -d /tmp/acpi-fix-XXXXXX)
info "Répertoire de travail : $WORKDIR"
cd "$WORKDIR" || error "Impossible de se déplacer dans $WORKDIR"

# =============================================================================
# 1. Extraction et décompilation des tables ACPI
# =============================================================================

echo ""
info "Étape 1 — Extraction des tables ACPI..."
mkdir -p acpi/dat acpi/dsl
cd acpi/dat || error "Impossible de se déplacer dans acpi/dat"
acpidump -b || error "Échec de l'extraction des tables ACPI."
iasl -d *.dat 2>/dev/null || error "Échec de la décompilation des tables ACPI."
mv *.dsl ../dsl 2>/dev/null
cd "$WORKDIR" || error "Impossible de revenir dans $WORKDIR"
success "Tables ACPI extraites et décompilées."

DSDT="$WORKDIR/acpi/dsl/dsdt.dsl"
[ -f "$DSDT" ] || error "Fichier dsdt.dsl introuvable après décompilation."

# =============================================================================
# 2. Vérification que le touchpad ELAN0643 est bien présent dans le DSDT
# =============================================================================

echo ""
info "Étape 2 — Recherche du touchpad ELAN0643 dans le DSDT..."
if ! grep -q "ELAN0643" "$DSDT"; then
    error "ELAN0643 non trouvé dans le DSDT. Ce correctif ne s'applique pas à ce système."
fi
success "Touchpad ELAN0643 trouvé dans le DSDT."

# =============================================================================
# 3. Patch du fichier DSDT
# =============================================================================

echo ""
info "Étape 3 — Application du correctif sur le DSDT..."

# Sauvegarde
cp "$DSDT" "${DSDT}.bak" || error "Impossible de sauvegarder $DSDT"
info "Sauvegarde créée : ${DSDT}.bak"

# --- Correction 1 : méthode _DSM ---
# Remplace le second "If TPTY == 0x02" par "Else" dans le bloc Case(0x01)
python3 - "$DSDT" <<'PYEOF'
import sys, re

with open(sys.argv[1], 'r') as f:
    content = f.read()

# Correction 1 : _DSM — second If -> Else dans Case(0x01)
old1 = (
    'Return (0x01)\n'
    '                            }\n'
    '\n'
    '                            If ((^^^PCI0.LPC0.H_EC.ECRD (RefOf (^^^PCI0.LPC0.H_EC.TPTY)) == 0x02))\n'
    '                            {\n'
    '                                Return (0x20)\n'
    '                            }'
)
new1 = (
    'Return (0x01)\n'
    '                            }\n'
    '                            Else\n'
    '                            // If ((^^^PCI0.LPC0.H_EC.ECRD (RefOf (^^^PCI0.LPC0.H_EC.TPTY)) == 0x02))\n'
    '                            {\n'
    '                                Return (0x20)\n'
    '                            }'
)

if old1 in content:
    content = content.replace(old1, new1, 1)
    print("  [OK] Correction 1 (_DSM) appliquée.")
else:
    print("  [ATTENTION] Correction 1 (_DSM) : motif non trouvé, peut-être déjà patché ?")

# Correction 2 : _CRS — Ajoute un Else si le second If pour TPTY==0x02 est absent
# Cherche le premier If pour TPTY==0x01 et ajoute un Else après
crs_pattern = re.compile(
    r'If \(\(.*TPTY.*== 0x01\)\)\n'  # Ligne du If
    r'\s*\{\n'                      # Ouverture du bloc
    r'.*?'                          # Contenu du bloc (non-greedy)
    r'Return \(ConcatenateResTemplate \(SBFB, SBFG\)\)\n'  # Ligne de retour
    r'\s*\}\s*'                     # Fermeture du bloc
)

# Remplace par le même bloc + un Else ajouté
crs_replacement = (
    'If ((^^^PCI0.LPC0.H_EC.ECRD (RefOf (^^^PCI0.LPC0.H_EC.TPTY)) == 0x01))\n'
    '                {\n'
    '                    Name (SBFB, ResourceTemplate ()\n'
    '                    {\n'
    '                        I2cSerialBusV2 (0x0015, ControllerInitiated, 0x00061A80,\n'
    '                            AddressingMode7Bit, "\\_SB.I2CD",\n'
    '                            0x00, ResourceConsumer, , Exclusive,\n'
    '                            )\n'
    '                    })\n'
    '                    Return (ConcatenateResTemplate (SBFB, SBFG))\n'
    '                }\n'
    '                Else\n'
    '                {\n'
    '                    Name (SBFC, ResourceTemplate ()\n'
    '                    {\n'
    '                        I2cSerialBusV2 (0x002C, ControllerInitiated, 0x00061A80,\n'
    '                            AddressingMode7Bit, "\\_SB.I2CD",\n'
    '                            0x00, ResourceConsumer, , Exclusive,\n'
    '                            )\n'
    '                    })\n'
    '                    Return (ConcatenateResTemplate (SBFC, SBFG))\n'
    '                }'
)

if crs_pattern.search(content):
    content = crs_pattern.sub(crs_replacement, content, 1)
    print("  [OK] Correction 2 (_CRS) appliquée : Else ajouté pour TPTY==0x02.")
else:
    print("  [ATTENTION] Correction 2 (_CRS) : motif non trouvé. Vérifie manuellement le DSDT.")

with open(sys.argv[1], 'w') as f:
    f.write(content)
PYEOF

success "Correctif appliqué sur le DSDT."

# =============================================================================
# 4. Recompilation et création de l'initrd
# =============================================================================

echo ""
info "Étape 4 — Recompilation du DSDT..."
cp "$DSDT" "$WORKDIR/dsdt.dsl" || error "Impossible de copier $DSDT"
cd "$WORKDIR" || error "Impossible de revenir dans $WORKDIR"
iasl -sa dsdt.dsl 2>/dev/null || error "Erreur lors de la recompilation du DSDT. Vérifiez le fichier dsdt.dsl."
success "DSDT recompilé avec succès."

info "Création de l'archive initrd..."
mkdir -p kernel/firmware/acpi
cp dsdt.aml kernel/firmware/acpi/ || error "Impossible de copier dsdt.aml"
find kernel | cpio -H newc --create > /boot/initrd_acpi_patched || error "Impossible de créer l'initrd."
success "Archive /boot/initrd_acpi_patched créée."

# =============================================================================
# 5. Configuration de GRUB
# =============================================================================

echo ""
info "Étape 5 — Configuration de GRUB..."
mkdir -p /etc/default/grub.d
echo 'GRUB_EARLY_INITRD_LINUX_CUSTOM="initrd_acpi_patched"' > /etc/default/grub.d/acpi-tables.cfg || error "Impossible d'écrire le fichier de configuration GRUB."
update-grub || error "Impossible de mettre à jour GRUB."
success "GRUB mis à jour."

# =============================================================================
# 6. Nettoyage
# =============================================================================

cd / || error "Impossible de revenir à la racine."
rm -rf "$WORKDIR"
success "Fichiers temporaires supprimés."

# =============================================================================
# Fin
# =============================================================================

echo ""
echo -e "${GREEN}============================================================${NC}"
echo -e "${GREEN}   Correctif appliqué avec succès !${NC}"
echo -e "${GREEN}============================================================${NC}"
echo ""
echo -e "  👉 Redémarre ton laptop pour activer le correctif :"
echo -e "     ${YELLOW}reboot${NC}"
echo ""
echo -e "  Après redémarrage, vérifie que le touchpad est reconnu :"
echo -e "     ${YELLOW}dmesg | grep -i elan${NC}"
echo -e "     ${YELLOW}libinput list-devices${NC}"
echo ""
