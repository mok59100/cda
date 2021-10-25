
1.	Obtenir la liste des villes qui ont un nom dau moins 40 lettres
SELECT ville_nom FROM villes_france 
WHERE length (ville_nom)>=40

2.	Obtenir la liste des départements d’outre-mer, c’est-à-dire ceux dont le numéro de département commence par “97”
SELECT departement_code 
FROM departements 
WHERE departement_code LIKE '97%'
3.	Obtenir la liste des départements des Hauts-de-France trier par ordre alphabétique des noms de département (sans jointure)
SELECT departement_nom "Hauts-de-France"
FROM departements
ORDER BY departement_nom
4.	Obtenir le nom de toutes les villes, ainsi que le nom du département associé. Les plus peuplées en 2012 apparaitront en premier
select 
5.	Obtenir la liste du nom de chaque département, associé à son code et du nombre de commune au sein de ces départements, en triant afin d’obtenir en priorité les départements qui possèdent le plus de communes
select ville_id, ville_departement from villes_france
6.	Obtenir la liste des départements, classés en fonction de leur superficie (plus grand en premier)
select ville_surface,ville_departement from villes_france where 
7.	Compter le nombre de villes dont le nom commence par “Saint”
select count(*) 
from villes_france 
where ville_nom like'saint%'
8.	Obtenir la liste des villes qui ont un nom existants plusieurs fois, et trier afin d’obtenir en premier celles dont le nom est le plus souvent utilisé par plusieurs communes

9.	Obtenir en une seule requête SQL la liste des villes dont la superficie est supérieure à la superficie moyenne
select ville_surface 
10.	Obtenir la liste des départements qui possèdent plus de 1.5 millions d’habitants en 2012
select ville_departement from villes_france 
where(ville_population_2012)>=1500000

11.	Remplacez les tirets par un espace vide, pour toutes les villes commençant par “SAINT-” (dans la colonne qui contient les noms en majuscule)
UPDATE `villes_france` SET ville_nom = REPLACE( "saint", "-", " ")
12.	Supplémentaire. Obtenir la liste des 50 villes ayant la plus faible superficie

13.	Ajouter une colonne region_nbDepartement dans la table regions (mettre le code dans le script de réponse)

14.	Ecrire une procédure stockée (nommée MajRegion), qui vient mettre à jour cette colonne

15.	Créer une vue qui regroupe les 3 tables


