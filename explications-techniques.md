# Explications techniques du correctif

> Document destiné à un public lycéen souhaitant comprendre ce qui se passe sous le capot.

## C'est quoi l'ACPI ?

L'**ACPI** (Advanced Configuration and Power Interface) est un standard qui permet au BIOS de décrire le matériel d'un ordinateur au système d'exploitation. C'est un peu comme une carte d'identité du hardware : Linux la lit au démarrage pour savoir quels composants sont présents et comment les utiliser.

La table **DSDT** (Differentiated System Description Table) est la plus importante : elle décrit tous les périphériques, y compris le touchpad.

## Pourquoi le touchpad ne fonctionne pas ?

Le DSDT du Lenovo 14w Gen 2 contient ce code (simplifié) :

```
si (type_touchpad == 0x01) → utilise l'adresse 0x0015
si (type_touchpad == 0x02) → utilise l'adresse 0x002C
```

Le problème : sur ce laptop, `type_touchpad` ne vaut ni `0x01` ni `0x02`. Aucune des deux conditions n'est vraie, donc Linux ne configure pas le touchpad du tout.

## La correction

On transforme le second `if` en `else` :

```
si (type_touchpad == 0x01) → utilise l'adresse 0x0015
sinon                       → utilise l'adresse 0x002C  ← toujours exécuté si la 1ère condition échoue
```

Résultat : Linux utilise systématiquement l'adresse `0x002C`, celle du touchpad ELAN0643.

Cette correction est appliquée à deux endroits du DSDT :
- **`_DSM`** (Device-Specific Method) : retourne le "type" du touchpad
- **`_CRS`** (Current Resource Settings) : fournit la configuration I2C du touchpad

## Pourquoi passer par l'initrd ?

On ne peut pas modifier directement la table ACPI dans le BIOS (ce serait risqué et souvent impossible).

Linux permet de **surcharger** les tables ACPI au démarrage via l'`initrd` (Initial RAM Disk). C'est une petite archive chargée très tôt par le bootloader (GRUB), avant même que Linux ne commence à initialiser le matériel. En y plaçant notre DSDT corrigé, Linux l'utilisera à la place de celui du BIOS.

## Schéma du démarrage

```
BIOS/UEFI
    └─► GRUB
            ├─► initrd_acpi_patched  ← notre DSDT corrigé est chargé ici
            └─► initrd principal
                    └─► Linux démarre avec le bon DSDT → touchpad OK ✅
```
