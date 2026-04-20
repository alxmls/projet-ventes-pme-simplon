-- =====================================================================
-- Projet : Analyser les ventes d'une PME
-- Auteur  : Alexandre Marlhens
-- Environnement : https://sqliteonline.com/
-- Table : ventes (colonnes : date, produit, prix, qte, region)
-- =====================================================================

-- Vérification de l'import
SELECT * FROM ventes;


-- 3.a - Chiffre d'affaires total
-- Le CA d'une ligne = prix * qte ; le CA total est la somme de toutes les lignes.
SELECT SUM(prix * qte) AS chiffre_affaires_total
FROM ventes;


-- 3.b - Ventes par produit
-- Pour chaque produit : quantité vendue et chiffre d'affaires généré,
-- trié par CA décroissant pour voir le produit qui rapporte le plus.
SELECT
    produit,
    SUM(qte)         AS quantite_totale,
    SUM(prix * qte)  AS chiffre_affaires
FROM ventes
GROUP BY produit
ORDER BY chiffre_affaires DESC;


-- 3.c - Ventes par région
-- Pour chaque région : quantité vendue et chiffre d'affaires généré,
-- trié par CA décroissant pour identifier la région la plus performante.
SELECT
    region,
    SUM(qte)         AS quantite_totale,
    SUM(prix * qte)  AS chiffre_affaires
FROM ventes
GROUP BY region
ORDER BY chiffre_affaires DESC;
