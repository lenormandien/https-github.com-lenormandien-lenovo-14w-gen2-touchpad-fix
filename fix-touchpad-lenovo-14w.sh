#!/bin/bash
# =============================================================================
# Script d'activation du touchpad ELAN0643 — Lenovo 14w Gen 2
# Appelé par le service systemd elan0643-touchpad.service
#
# Stratégie :
#   1. Attendre que le contrôleur I2CD (AMDI0010:01) soit disponible
#   2. Forcer power/control=on pour bloquer le runtime PM
#   3. Forcer le reprobe via unbind/bind du driver i2c_designware
#   4. Attendre la création du bus i2c-1
#   5. Vérifier que elan_i2c s'est bien bindé via ACPI
# =============================================================================

LOG_TAG="elan0643-touchpad"
log()  { echo "[$LOG_TAG] $1" | tee /dev/kmsg 2>/dev/null || true; logger -t "$LOG_TAG" "$1"; }
fail() { log "ERREUR: $1"; exit 1; }

I2CD_PLATFORM="/sys/bus/platform/devices/AMDI0010:01"
I2CD_DRIVER="/sys/bus/platform/drivers/i2c_designware"
ELAN_ACPI="/sys/bus/acpi/devices/ELAN0643:00"

# --- Étape 1 : attendre AMDI0010:01 ---
log "Attente du device AMDI0010:01..."
for i in $(seq 1 30); do
    [ -d "$I2CD_PLATFORM" ] && break
    sleep 0.5
done
[ -d "$I2CD_PLATFORM" ] || fail "AMDI0010:01 introuvable après 15s"
log "AMDI0010:01 présent."

# --- Étape 2 : attendre que le driver soit bindé ---
log "Attente du driver i2c_designware sur AMDI0010:01..."
for i in $(seq 1 20); do
    [ -e "$I2CD_PLATFORM/driver" ] && break
    sleep 0.5
done
if [ ! -e "$I2CD_PLATFORM/driver" ]; then
    log "Driver non bindé, tentative de bind manuel..."
    echo "AMDI0010:01" > "$I2CD_DRIVER/bind" 2>/dev/null || true
    sleep 1
fi
log "Driver i2c_designware bindé."

# --- Étape 3 : bloquer le runtime PM ---
log "Forçage power/control=on pour AMDI0010:01..."
echo "on" > "$I2CD_PLATFORM/power/control" 2>/dev/null || true
POWER_STATE=$(cat "$I2CD_PLATFORM/power/runtime_status" 2>/dev/null || echo "inconnu")
log "Runtime PM status: $POWER_STATE"

# Attendre que le device passe en active
for i in $(seq 1 20); do
    STATUS=$(cat "$I2CD_PLATFORM/power/runtime_status" 2>/dev/null || echo "")
    [ "$STATUS" = "active" ] && break
    sleep 0.5
done
log "Power state ACPI: $(cat /sys/bus/acpi/devices/AMDI0010:01/power_state 2>/dev/null)"

# --- Étape 4 : unbind/rebind pour recréer le bus i2c ---
log "Reprobe du contrôleur I2CD (unbind/bind)..."
echo "AMDI0010:01" > "$I2CD_DRIVER/unbind" 2>/dev/null || true
sleep 1
echo "AMDI0010:01" > "$I2CD_DRIVER/bind" 2>/dev/null || true
sleep 2

# --- Étape 5 : attendre le bus i2c-1 ---
log "Attente du bus i2c-1..."
for i in $(seq 1 20); do
    [ -e "/sys/class/i2c-adapter/i2c-1" ] && break
    # Chercher le bon bus (pas forcément i2c-1)
    for adapter in /sys/bus/i2c/devices/i2c-*/; do
        name=$(cat "$adapter/name" 2>/dev/null || echo "")
        if echo "$name" | grep -qi "designware\|AMDI0010:01"; then
            I2C_BUS=$(basename "$adapter")
            log "Bus trouvé : $I2C_BUS ($name)"
            break 2
        fi
    done
    sleep 0.5
done

# Identifier le bon bus i2c pour I2CD (UID=3 → chercher dans platform)
I2C_BUS=""
for adapter in /sys/bus/platform/devices/AMDI0010:01/i2c-*/; do
    [ -d "$adapter" ] && I2C_BUS=$(basename "$adapter") && break
done
if [ -z "$I2C_BUS" ]; then
    log "Bus i2c non trouvé sous AMDI0010:01, scan des adaptateurs..."
    for adapter in /sys/class/i2c-adapter/i2c-*/; do
        [ -L "$adapter/device" ] || continue
        dev_path=$(readlink -f "$adapter/device" 2>/dev/null || echo "")
        if echo "$dev_path" | grep -q "AMDI0010:01"; then
            I2C_BUS=$(basename "$adapter")
            break
        fi
    done
fi

if [ -z "$I2C_BUS" ]; then
    log "Bus i2c pour I2CD introuvable."
    # Vérifier si elan_i2c s'est bindé via ACPI directement
    if [ -e "$ELAN_ACPI/physical_node" ]; then
        PHYS=$(readlink -f "$ELAN_ACPI/physical_node" 2>/dev/null || echo "")
        log "ELAN0643 physical_node: $PHYS"
        if echo "$PHYS" | grep -q "i2c"; then
            log "ELAN0643 déjà enregistré comme device i2c — OK"
            exit 0
        fi
    fi
    log "Impossible de trouver le bus i2c. Le touchpad ne sera pas actif."
    exit 1
fi

log "Bus I2CD identifié : $I2C_BUS"
I2C_BUS_NUM="${I2C_BUS#i2c-}"

# --- Étape 6 : vérifier si elan_i2c est déjà actif ---
if ls /sys/bus/i2c/devices/${I2C_BUS_NUM}-* 2>/dev/null | grep -q .; then
    log "Device i2c trouvé sur $I2C_BUS — elan_i2c probablement actif."
    ELAN_DEV=$(ls /sys/bus/i2c/devices/${I2C_BUS_NUM}-* 2>/dev/null | head -1)
    ELAN_DRV=$(readlink "$ELAN_DEV/driver" 2>/dev/null | xargs basename 2>/dev/null || echo "aucun")
    log "Driver: $ELAN_DRV"
    [ "$ELAN_DRV" = "elan_i2c" ] && log "Touchpad actif !" && exit 0
fi

# --- Étape 7 : le device ACPI doit s'être enregistré sur le bus i2c ---
# Forcer le reprobe du device ACPI ELAN0643
log "Forçage reprobe ELAN0643 via udevadm..."
udevadm trigger --action=add "$ELAN_ACPI" 2>/dev/null || true
sleep 2

# Vérifier le résultat
ELAN_ACTIVE=0
for i2c_dev in /sys/bus/i2c/devices/${I2C_BUS_NUM}-0015 /sys/bus/i2c/devices/${I2C_BUS_NUM}-002c; do
    if [ -d "$i2c_dev" ]; then
        DRV=$(readlink "$i2c_dev/driver" 2>/dev/null | xargs basename 2>/dev/null || echo "aucun")
        log "Device $i2c_dev — driver: $DRV"
        [ "$DRV" = "elan_i2c" ] && ELAN_ACTIVE=1
    fi
done

if [ "$ELAN_ACTIVE" = "1" ]; then
    log "Touchpad ELAN0643 activé avec succès."
else
    log "Touchpad non actif. Vérifier avec : dmesg | grep -i elan"
    log "State ACPI I2CD: $(cat /sys/bus/acpi/devices/AMDI0010:01/power_state 2>/dev/null)"
fi

exit 0
