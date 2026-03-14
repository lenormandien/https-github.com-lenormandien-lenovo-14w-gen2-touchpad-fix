#!/bin/bash
# =============================================================================
# Diagnostic complet touchpad ELAN0643 — Lenovo 14w Gen 2
# À lancer APRÈS le fix DSDT (reboot inclus)
# Usage : sudo bash diag-elan0643.sh 2>&1 | tee /tmp/diag-elan0643.log
# =============================================================================

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

ok()     { echo -e "${GREEN}[OK]${NC}  $1"; }
fail()   { echo -e "${RED}[KO]${NC}  $1"; }
info()   { echo -e "${BLUE}[>>]${NC}  $1"; }
warn()   { echo -e "${YELLOW}[!!]${NC}  $1"; }
sep()    { echo -e "\n${BOLD}${CYAN}━━━ $1 ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"; }
raw()    { echo -e "${CYAN}$1${NC}"; }

if [ "$EUID" -ne 0 ]; then
    echo "Relance avec : sudo bash $0"
    exit 1
fi

echo ""
echo -e "${BOLD}${BLUE}════════════════════════════════════════════════════════════${NC}"
echo -e "${BOLD}${BLUE}   Diagnostic ELAN0643 — Lenovo 14w Gen 2${NC}"
echo -e "${BOLD}${BLUE}════════════════════════════════════════════════════════════${NC}"
echo -e "  Date    : $(date '+%Y-%m-%d %H:%M:%S')"
echo -e "  Kernel  : $(uname -r)"
echo -e "  Distro  : $(cat /etc/os-release | grep PRETTY_NAME | cut -d'"' -f2)"
echo -e "  Host    : $(hostname)"
echo ""

# =============================================================================
sep "1. DSDT chargé depuis initrd"
# =============================================================================

DSDT_INITRD=$(dmesg | grep -i "DSDT.*initrd\|initrd.*DSDT" | head -1)
if [ -n "$DSDT_INITRD" ]; then
    ok "DSDT chargé depuis initrd"
    raw "    $DSDT_INITRD"
else
    fail "DSDT NON chargé depuis initrd — le patch ACPI n'est pas actif"
    warn "Vérifie /boot/initrd_acpi_patched et /etc/default/grub.d/acpi-tables.cfg"
fi

# =============================================================================
sep "2. TPTY dans l'EC (doit être 0x01 ou 0x02)"
# =============================================================================

modprobe ec_sys write_support=1 2>/dev/null || true
if [ -f /sys/kernel/debug/ec/ec0/io ]; then
    EC_9F=$(dd if=/sys/kernel/debug/ec/ec0/io bs=1 skip=$((0x9F)) count=1 2>/dev/null | xxd -p)
    info "EC offset 0x9F (TPTY) = 0x${EC_9F}"
    case "$EC_9F" in
        01) ok "TPTY=0x01 → adresse I2C attendue : 0x15 (SBFB)" ;;
        02) ok "TPTY=0x02 → adresse I2C attendue : 0x2C (SBFC)" ;;
        *)  fail "TPTY=0x${EC_9F} — valeur inattendue" ;;
    esac
else
    warn "EC non accessible via ec_sys"
fi

# =============================================================================
sep "3. Contrôleur I2CD (AMDI0010:01)"
# =============================================================================

I2CD_ACPI="/sys/bus/acpi/devices/AMDI0010:01"
I2CD_PLAT="/sys/bus/platform/devices/AMDI0010:01"

if [ -d "$I2CD_ACPI" ]; then
    ok "AMDI0010:01 présent dans ACPI"
    ACPI_PATH=$(cat "$I2CD_ACPI/path" 2>/dev/null)
    ACPI_STATUS=$(cat "$I2CD_ACPI/status" 2>/dev/null)
    ACPI_POWER=$(cat "$I2CD_ACPI/power_state" 2>/dev/null)
    info "Path   : $ACPI_PATH"
    info "Status : $ACPI_STATUS (0x0F=actif)"
    info "Power  : $ACPI_POWER"
    [ "$ACPI_POWER" = "D0" ] && ok "Contrôleur en D0" || fail "Contrôleur en $ACPI_POWER — doit être D0"
else
    fail "AMDI0010:01 absent de l'ACPI"
fi

if [ -d "$I2CD_PLAT" ]; then
    ok "AMDI0010:01 présent comme platform device"
    RT_STATUS=$(cat "$I2CD_PLAT/power/runtime_status" 2>/dev/null)
    RT_CONTROL=$(cat "$I2CD_PLAT/power/control" 2>/dev/null)
    AUTOSUSPEND=$(cat "$I2CD_PLAT/power/autosuspend_delay_ms" 2>/dev/null)
    info "Runtime status  : $RT_STATUS"
    info "Power control   : $RT_CONTROL"
    info "Autosuspend ms  : $AUTOSUSPEND"
    DRV=$(readlink "$I2CD_PLAT/driver" 2>/dev/null | xargs basename 2>/dev/null || echo "aucun")
    info "Driver bindé    : $DRV"
    [ "$DRV" = "i2c_designware" ] && ok "Driver i2c_designware bindé" || fail "Driver non bindé"
    [ "$RT_STATUS" = "active" ] && ok "Runtime PM : active" || fail "Runtime PM : $RT_STATUS"
else
    fail "AMDI0010:01 absent des platform devices"
fi

# =============================================================================
sep "4. Bus i2c-1"
# =============================================================================

# Chercher le bus i2c associé à AMDI0010:01
I2C_BUS=""
for adapter in /sys/bus/platform/devices/AMDI0010:01/i2c-*/; do
    [ -d "$adapter" ] && I2C_BUS=$(basename "$adapter") && break
done

if [ -n "$I2C_BUS" ]; then
    ok "Bus i2c trouvé : $I2C_BUS"
    I2C_NAME=$(cat "/sys/class/i2c-adapter/$I2C_BUS/name" 2>/dev/null || echo "inconnu")
    info "Nom : $I2C_NAME"
    BUS_NUM="${I2C_BUS#i2c-}"
else
    fail "Aucun bus i2c sous AMDI0010:01"
    # Chercher autrement
    for adapter in /sys/class/i2c-adapter/i2c-*/; do
        name=$(cat "$adapter/name" 2>/dev/null || echo "")
        if echo "$name" | grep -qi "designware"; then
            I2C_BUS=$(basename "$adapter")
            BUS_NUM="${I2C_BUS#i2c-}"
            warn "Bus i2c_designware trouvé quand même : $I2C_BUS ($name)"
            break
        fi
    done
fi

if [ -n "$I2C_BUS" ]; then
    # Scanner le bus
    info "Scan i2c-detect sur $I2C_BUS..."
    if command -v i2cdetect &>/dev/null; then
        SCAN=$(i2cdetect -y -r "$BUS_NUM" 2>/dev/null)
        echo "$SCAN" | grep -v "^  " | grep -v "^$" | while read line; do
            raw "    $line"
        done
        if echo "$SCAN" | grep -q "15"; then
            ok "Device à 0x15 détecté sur $I2C_BUS — ELAN0643 répond"
        elif echo "$SCAN" | grep -q "2c"; then
            ok "Device à 0x2C détecté sur $I2C_BUS — ELAN0643 répond"
        else
            fail "Aucun device détecté sur $I2C_BUS — touchpad ne répond pas"
        fi
    else
        warn "i2cdetect non disponible (apt-get install i2c-tools)"
    fi
fi

# =============================================================================
sep "5. Device ACPI ELAN0643"
# =============================================================================

ELAN_ACPI="/sys/bus/acpi/devices/ELAN0643:00"
if [ -d "$ELAN_ACPI" ]; then
    ok "ELAN0643:00 présent dans ACPI"
    ELAN_STATUS=$(cat "$ELAN_ACPI/status" 2>/dev/null)
    info "Status ACPI : $ELAN_STATUS (0x0F=actif)"
    [ "$ELAN_STATUS" = "15" ] && ok "Status=0x0F (actif)" || fail "Status=$ELAN_STATUS"
    
    PHYS=$(readlink -f "$ELAN_ACPI/physical_node" 2>/dev/null || echo "")
    info "Physical node : $PHYS"
    if echo "$PHYS" | grep -q "i2c"; then
        ok "ELAN0643 enregistré comme device i2c"
        I2C_DEV=$(basename "$PHYS")
        DRV=$(readlink "$PHYS/driver" 2>/dev/null | xargs basename 2>/dev/null || echo "aucun")
        info "Device i2c : $I2C_DEV — driver : $DRV"
        [ "$DRV" = "elan_i2c" ] && ok "Driver elan_i2c actif !" || fail "Driver : $DRV"
    else
        fail "ELAN0643 NON enregistré comme device i2c (physical_node=$PHYS)"
        warn "Le kernel n'a pas lié le device ACPI au bus i2c"
    fi
    
    DRV=$(readlink "$ELAN_ACPI/driver" 2>/dev/null | xargs basename 2>/dev/null || echo "aucun")
    info "Driver ACPI : $DRV"
else
    fail "ELAN0643:00 absent de l'ACPI"
fi

# =============================================================================
sep "6. Modules kernel"
# =============================================================================

for mod in elan_i2c i2c_hid_acpi i2c_hid i2c_designware_platform i2c_designware_core; do
    if lsmod | grep -q "^$mod "; then
        ok "Module chargé   : $mod"
    else
        # Vérifier si builtin
        if grep -q "^CONFIG_${mod^^}=y" /boot/config-$(uname -r) 2>/dev/null || \
           modinfo "$mod" 2>/dev/null | grep -q "filename:.*builtin"; then
            info "Module builtin  : $mod"
        else
            MODFILE=$(modinfo "$mod" 2>/dev/null | grep filename | head -1)
            if [ -n "$MODFILE" ]; then
                warn "Module dispo mais non chargé : $mod"
            else
                fail "Module absent   : $mod"
            fi
        fi
    fi
done

# =============================================================================
sep "7. GPIO #9 (IRQ du touchpad)"
# =============================================================================

if [ -f /sys/kernel/debug/gpio ]; then
    GPIO9=$(grep "^ *#9" /sys/kernel/debug/gpio 2>/dev/null | head -1)
    if [ -n "$GPIO9" ]; then
        info "GPIO #9 : $GPIO9"
        if echo "$GPIO9" | grep -q "🔥\|irq\|INT"; then
            ok "GPIO #9 configuré avec IRQ"
        else
            warn "GPIO #9 présent mais IRQ non visible"
        fi
    else
        warn "GPIO #9 non trouvé dans debugfs"
    fi
    
    # Chercher l'IRQ Linux associé au GPIO 9 du contrôleur AMDI0030
    GPIO_CHIP=$(grep "gpiochip0\|AMDI0030" /sys/kernel/debug/gpio 2>/dev/null | head -1)
    info "GPIO chip : $GPIO_CHIP"
else
    warn "/sys/kernel/debug/gpio non accessible"
fi

# Trouver l'IRQ réel du GPIO 9
GPIO_BASE=$(cat /sys/class/gpio/gpiochip*/base 2>/dev/null | head -1)
if [ -n "$GPIO_BASE" ]; then
    GPIO9_NUM=$((GPIO_BASE + 9))
    info "GPIO 9 numéro Linux : $GPIO9_NUM"
    IRQ=$(cat /sys/class/gpio/gpio${GPIO9_NUM}/edge 2>/dev/null || echo "non exporté")
    info "GPIO edge : $IRQ"
fi

# =============================================================================
sep "8. dmesg — messages pertinents depuis le boot"
# =============================================================================

info "Messages elan/i2c/hid :"
dmesg | grep -i "elan\|i2c_hid\|i2c-1\|AMDI0010\|1-0015\|touchpad" \
      | grep -v "usb\|USB\|pci\|PCI" | while read line; do
    if echo "$line" | grep -qi "error\|fail\|cannot\|mismatch"; then
        fail "$line"
    else
        raw "    $line"
    fi
done

# =============================================================================
sep "9. Tentative d'activation manuelle"
# =============================================================================

info "Tentative de forçage D0 + reprobe..."

# Forcer D0
echo "on" > "$I2CD_PLAT/power/control" 2>/dev/null || true
sleep 1

POWER_NOW=$(cat "$I2CD_ACPI/power_state" 2>/dev/null)
info "Power state après forçage : $POWER_NOW"

if [ "$POWER_NOW" = "D0" ] && [ -n "$I2C_BUS" ]; then
    # Vérifier si elan_i2c est déjà là
    ELAN_ALREADY=""
    for addr in 0015 002c; do
        DEV="/sys/bus/i2c/devices/${BUS_NUM}-${addr}"
        if [ -d "$DEV" ]; then
            DRV=$(readlink "$DEV/driver" 2>/dev/null | xargs basename 2>/dev/null || echo "aucun")
            ELAN_ALREADY="$DEV ($DRV)"
        fi
    done
    
    if [ -n "$ELAN_ALREADY" ]; then
        ok "Device i2c ELAN déjà présent : $ELAN_ALREADY"
    else
        warn "Device i2c ELAN absent — tentative reprobe ACPI..."
        # Essayer de déclencher le probe via acpi
        echo add > /sys/bus/acpi/devices/ELAN0643:00/uevent 2>/dev/null || true
        sleep 2
        
        for addr in 0015 002c; do
            DEV="/sys/bus/i2c/devices/${BUS_NUM}-${addr}"
            if [ -d "$DEV" ]; then
                DRV=$(readlink "$DEV/driver" 2>/dev/null | xargs basename 2>/dev/null || echo "aucun")
                info "Device trouvé : $DEV — driver : $DRV"
            fi
        done
    fi
fi

# =============================================================================
sep "10. Résumé et recommandations"
# =============================================================================

DSDT_OK=$(dmesg | grep -c "DSDT.*initrd" 2>/dev/null || echo 0)
I2CD_D0=$(cat "$I2CD_ACPI/power_state" 2>/dev/null)
ELAN_PHYS=$(readlink -f "$ELAN_ACPI/physical_node" 2>/dev/null || echo "")
TOUCH_ACTIVE=$(libinput list-devices 2>/dev/null | grep -i "touchpad\|ELAN" | wc -l)

echo ""
echo -e "${BOLD}Résumé :${NC}"
[ "$DSDT_OK" -gt 0 ]        && ok "DSDT patché actif"          || fail "DSDT patché NON actif"
[ "$I2CD_D0" = "D0" ]       && ok "I2CD en D0"                 || fail "I2CD en $I2CD_D0"
echo "$ELAN_PHYS" | grep -q "i2c" \
                            && ok "ELAN0643 lié au bus i2c"     || fail "ELAN0643 NON lié au bus i2c"
[ "$TOUCH_ACTIVE" -gt 0 ]   && ok "Touchpad actif dans libinput" || fail "Touchpad NON actif dans libinput"

echo ""
echo -e "${BOLD}Recommandations :${NC}"

if [ "$DSDT_OK" -eq 0 ]; then
    warn "→ Relancer install-dsdt-elan0643.sh et vérifier le GRUB"
elif [ "$I2CD_D0" != "D0" ]; then
    warn "→ Le contrôleur I2CD démarre en D3hot malgré le patch _S0W"
    warn "→ Piste : paramètre kernel acpi_force_32bit_madt_oem_check ou acpi_backlight"
    warn "→ Piste : vérifier si _INI est appelé sur I2CD"
elif ! echo "$ELAN_PHYS" | grep -q "i2c"; then
    warn "→ I2CD est en D0 mais ELAN0643 n'est pas énuméré sur le bus i2c"
    warn "→ Piste : le rebind de i2c_designware ne re-énumère pas les enfants ACPI"
    warn "→ Piste : regarder le comportement sur kernel 6.1 (Debian 13)"
else
    warn "→ Problème IRQ : elan_i2c trouve le device mais irq=0"
    warn "→ Piste : GPIO #9 non résolu en IRQ Linux valide"
fi

echo ""
echo -e "Log complet : /tmp/diag-elan0643.log"
echo ""
