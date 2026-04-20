# Fiche synthèse — Analyse des ventes d'une PME

**Auteur :** Alexandre Marlhens
**Période couverte :** du 01/01/2022 au 20/01/2022 (20 jours)
**Source :** extrait CSV fourni par le client (39 lignes de ventes)

---

## 1. Caractéristiques du jeu de données

| Colonne  | Type     | Description                                       |
|----------|----------|---------------------------------------------------|
| date     | date     | Date de la vente (AAAA-MM-JJ)                     |
| produit  | texte    | Nom du produit vendu (Produit A, B ou C)          |
| prix     | entier   | Prix unitaire en euros                            |
| qte      | entier   | Quantité vendue                                   |
| region   | texte    | Région de la vente (Nord / Sud)                   |

- **39 lignes** (2 ventes en moyenne par jour).
- **3 produits** distincts avec un prix unitaire fixe : A = 10 €, B = 15 €, C = 20 €.
- **2 régions** de vente : Nord, Sud.
- Pas de valeur manquante constatée.
- Le CA d'une ligne se calcule simplement : `prix × qte`.

---

## 2. Résultats d'analyse (requêtes SQL)

### 2.a — Chiffre d'affaires total

> **CA total = 44 825 €** sur 20 jours, soit environ **2 241 € / jour** en moyenne.

### 2.b — Ventes par produit

| Produit   | Quantité vendue | Chiffre d'affaires | Part du CA |
|-----------|----------------:|-------------------:|-----------:|
| Produit A |           1 750 |           17 500 € |     39,0 % |
| Produit B |           1 055 |           15 825 € |     35,3 % |
| Produit C |             575 |           11 500 € |     25,7 % |

**Lecture :** le Produit A domine en volume comme en CA, mais les trois produits contribuent tous de manière significative (écart CA max 6 000 €). Le Produit C, plus cher à l'unité, compense un volume plus faible.

### 2.c — Ventes par région

| Région | Quantité vendue | Chiffre d'affaires | Part du CA |
|--------|----------------:|-------------------:|-----------:|
| Sud    |           1 775 |           24 100 € |     53,8 % |
| Nord   |           1 605 |           20 725 € |     46,2 % |

**Lecture :** la région Sud est la plus performante, tant en volume qu'en CA. L'écart reste modéré (~3 400 € sur la période), les deux régions sont donc équilibrées.

---

## 3. Premières recommandations

- Le **Produit A** étant le plus vendu et le premier générateur de CA, il mérite une attention particulière en stock et en marketing.
- Le **Produit C**, malgré un volume faible, affiche la plus forte valeur unitaire — piste à creuser pour une stratégie de montée en gamme.
- L'**écart Nord/Sud** est à confirmer sur une période plus longue avant d'envisager un rééquilibrage commercial.

---

## 4. Livrables associés

- `requetes.sql` : export SQL des requêtes (exécutables sur sqliteonline.com).
- `ventes-par-produit.py` + `ventes-par-produit.html` : graphique des quantités vendues par produit.
- `ca-par-produit.py` + `ca-par-produit.html` : graphique du chiffre d'affaires par produit.
- Lien du dépôt GitHub du projet Python : *(à compléter après publication)*.
