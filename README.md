# Projet de positionnement — Analyser les ventes d'une PME

Projet de préparation à la journée de sélection Simplon, parcours **Développeur·se en Intelligence Artificielle**.

**Dépôt GitHub :** https://github.com/alxmls/projet-ventes-pme-simplon

## Contexte

Une PME cliente souhaite mieux comprendre la dynamique de ses ventes sur un extrait de 20 jours (39 lignes, 3 produits, 2 régions). Ce dépôt contient :

- les requêtes SQL d'analyse,
- trois graphiques générés en Python (pandas + plotly),
- une fiche de synthèse des résultats.

## Contenu du dépôt

| Fichier                     | Rôle                                                                 |
|-----------------------------|----------------------------------------------------------------------|
| `requetes.sql`              | Requêtes SQL exécutables sur https://sqliteonline.com/               |
| `ventes-par-produit.py`     | Génère `ventes-par-produit.html` (quantités vendues par produit)     |
| `ca-par-produit.py`         | Génère `ca-par-produit.html` (chiffre d'affaires par produit)        |
| `ventes-par-region.py`      | Génère `ventes-par-region.html` (camembert des ventes par région)    |
| `fiche-synthese.md`         | Synthèse des résultats d'analyse (CA total, par produit, par région) |
| `requirements.txt`          | Dépendances Python (`pandas`, `plotly`)                              |
| `ventes.csv`                | Extrait du jeu de données fourni par le client                       |

## Exécution

```bash
pip install -r requirements.txt
python3 ventes-par-produit.py
python3 ca-par-produit.py
python3 ventes-par-region.py
```

Les fichiers HTML générés s'ouvrent dans n'importe quel navigateur.

## Principaux résultats

- Chiffre d'affaires total : **44 825 €** sur 20 jours.
- Produit le plus vendu : **Produit A** (1 750 unités, 17 500 €).
- Région la plus performante : **Sud** (24 100 € soit 53,8 % du CA).

Voir `fiche-synthese.md` pour le détail.
