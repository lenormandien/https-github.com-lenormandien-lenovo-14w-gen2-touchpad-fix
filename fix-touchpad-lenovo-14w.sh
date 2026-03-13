#!/bin/bash
# =============================================================================
# Installation du DSDT corrigé + service systemd pour ELAN0643
# Lenovo 14w Gen 2
#
# Correctifs DSDT :
#   1. ELAN0643 _DSM : If (TPTY==0x02) → Else
#   2. ELAN0643 _CRS : If (TPTY==0x02) → Else
#   3. I2CD _S0W     : Return(0x04) → Return(0x00)
#   4. I2CD _PS3     : neutralisé
#
# + Service systemd qui force le contrôleur I2CD en D0 au boot
#   et déclenche le probe du touchpad.
#
# Usage : sudo bash install-dsdt-elan0643.sh
# =============================================================================
set -euo pipefail

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
detail()  { echo -e "    $1"; }

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
step "Étape 0 — Vérifications préliminaires"
# =============================================================================

if [ "$EUID" -ne 0 ]; then
    error "Ce script doit être exécuté en root.\n    Relance avec : sudo bash $0"
fi
success "Privilèges root confirmés."

info "Recherche des outils : iasl, cpio, update-grub..."
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
    apt-get update -qq
    apt-get install -y acpica-tools cpio || error "Échec installation outils."
fi
success "Outils disponibles."

info "Recherche de dsdt.dsl..."
[ -f "dsdt.dsl" ] || error "dsdt.dsl introuvable dans $(pwd)."
detail "$(wc -l < dsdt.dsl) lignes, $(du -h dsdt.dsl | cut -f1)"
success "dsdt.dsl présent."

info "Vérification des correctifs..."
PATCH_OK=0
grep -q "//If.*TPTY.*0x02\|// If.*TPTY.*0x02" dsdt.dsl \
    && detail "✔ ELAN0643 _DSM/_CRS" && PATCH_OK=$((PATCH_OK+1)) \
    || warning "✘ ELAN0643 _DSM/_CRS non trouvé"
grep -q "Fix ELAN0643: forcer D0" dsdt.dsl \
    && detail "✔ I2CD _S0W" && PATCH_OK=$((PATCH_OK+1)) \
    || warning "✘ I2CD _S0W non trouvé"
grep -q "Fix ELAN0643: neutralisé" dsdt.dsl \
    && detail "✔ I2CD _PS3" && PATCH_OK=$((PATCH_OK+1)) \
    || warning "✘ I2CD _PS3 non trouvé"

if [ "$PATCH_OK" -lt 2 ]; then
    read -rp "    Seulement $PATCH_OK/3 patches. Continuer ? (o/N) : " C
    [[ "$C" =~ ^[oO]$ ]] || exit 0
else
    success "$PATCH_OK/3 correctifs confirmés."
fi

# =============================================================================
step "Étape 1 — Recompilation du DSDT"
# =============================================================================

info "iasl -sa dsdt.dsl..."
echo -e "${CYAN}-------- sortie iasl --------${NC}"
iasl -sa dsdt.dsl || error "Erreur de compilation iasl."
echo -e "${CYAN}-----------------------------${NC}"
[ -f "dsdt.aml" ] || error "dsdt.aml non généré."
detail "dsdt.aml : $(du -h dsdt.aml | cut -f1)"
success "DSDT recompilé."

# =============================================================================
step "Étape 2 — Construction de l'archive initrd ACPI"
# =============================================================================

WORKDIR=$(mktemp -d /tmp/acpi-fix-XXXXXX)
info "Workdir : $WORKDIR"
mkdir -p "$WORKDIR/kernel/firmware/acpi"
cp dsdt.aml "$WORKDIR/kernel/firmware/acpi/"
CPIO_FILES=$(cd "$WORKDIR" && find kernel | wc -l)
detail "Fichiers : $CPIO_FILES"
(cd "$WORKDIR" && find kernel | cpio -H newc --create) > /boot/initrd_acpi_patched
detail "/boot/initrd_acpi_patched : $(du -h /boot/initrd_acpi_patched | cut -f1)"
success "Archive initrd créée."

# =============================================================================
step "Étape 3 — Configuration de GRUB"
# =============================================================================

GRUB_CONF="/etc/default/grub.d/acpi-tables.cfg"
mkdir -p /etc/default/grub.d
echo 'GRUB_EARLY_INITRD_LINUX_CUSTOM="initrd_acpi_patched"' > "$GRUB_CONF"
detail "Contenu : $(cat "$GRUB_CONF")"
echo -e "${CYAN}-------- update-grub --------${NC}"
update-grub || error "update-grub a échoué."
echo -e "${CYAN}-----------------------------${NC}"
success "GRUB mis à jour."

# =============================================================================
step "Étape 4 — Installation du service systemd"
# =============================================================================

INIT_SCRIPT="/usr/local/lib/elan0643-touchpad-init.sh"
SERVICE_FILE="/etc/systemd/system/elan0643-touchpad.service"

info "Installation du script d'initialisation : $INIT_SCRIPT"
cat > "$INIT_SCRIPT" << 'INITEOF'
#!/bin/bash
LOG_TAG="elan0643-touchpad"
log()  { echo "[$LOG_TAG] $1" | tee /dev/kmsg 2>/dev/null || true; logger -t "$LOG_TAG" "$1" 2>/dev/null || true; }

I2CD_PLATFORM="/sys/bus/platform/devices/AMDI0010:01"
I2CD_DRIVER="/sys/bus/platform/drivers/i2c_designware"

log "Démarrage activation touchpad ELAN0643..."

# Attendre AMDI0010:01
for i in $(seq 1 30); do
    [ -d "$I2CD_PLATFORM" ] && break
    sleep 0.5
done
[ -d "$I2CD_PLATFORM" ] || { log "AMDI0010:01 introuvable"; exit 1; }
log "AMDI0010:01 présent — power_state: $(cat /sys/bus/acpi/devices/AMDI0010:01/power_state 2>/dev/null)"

# Attendre que le driver soit bindé
for i in $(seq 1 20); do
    [ -e "$I2CD_PLATFORM/driver" ] && break
    sleep 0.5
done

# Bloquer le runtime PM autosuspend
log "Blocage runtime PM..."
echo "on" > "$I2CD_PLATFORM/power/control" 2>/dev/null || true

# Attendre D0
for i in $(seq 1 20); do
    STATUS=$(cat "$I2CD_PLATFORM/power/runtime_status" 2>/dev/null || echo "")
    [ "$STATUS" = "active" ] && break
    sleep 0.3
done
log "Runtime status: $(cat $I2CD_PLATFORM/power/runtime_status 2>/dev/null)"
log "Power state ACPI: $(cat /sys/bus/acpi/devices/AMDI0010:01/power_state 2>/dev/null)"

# Unbind/rebind pour recréer le bus i2c avec le contrôleur en D0
log "Unbind/rebind i2c_designware sur AMDI0010:01..."
echo "AMDI0010:01" > "$I2CD_DRIVER/unbind" 2>/dev/null || true
sleep 1
echo "on" > "$I2CD_PLATFORM/power/control" 2>/dev/null || true
echo "AMDI0010:01" > "$I2CD_DRIVER/bind" 2>/dev/null || true
sleep 3

# Trouver le bus i2c créé pour AMDI0010:01
I2C_BUS=""
for adapter in /sys/bus/platform/devices/AMDI0010:01/i2c-*/; do
    [ -d "$adapter" ] && I2C_BUS=$(basename "$adapter") && break
done
log "Bus i2c détecté : ${I2C_BUS:-aucun}"

# Vérifier elan_i2c
if [ -n "$I2C_BUS" ]; then
    BUS_NUM="${I2C_BUS#i2c-}"
    for addr in 0015 002c; do
        DEV="/sys/bus/i2c/devices/${BUS_NUM}-${addr}"
        if [ -d "$DEV" ]; then
            DRV=$(readlink "$DEV/driver" 2>/dev/null | xargs basename 2>/dev/null || echo "aucun")
            log "Device $DEV — driver: $DRV"
        fi
    done
fi

log "Fin du script. Vérifie avec : dmesg | grep -i elan"
exit 0
INITEOF

chmod +x "$INIT_SCRIPT"
success "Script installé : $INIT_SCRIPT"

info "Installation du service systemd : $SERVICE_FILE"
cat > "$SERVICE_FILE" << 'SVCEOF'
[Unit]
Description=Activation touchpad ELAN0643 — Lenovo 14w Gen 2
Documentation=https://github.com/lenormandien/lenovo-14w-gen2-touchpad-fix
After=sysinit.target systemd-udevd.service
Wants=sysinit.target

[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/usr/local/lib/elan0643-touchpad-init.sh
StandardOutput=journal
StandardError=journal
TimeoutStartSec=60

[Install]
WantedBy=multi-user.target
SVCEOF

systemctl daemon-reload
systemctl enable elan0643-touchpad.service
detail "Service activé : elan0643-touchpad.service"
success "Service systemd installé et activé."

# =============================================================================
step "Étape 5 — Nettoyage"
# =============================================================================

rm -rf "$WORKDIR"
success "Nettoyage terminé."

# =============================================================================
echo ""
echo -e "${BOLD}${GREEN}============================================================${NC}"
echo -e "${BOLD}${GREEN}   Installation terminée !${NC}"
echo -e "${BOLD}${GREEN}============================================================${NC}"
echo ""
echo -e "  Correctifs DSDT :"
echo -e "    ${CYAN}[1/4]${NC} ELAN0643 _DSM  : If (TPTY==0x02) → Else"
echo -e "    ${CYAN}[2/4]${NC} ELAN0643 _CRS  : If (TPTY==0x02) → Else"
echo -e "    ${CYAN}[3/4]${NC} I2CD _S0W      : Return(0x04)    → Return(0x00)"
echo -e "    ${CYAN}[4/4]${NC} I2CD _PS3      : DSAD(0x08,0x03) → neutralisé"
echo ""
echo -e "  Service systemd :"
echo -e "    ${CYAN}elan0643-touchpad.service${NC} — force I2CD en D0 au boot"
echo ""
echo -e "  Fichiers installés :"
echo -e "    ${CYAN}/boot/initrd_acpi_patched${NC}"
echo -e "    ${CYAN}$GRUB_CONF${NC}"
echo -e "    ${CYAN}$INIT_SCRIPT${NC}"
echo -e "    ${CYAN}$SERVICE_FILE${NC}"
echo ""
echo -e "  👉 Redémarre :"
echo -e "     ${YELLOW}reboot${NC}"
echo ""
echo -e "  Après reboot, vérifie :"
echo -e "     ${YELLOW}systemctl status elan0643-touchpad.service${NC}"
echo -e "     ${YELLOW}dmesg | grep -i elan${NC}"
echo -e "     ${YELLOW}libinput list-devices | grep -A 10 Touchpad${NC}"
echo ""
echo -e "  Rollback :"
echo -e "     ${YELLOW}systemctl disable elan0643-touchpad.service${NC}"
echo -e "     ${YELLOW}rm $GRUB_CONF && update-grub${NC}"
echo ""
