# fluffy-SystemReporter
Le script PowerShell conçu pour collecter des informations système telles que l'utilisation du processeur, de la mémoire et de l'espace disque, puis générer un rapport détaillé. Ce script permet aux utilisateurices de surveiller les performances de leur système et de comprendre l'utilisation des ressources.

## Utilisation

1. Téléchargez le fichier `fluffy-SystemReport.ps1` et sauvegardez-le dans un répertoire de votre choix.

2. Ouvrez PowerShell en tant qu'administrateurice.

3. Accédez au répertoire où se trouve le script `fluffy-SystemReport.ps1`.

4. Exécutez la commande suivante pour lancer le script :
   ```powershell
   .\fluffy-SystemReport.ps1
   ```

5. Le rapport sera affiché à l'écran et enregistré dans un fichier texte dans le même répertoire que le script.

## Fonctionnalités

- Collecte des informations sur l'utilisation du processeur.
- Collecte des informations sur l'utilisation de la mémoire.
- Collecte des informations sur l'espace disque.
- Génère un rapport détaillé avec les informations collectées.

## Exemple de rapport
```mathematica
System Report
=============
Date: 2024-06-03 15:30:00
CPU Usage: 10%
Memory Usage: 30%
Disk Usage:
Drive C: Free Space 50GB / Total Space 100GB
Drive D: Free Space 100GB / Total Space 200GB
```

# Avertissement
Assurez-vous d'exécuter ce script en tant qu'administrateurice pour obtenir des résultats complets, en particulier pour la collecte d'informations sur l'espace disque.

## Auteurice
`Potite_Bulle (bashx00 · Interface)`

## Licence
Ce projet est sous `licence MIT`. Voir le fichier [LICENSE](https://github.com/bashx00/fluffy-SystemReporter/blob/main/LICENSE) pour plus de détails.
