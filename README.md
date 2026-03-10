# Lenovo 14w Gen 2 — Correctif touchpad sous Linux pour ordi PNL

> **Traduit, corrigé et enrichi** à partir du [Gist original de cg666](https://gist.github.com/cg666/6069eb9619ce2e1dc1664193a5540147).

## Le problème

Sur le laptop **Lenovo 14w Gen 2**, le touchpad (`ELAN0643`) ne fonctionne pas sous Linux. La cause est une erreur de logique dans la table **ACPI DSDT** fournie par le BIOS : Linux ne parvient pas à détecter le bon type de touchpad et abandonne l'initialisation.

## La solution

On corrige la table ACPI, puis on demande à Linux de l'utiliser à la place de celle du BIOS, via un `initrd` précoce chargé par GRUB.

## Installation rapide

```bash
git clone https://github.com/lenormandien/lenovo-14w-gen2-touchpad-fix.git
cd lenovo-14w-gen2-touchpad-fix
sudo bash fix-touchpad-lenovo-14w.sh
reboot
```

Le script doit être exécuté en **root** (ou avec `sudo`).


## Vérification après redémarrage

```bash
dmesg | grep -i elan
libinput list-devices
```

Si `ELAN0643` apparaît dans les résultats, le touchpad est actif. 🎉

## Ce que fait le script

1. Vérifie les outils nécessaires et les installe si besoin (`acpica-tools`, `acpidump`, `cpio`)
2. Vérifie que le laptop est bien un Lenovo 14w Gen 2
3. Extrait et décompile les tables ACPI du BIOS
4. Patche le fichier `dsdt.dsl` (corrections `_DSM` et `_CRS`)
5. Recompile le DSDT et crée l'archive `/boot/initrd_acpi_patched`
6. Configure GRUB pour charger le correctif au démarrage
7. Nettoie les fichiers temporaires

## Détails techniques

Voir [docs/explications-techniques.md](docs/explications-techniques.md) pour une explication complète du correctif.

## Problèmes connus

### Secure Boot
Le correctif ACPI ne fonctionne pas si le **Secure Boot** est activé. Pense à le désactiver dans le BIOS avant d'appliquer le correctif.

### Touchpad inactif après une mise en veille
Après un réveil de veille, le touchpad peut cesser de fonctionner. Pour le réactiver manuellement :

```bash
rmmod i2c_hid_acpi && modprobe i2c_hid_acpi
```

Pour automatiser ça à chaque réveil, crée le fichier `/etc/systemd/system/fix-touchpad-resume.service` :

```ini
[Unit]
Description=Réactive le touchpad ELAN0643 après la veille
After=suspend.target

[Service]
Type=oneshot
ExecStart=/bin/sh -c 'rmmod i2c_hid_acpi && modprobe i2c_hid_acpi'

[Install]
WantedBy=suspend.target
```

Puis active-le :

```bash
sudo systemctl daemon-reload
sudo systemctl enable fix-touchpad-resume.service
```

## Compatibilité

| Distro | Statut |
|---|---|
| Debian 13 | ✅ Testé |
| Ubuntu 24.04+ | 🔄 Non testé (devrait fonctionner) |
| Autres distros avec GRUB2 | 🔄 Non testé |

## Contribuer

Les PR et issues sont les bienvenues, notamment pour tester sur d'autres distributions !

## Licence

MIT — voir [LICENSE](LICENSE)

## Crédits

- **cg666** — auteur du [tutoriel original](https://gist.github.com/cg666/6069eb9619ce2e1dc1664193a5540147)
- **lenormandien** — traduction, corrections et automatisation
