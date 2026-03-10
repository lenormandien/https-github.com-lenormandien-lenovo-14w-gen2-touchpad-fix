# Correctif touchpad sur Lenovo 14w Gen 2 sous Linux

> 📄 **Source originale :** [cg666 sur GitHub Gist](https://github.com/lenormandien/lenovo-14w-gen2-touchpad-fix)
> Ce document est une version en français, corrigée et enrichie, du tutoriel original.

## C'est quoi le problème ?

Sur le laptop Lenovo 14w Gen 2, le touchpad (référence ELAN0643) ne fonctionne pas sous Linux.

La cause : le fichier **ACPI DSDT**, un fichier de configuration bas-niveau qui décrit le matériel à l'OS (le système d'exploitation), contient une erreur de logique. Linux lit ce fichier au démarrage et en déduit — à tort — que le touchpad n'est pas là.

La solution : on va corriger ce fichier, puis demander à Linux de l'utiliser à la place de celui du BIOS.

> ⚠️ **Toutes les commandes sont à exécuter en tant que root** (administrateur). Tu peux utiliser `sudo su` pour passer root, ou préfixer chaque commande par `sudo`.

> ✅ Testé sur **Debian 13**.

---

## Étape 0 — Installer les outils nécessaires

```
$ apt install acpica-tools acpidump cpio
```

- **acpidump** : extrait les tables ACPI du BIOS
- **iasl** (inclus dans acpica-tools) : traduit ces tables dans un format lisible et modifiable
- **cpio** : crée une archive qui sera chargée au démarrage

---

## Étape 1 — Extraire et décompiler les tables ACPI

```
$ mkdir -p acpi/dat
$ mkdir -p acpi/dsl
$ cd acpi/dat
$ acpidump -b
$ iasl -d *.dat
$ mv *.dsl ../dsl
$ cd ../../
```

**Ce que font ces commandes :**
- On crée deux dossiers : `dat` pour les fichiers bruts, `dsl` pour les fichiers lisibles
- `acpidump -b` extrait toutes les tables ACPI du BIOS sous forme de fichiers binaires (`.dat`)
- `iasl -d *.dat` traduit ces fichiers binaires en code source lisible (`.dsl`) — c'est la "décompilation"
- On déplace les fichiers `.dsl` dans le bon dossier

---

## Étape 2 — Modifier le fichier `dsdt.dsl`

Ouvre le fichier `acpi/dsl/dsdt.dsl` avec un éditeur de texte (par exemple `nano` ou `gedit`).

On va corriger **deux endroits** dans ce fichier.

---

### Correction 1 — La méthode `_DSM`

Cherche ce bloc (repère-toi avec `ELAN0643` et `Case (0x01)`) :

```
                        Case (0x01)
                        {
                            If ((^^^PCI0.LPC0.H_EC.ECRD (RefOf (^^^PCI0.LPC0.H_EC.TPTY)) == 0x01))
                            {
                                Return (0x01)
                            }

                            If ((^^^PCI0.LPC0.H_EC.ECRD (RefOf (^^^PCI0.LPC0.H_EC.TPTY)) == 0x02))
                            {
                                Return (0x20)
                            }
```

**Remplace-le par :**

```
                        Case (0x01)
                        {
                            If ((^^^PCI0.LPC0.H_EC.ECRD (RefOf (^^^PCI0.LPC0.H_EC.TPTY)) == 0x01))
                            {
                                Return (0x01)
                            }
                            Else
                            // If ((^^^PCI0.LPC0.H_EC.ECRD (RefOf (^^^PCI0.LPC0.H_EC.TPTY)) == 0x02))
                            {
                                Return (0x20)
                            }
```

**Pourquoi ?** Le code original vérifie si une valeur vaut `0x01`, puis indépendamment si elle vaut `0x02`. Sur ce laptop, la valeur ne correspond à aucun des deux cas, donc rien n'est retourné. En ajoutant `Else`, on dit : "si ce n'est pas `0x01`, prends quand même le chemin `0x02`", ce qui active le touchpad.

---

### Correction 2 — La méthode `_CRS`

Un peu plus bas, cherche ce bloc (repère-toi avec `_CRS: Current Resource Settings`) :

```
                If ((^^^PCI0.LPC0.H_EC.ECRD (RefOf (^^^PCI0.LPC0.H_EC.TPTY)) == 0x01))
                {
                    ...
                    Return (ConcatenateResTemplate (SBFB, SBFG))
                }
                If ((^^^PCI0.LPC0.H_EC.ECRD (RefOf (^^^PCI0.LPC0.H_EC.TPTY)) == 0x02))
                {
                    ...
                    Return (ConcatenateResTemplate (SBFC, SBFG))
                }
```

**Remplace le second `If` par `Else` (et mets l'ancien `If` en commentaire) :**

```
                If ((^^^PCI0.LPC0.H_EC.ECRD (RefOf (^^^PCI0.LPC0.H_EC.TPTY)) == 0x01))
                {
                    Name (SBFB, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0015, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2CD",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (ConcatenateResTemplate (SBFB, SBFG))
                }
                Else
                // If ((^^^PCI0.LPC0.H_EC.ECRD (RefOf (^^^PCI0.LPC0.H_EC.TPTY)) == 0x02))
                {
                    Name (SBFC, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x002C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2CD",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (ConcatenateResTemplate (SBFC, SBFG))
                }
```

**Pourquoi ?** Même logique : on force Linux à utiliser l'adresse I2C `0x002C` (celle du touchpad ELAN0643) même si la détection automatique échoue.

---

## Étape 3 — Recompiler et appliquer le correctif

Depuis le dossier qui contient `acpi/` (là où tu t'étais mis au départ) :

```
$ mkdir -p kernel/firmware/acpi
$ cp acpi/dsl/dsdt.dsl ./
$ iasl -sa dsdt.dsl
$ cp dsdt.aml kernel/firmware/acpi
$ find kernel | cpio -H newc --create > /boot/initrd_acpi_patched
$ echo 'GRUB_EARLY_INITRD_LINUX_CUSTOM="initrd_acpi_patched"' > /etc/default/grub.d/acpi-tables.cfg
$ update-grub
```

**Ce que font ces commandes :**
- `iasl -sa dsdt.dsl` recompile ton fichier corrigé en binaire (`.aml`)
- `cpio` crée une petite archive contenant ta table ACPI corrigée
- On place cette archive dans `/boot` et on configure GRUB (le gestionnaire de démarrage) pour la charger **avant** tout le reste — Linux utilisera alors ta version corrigée à la place de celle du BIOS

---

## Étape 4 — Redémarrer et vérifier

Redémarre le laptop :

```
$ reboot
```

Après redémarrage, vérifie que le touchpad est bien reconnu :

```
$ dmesg | grep -i elan
$ libinput list-devices
```

Si tu vois `ELAN0643` dans les résultats, c'est bon — le touchpad est actif ! 🎉
