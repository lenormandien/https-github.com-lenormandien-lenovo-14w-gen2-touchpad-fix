# 🖱️ Lenovo 14w Gen 2 — Touchpad Fix (ELAN0643 / I2C)

> Correctif DSDT + service systemd pour faire fonctionner le touchpad ELAN0643 sous Linux (testé sur **Linux Mint**).

---

## Le problème

Sur le **Lenovo 14w Gen 2**, le touchpad ELAN0643 est connecté via I2C mais ne fonctionne pas sous Linux avec le DSDT d'origine. La cause est un bug dans la table ACPI (DSDT) du firmware : la méthode `_CRS` du périphérique touchpad ne retourne aucune ressource I2C dans certains cas, ce qui empêche le driver `elan_i2c` de s'initialiser.

### Cause exacte

La variable `TPTY` (Touchpad Type), lue depuis l'Embedded Controller, détermine quelle adresse I2C est assignée au touchpad :

| Valeur de `TPTY` | DSDT original | DSDT corrigé |
|:---:|:---:|:---:|
| `0x01` | I2C `0x0015` ✅ | I2C `0x0015` ✅ |
| `0x02` | I2C `0x002C` ✅ | I2C `0x002C` ✅ |
| autre  | **Rien** ❌ | I2C `0x002C` ✅ |

Sous Linux, `TPTY` n'est pas initialisée à `0x01` ou `0x02` au moment de l'évaluation ACPI → aucune ressource assignée → touchpad ignoré.

---

## Correctifs appliqués

| # | Emplacement | Correctif |
|---|---|---|
| 1 | `ELAN0643._DSM` | `If (TPTY == 0x02)` → `Else` |
| 2 | `ELAN0643._CRS` | `If (TPTY == 0x02)` → `Else` |
| 3 | `I2CD._S0W` | `Return (0x04)` → `Return (0x00)` (force D0) |
| 4 | `I2CD._PS3` | `DSAD(0x08, 0x03)` → neutralisé |

En complément, un **service systemd** force le contrôleur I2C (`AMDI0010:01`) à rester en état D0 (actif) et déclenche le probe du touchpad au démarrage.

---

## Prérequis

- Linux Mint (ou toute distro Debian/Ubuntu avec GRUB)
- Accès root
- Le fichier `dsdt.dsl` **déjà patché** dans le répertoire courant

### Outils installés automatiquement si absents

```
acpica-tools   (iasl)
cpio
grub-common    (update-grub)
```

---

## Installation

### 1. Obtenir le DSDT original

```bash
# Extraire le DSDT du firmware en cours
sudo cat /sys/firmware/acpi/tables/DSDT > dsdt.dat

# Décompiler
iasl -d dsdt.dat
# → génère dsdt.dsl
```

### 2. Appliquer les correctifs manuellement dans `dsdt.dsl`

#### Correctif 1 & 2 — `ELAN0643._DSM` et `ELAN0643._CRS`

Chercher les deux occurrences de :
```asl
If ((^^^PCI0.LPC0.H_EC.ECRD (RefOf (^^^PCI0.LPC0.H_EC.TPTY)) == 0x02))
```

Remplacer chacune par :
```asl
//If ((^^^PCI0.LPC0.H_EC.ECRD (RefOf (^^^PCI0.LPC0.H_EC.TPTY)) == 0x02))
Else
```

#### Correctif 3 — `I2CD._S0W`

Chercher :
```asl
Method (_S0W, ...) { Return (0x04) }
```

Remplacer par :
```asl
// Fix ELAN0643: forcer D0
Method (_S0W, ...) { Return (0x00) }
```

#### Correctif 4 — `I2CD._PS3`

Chercher dans `_PS3` l'appel :
```asl
DSAD (0x08, 0x03)
```

Neutraliser :
```asl
// Fix ELAN0643: neutralisé
// DSAD (0x08, 0x03)
```

### 3. Lancer le script d'installation

```bash
sudo bash install-dsdt-elan0643.sh
```

Le script :
1. Vérifie les correctifs dans `dsdt.dsl`
2. Recompile le DSDT avec `iasl`
3. Crée l'archive `/boot/initrd_acpi_patched`
4. Configure GRUB pour charger le DSDT patché au boot
5. Installe et active le service systemd `elan0643-touchpad`

### 4. Redémarrer

```bash
reboot
```

---

## Vérification après reboot

```bash
# Statut du service
systemctl status elan0643-touchpad.service

# Logs kernel du driver elan
dmesg | grep -i elan

# Vérifier que le touchpad est bien détecté
libinput list-devices | grep -A 10 Touchpad
```

**Sortie attendue dans `dmesg` :**
```
elan_i2c i2c-X-0015: Elan Touchpad ... initialized
```

---

## Rollback

```bash
# Désactiver le service
sudo systemctl disable elan0643-touchpad.service

# Supprimer la config GRUB et régénérer
sudo rm /etc/default/grub.d/acpi-tables.cfg
sudo update-grub

# Supprimer les fichiers installés
sudo rm /boot/initrd_acpi_patched
sudo rm /usr/local/lib/elan0643-touchpad-init.sh
sudo rm /etc/systemd/system/elan0643-touchpad.service
sudo systemctl daemon-reload

reboot
```

---

## Fichiers du projet

```
.
├── README.md
├── install-dsdt-elan0643.sh     # Script d'installation principal
├── dsdt.dsl                     # DSDT patché (à générer, voir instructions)
└── dsdt_original.dsl            # DSDT original (pour référence / diff)
```

---

## Pourquoi ce n'est pas dans le kernel upstream ?

Le bug est dans le **firmware BIOS Lenovo**, pas dans le kernel. Le correctif idéal serait une mise à jour BIOS de Lenovo. En attendant, l'override ACPI via initrd est la méthode recommandée par la documentation kernel ([ACPI custom tables](https://www.kernel.org/doc/html/latest/admin-guide/acpi/initrd_table_override.html)).

---

## Matériel testé

| Champ | Valeur |
|---|---|
| Machine | Lenovo 14w Gen 2 |
| Touchpad | ELAN0643 (I2C, `ELAN238E`) |
| Contrôleur I2C | `AMDI0010:01` (i2c_designware) |
| Driver touchpad | `elan_i2c` |
| OS testé | Linux Mint |
| Adresse I2C | `0x0015` ou `0x002C` selon `TPTY` |

---

## Contribuer

Les PR sont les bienvenues, notamment pour :
- Tester sur d'autres distributions (Debian, Ubuntu, Fedora…)
- Adapter à d'autres modèles Lenovo avec le même bug
- Améliorer la détection automatique des adresses I2C

---

## Licence

MIT
