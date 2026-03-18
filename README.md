# Lenovo 14w Gen 2 — Correctif touchpad sous Linux pour ordi PNL

> **Traduit, corrigé et enrichi** à partir du [Gist original de cg666](https://gist.github.com/cg666/6069eb9619ce2e1dc1664193a5540147).

![Linux](https://img.shields.io/badge/Linux-Compatible-success)
![GRUB](https://img.shields.io/badge/Boot-GRUB2-blue)
![ACPI](https://img.shields.io/badge/ACPI-Patched-orange)
![Systemd](https://img.shields.io/badge/Systemd-Service-green)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

---

## Problème

Sur le **Lenovo 14w Gen 2**, le touchpad **ELAN0643** :

- ❌ Non détecté
- ❌ Inactif après boot
- ❌ Instable après veille

### Causes

- Bug dans le **DSDT (ACPI)**
- Contrôleur **I2C (AMDI0010:01)** bloqué en état **D3**

---

## Solution

### 1. Patch ACPI (DSDT)

- Correction `_DSM`
- Correction `_CRS`
- `_S0W` → force D0
- `_PS3` → désactivé

### 2. Service systemd

Au boot :

- Force le contrôleur en **D0**
- Désactive l'autosuspend
- Rebind du driver I2C
- Déclenche le driver `elan_i2c`

---

## Installation

```bash
sudo apt install git
git clone https://github.com/lenormandien/lenovo-14w-gen2-touchpad-fix.git
cd lenovo-14w-gen2-touchpad-fix
sudo bash install-dsdt-elan0643.sh
reboot
```

## Vérification

```bash
systemctl status elan0643-touchpad.service
dmesg | grep -i elan
libinput list-devices | grep -A 10 Touchpad
```

---

## Fichiers installés

- `/boot/initrd_acpi_patched`
- `/etc/default/grub.d/acpi-tables.cfg`
- `/usr/local/lib/elan0643-touchpad-init.sh`
- `/etc/systemd/system/elan0643-touchpad.service`

---

## Rollback

```bash
sudo systemctl disable elan0643-touchpad.service
sudo rm /etc/systemd/system/elan0643-touchpad.service
sudo rm /usr/local/lib/elan0643-touchpad-init.sh
sudo rm /etc/default/grub.d/acpi-tables.cfg
sudo update-grub
reboot
```

---

## Debug avancé

```bash
journalctl -u elan0643-touchpad.service
dmesg | grep -i i2c
```

---

## Limitations

### Secure Boot
❌ Non compatible → à désactiver dans le BIOS

---


## Compatibilité

| Distro | Statut |
|---|---|
| Linux Mint 22.3 | ✅ Testé |
| Debian 13 | 🔄 Non testé (devrait fonctionner) |
| Arch Linux | 🔄 Non testé (devrait fonctionner) |
| Autres distros avec GRUB2 | 🔄 Non testé |

## Contribuer

Les PR et issues sont les bienvenues, notamment pour tester sur d'autres distributions !

## Licence

MIT — voir [LICENSE](LICENSE)

## Crédits

- **cg666** — auteur du [tutoriel original](https://gist.github.com/cg666/6069eb9619ce2e1dc1664193a5540147)
- **lenormandien** — traduction, corrections et automatisation
