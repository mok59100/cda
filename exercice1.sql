-- 1. Afficher toutes les informations concernant les employés.
SELECT * FROM employe

-- 2. Afficher toutes les informations concernant les départements. 
SELECT * FROM dept

-- 3.Afficher le nom, la date d'embauche, le numéro du supérieur, le 
-- numéro de département et le salaire de tous les employés. 

SELECT nom, dateemb, nosup, nodep, salaire FROM employe

-- 4. Afficher le titre de tous les employés. 
SELECT titre FROM employe

-- :5. Afficher les différentes valeurs des titres des employés. 
SELECT distinct titre FROM employe

-- 6. Afficher le nom, le numéro d'employé et le numéro du 
-- département des employés dont le titre est « Secrétaire ». 
SELECT nom, noemp, nodep, FROM employe
WHERE titre = "secretaire"

-- 7. Afficher le nom et le numéro de département dont le numéro de 
-- département est supérieur à 40.
SELECT nom, nodep FROM dept
WHERE nodept > 40

-- 8. Afficher le nom et le prénom des employés dont le nom est 
-- alphabétiquement antérieur au prénom. 
SELECT nom, prenom FROM employe
WHERE nom < prenom

-- 9. Afficher le nom, le salaire et le numéro du département des employés 
-- dont le titre est « Représentant », le numéro de département est 35 et 
-- le salaire est supérieur à 20000. 
SELECT nom 'Nom Employe', salaire 'Salaire Employe', nodep 'Numero Departement Employe'
FROM employe
WHERE titre ='representant' AND nodep = 35 AND salaire > 20000

-- 10.Afficher le nom, le titre et le salaire des employés dont le titre est 
-- « Représentant » ou dont le titre est « Président ». 
SELECT nom, titre, salaire FROM employe
WHERE titre ='représentant' OR titre ='president'

-- 11.Afficher le nom, le titre, le numéro de département, le salaire des 
-- employés du département 34, dont le titre est « Représentant » ou 
-- « Secrétaire ». 
SELECT nom AS 'Nom Employe',nodep AS 'Numero Departement Employe',salaire AS 'Salaire Employe'
FROM employe WHERE nodep =34 AND(titre ='Représentant' OR titre ='Secrétaire')

-- 12.Afficher le nom, le titre, le numéro de département, le salaire des 
-- employés dont le titre est Représentant, ou dont le titre est Secrétaire 
-- dans le département numéro 34. 
SELECT nom, titre, nodep, salaire FROM employe
WHERE nodep=34 AND titre= 'secretaire' OR titre= 'representant'

-- 13.Afficher le nom, et le salaire des employés dont le salaire est compris 
-- entre 20000 et 30000.
SELECT nom, salaire FROM employe
WHERE salaire BETWEEN 20000 AND 30000

-- 15.Afficher le nom des employés commençant par la lettre « H ». 
SELECT nom FROM employe
WHERE nom LIKE'H%'

-- 16.Afficher le nom des employés se terminant par la lettre « n ». 
SELECT nomFROM EMPLOYE
WHERE nom LIKE '%n'

-- 17.Afficher le nom des employés contenant la lettre « u » en 3ème
-- position. 
SELECT nom FROM employe
WHERE nom LIKE'--u%'

SELECT nom FROM employe
WHERE substring(nom,3,1)= "u"


-- 18.Afficher le salaire et le nom des employés du service 41 classés par 
-- salaire croissant. 
SELECT  FROM employe 
WHERE nodep = 41 order by salaire 

-- 19.Afficher le salaire et le nom des employés du service 41 classés par 
-- salaire décroissant. 
SELECT FROM  employe 
where nodep = 41 order by salaire DESC 


-- 20.Afficher le titre, le salaire et le nom des employés classés par titre 
-- croissant et par salaire décroissant.
SELECT tire,salaire,nom FROM employe ORDER BY titre, salaire DESC

-- 21.Afficher le taux de commission, le salaire et le nom des employés 
-- classés par taux de commission croissante.
SELECT tauxcom, salaire, nom FROM employe
ORDER BY tauxcom
-- 22.Afficher le nom, le salaire, le taux de commission et le titre des 
-- employés dont le taux de commission n'est pas renseigné. 
SELECT nom, salaire, tauxcom, titre FROM employe
WHERE tauxcom IS NULL
-- 23.Afficher le nom, le salaire, le taux de commission et le titre des 
-- employés dont le taux de commission est renseigné. 
SELECT nom, salaire, tauxcom, titre FROM employe
WHERE tauxcom is not null
-- 24.Afficher le nom, le salaire, le taux de commission, le titre des 
-- employés dont le taux de commission est inférieur à 15.
SELECT nom, salaire, tauxcom, titre FROM employe
WHERE tauxcom <15
-- 25. Afficher le nom, le salaire, le taux de commission, le titre des 
-- employés dont le taux de commission est supérieur à 15.
SELECT nom, salaire, tauxcom, titre FROM employe
WHERE tauxcom >15

-- 26.Afficher le nom, le salaire, le taux de commission et la commission des 
-- employés dont le taux de commission n'est pas nul. (la commission 
-- est calculée en multipliant le salaire par le taux de commission)
SELECT nom, salaire, tauxcom, ((salaire*tauxcom)/100) as commission FROM employe WHERE tauxcom IS NOT NULL

-- 27. Afficher le nom, le salaire, le taux de commission, la commission des 
-- employés dont le taux de commission n'est pas nul, classé par taux de 
-- commission croissant.
SELECT nom, salaire, tauxcom, ((salaire*tauxcom)/100) as commission FROM employe WHERE tauxcom IS NOT NULL ORDER BY tauxcom

-- 28. Afficher le nom et le prénom (concaténés) des employés. Renommer 
-- les colonnes
SELECT CONCAT (nom," ",prenom) as "Employé" FROM employe;

-- 29. Afficher les 5 premières lettres du nom des employés. 
SELECT SUBSTR(nom, 1, 5) FROM employe


-- 30. Afficher le nom et le rang de la lettre « r » dans le nom des employés
SELECT nom, instr(nom,'r') as'Rang de la lettres r'
FROM employe

-- 31. Afficher le nom, le nom en majuscule et le nom en minuscule de l'employé dont le nom est Vrante. 

SELECT nom, upper(nom), lower(nom) FROM employe WHERE nom="Vrante"

-- 32. Afficher le nom et le nombre de caractères du nom des employés.
  
SELECT nom, LENGTH(nom) as longeurNom FROM employe

--Rechercher le prénom des employés et le numéro de la région de leur département. 
     SELECT e.nom, e.prenom, noregion  FROM employe as e INNER JOIN dept as d ON  e.nodep=d.nodept; 

--Rechercher le numéro du département, le nom du département, le 
--nom des employés classés par numéro de département (renommer lestables utilisées).
SELECT e.nodep, d.nom AS 'nom departement', e.nom A 'nom employe' FROM employe AS e INNER JOIN dept AS d ON e.nodep = d.nodept ORDER BY e.nodep

--Rechercher le nom des employés du département Distribution.
SELECT E.nom
FROM employe AS E INNER JOIN dept AS D ON E.nodep = D.nodept
WHERE D.nom = 'Distribution'

--Rechercher le nom et le salaire des employés qui gagnent plus que leur patron, et le nom et le salaire de leur patron. 

select nom,
       salaire,
      (select nom from employe where noemp=e.nosup) as "nom supérieur",
      (select salaire from employe where noemp=e.nosup) as "salaire supérieur"
from employe as e
where salaire>(select salaire from employe where noemp=e.nosup)

--Rechercher le nom et le titre des employés qui ont le même titre que Amartakaldire. 
SELECT nom, titre FROM employe WHERE titre = (SELECT titre FROM employe WHERE nom = "Amartakaldire")

--Rechercher le nom, le salaire et le numéro de département des 
--employés qui gagnent plus quun seul employé du département 31, classés par numéro de département et salaire.

SELECT nom, salaire, nodep FROM employe
WHERE salaire >(SELECT MIN(salaire) FROM employe WHERE nodep = 31)ORDER BY nodep, salaire

--Rechercher le nom, le salaire et le numéro de département des 
--employés qui gagnent plus que tous les employés du département 31, classés par numéro de département et salaire.

SELECT nom, salaire, nodep FROM employe
WHERE salaire > (SELECT MAX (salaire) FROM employe WHERE nodep= 31) ORDER BY nodep, salaire

--Rechercher le nom et le titre des employés du service 31 qui ont un titre que lon trouve dans le département 32.
SELECT nom, titre  FROM employe WHERE titre IN (SELECT titre FROM employe WHERE nodep = 32) AND nodep = 31

--Rechercher le nom et le titre des employés du service 31 qui ont un titre lon ne trouve pas dans le département 32.

SELECT nom, titre  FROM employe WHERE titre NOT IN (SELECT titre FROM employe WHERE nodep = 32) AND nodep = 31

--Rechercher le nom, le titre et le salaire des employés qui ont le même titre et le même salaire que Fairant.
SELECT nom, titre, salaire FROM employe
WHERE NOT nom = 'Fairent'AND (titre,salaire) = (SELECT titre,salaire FROM employe WHERE nom = 'Fairent')


--Rechercher le numéro de département, le nom du département, le 
--nom des employés, en affichant aussi les départements dans lesquels il ny a personne, classés par numéro de département. 

SELECT e.nodep, d.nom AS 'nom departement', e.nom As 'nom employe'FROM employe AS e RIGHT JOIN dept AS d ON e.nodep = d.nodept ORDER BY e.nodep

-- 1. Calculer le nombre demployés de chaque titre. 
SELECT titre, COUNT (*) as "nombre employe" FROM employe GROUP BY titre


--Rechercher le numéro de département, le nom du département, le 
--nom des employés, en affichant aussi les départements dans lesquels 
-- il ny  personne, classés par numéro de département. 
SELECT nodept , dept.nom ,employe.nom FROM dept LEFT JOIN Employe ON dept.nodept= employe.nodep


-- 2.Calculer la moyenne des salaires et leur somme, par région

SELECT D.noregion, SUM(E.salaire) as SalaireSomme, AVG(E.salaire) as SalaireMoy FROM employe as E inner join dept as D group by D.noregion


-- 3. Afficher les numéros des départements ayant au moins 3 employés.
SELECT nodep FROM employe GROUP BY nodep HAVING COUNT (nodep) >= 3



-- 4. Afficher les lettres qui sont l'initiale d'au moins trois employés.
--  SELECT nodep FROM employe GROUP BY nodep HAVING COUNT (nodep) >= 3//
SELECT substring(nom,1,1) as 'initial'FROM employe GROUP BY initial having count(initial) > 2

-- 5. Rechercher le salaire maximum et le salaire minimum parmi tous les salariés et l'écart entre les deux.
SELECT MIN(salaire) as 'salaire min' , MAX(salaire) as 'salaire max' , MAX(salaire)-MIN(salaire) as 'difference' FROM employe

-- 6. Rechercher le nombre de titres différents.
SELECT COUNT (DISTINCT titre) FROM employe 
-- 7. Pour chaque titre, compter le nombre d'employés possédant ce titre. 
SELECT titre,COUNT(*) FROM employe GROUP BY titre 
-- 8. Pour chaque nom de département, afficher le nom du département et le nombre d'employés.
 SELECT d.nom, count(e.noemp) as "Nb employes" FROM employe as e INNER JOIN dept as d ON d.nodept=e.nodep GROUP BY d.nom;
-- 9. Rechercher les titres et la moyenne des salaires par titre dont la moyenne est supérieure à la moyenne des salaires des Représentants. 
SELECT titre, ROUND(AVG(salaire)) as "MoySalaire" FROM employe GROUP BY titre HAVING MoySalaire > (SELECT AVG(salaire) FROM employe WHERE titre="représentant")
-- 10.Rechercher le nombre de salaires renseignés et le nombre de taux de commission renseignés.
SELECT COUNT (salaire) , COUNT (tauxcom) FROM Employe


PAPYRUS

--1. Quelles sont les commandes du fournisseur 09120 ?
SELECT* FROM entcom WHERE numfou= 9120
--2. Afficher le code des fournisseurs pour lesquels des commandes ont été passées.
SELECT numfou FROM entcom
--3. Afficher le nombre de commandes fournisseurs passées, et le nombre de 
--fournisseur concernés.
SELECT COUNT(numcom),COUNT(DISTINCT numfou) FROM entcom  
--4. Editer les produits ayant un stock inférieur ou égal au stock dalerte et dont la 
--quantité annuelle est inférieur  à 1000
SELECT libart from produit WHERE stkale >= stkphy AND stkphy<1000
--(informations à fournir : n° produit, libellé produit, stock, stock actuel dalerte, 
--quantité annuelle)
--5. Quels sont les fournisseurs situés dans les départements 75 78 92 77
--Laffichage (département, nom fournisseur) sera effectué par département 
--décroissant, puis par ordre alphabétique
Select substr(posfou,1,2) as 'Département' , nomfou from fournis
where substr(posfou,1,2) in (75,77,78,92)
order by posfou desc, nomfou asc;
-- 6. Quelles sont les commandes passées au mois de mars et avril ?
Select datcom from entcom where extract(month from datcom) in (3,4)
-- 7. Quelles sont les commandes du jour qui ont des observations particulières ?
-- (Affichage numéro de commande, date de commande)
SELECT numcom, datcom FROM entcom WHERE obscom <> "" AND datcom=CURDATE()
-- 8. Lister le total de chaque commande par total décroissant 
-- (Affichage numéro de commande et total)
SELECT numcom , SUM(qtecde*priuni) as total  FROM ligcom GROUP BY numcom ORDER BY total DESC
-- 9. Lister les commandes dont le total est supérieur à 10 000€ ; on exclura dans le 
-- calcul du total les articles commandés en quantité supérieure ou égale à 1000.
-- (Affichage numéro de commande et total)
SELECT numcom , SUM(qtecde*priuni) as total  FROM ligcom WHERE qtecde<1000 GROUP BY numcom HAVING total>10000

-- 10.Lister les commandes par nom fournisseur 
-- (Afficher le nom du fournisseur, le numéro de commande et la date)
SELECT nomfou FROM fournis 
INNER JOIN entcom on entcom.numcom=numfou.numfou

-- 11.Sortir les produits des commandes ayant le mot urgent en observation?
-- (Afficher le numéro de commande, le nom du fournisseur, le libellé du produit et 
-- le sous total = quantité commandée * Prix unitaire
SELECT entcom.numcom, nomfou, libart, SUM(qtecde*priuni) AS total FROM fournis 
INNER JOIN entcom ON fournis.numfou=entcom.numfou INNER JOIN ligcom ON entcom.numcom=ligcom.numcom
INNER JOIN produit ON produit.codart=ligcom.codart WHERE obscom LIKE'%urgent%'
-- 12.Coder de 2 manières différentes la requête suivante :
-- Lister le nom des fournisseurs susceptibles de livrer au moins un article
SELECT DISTINCT nomfou FROM fournis
 INNER JOIN vente ON fournis.numfou=vente.numfou 
-- 13.Coder de 2 manières différentes la requête suivante
-- Lister les commandes (Numéro et date) dont le fournisseur est celui de la 
-- commande 70210 :
SELECT numcom, derliv FROM ligcom WHERE numcom=70210
-- 14.Dans les articles susceptibles d’être vendus, lister les articles moins chers (basés 
-- sur Prix1) que le moins cher des rubans (article dont le premier caractère 
-- commence par R). On affichera le libellé de l’article et prix1 
SELECT libart, prix1 FROM produit
INNER JOIN vente ON produit.codart=vente.codart WHERE prix1<(
SELECT MIN(prix1) FROM vente 
INNER JOIN produit ON vente.codart=produit.codart WHERE libart LIKE'R%')
-- 15.Editer la liste des fournisseurs susceptibles de livrer les produits dont le stock est 
-- inférieur ou égal à 150 % du stock dalerte. La liste est triée par produit puis 
-- fournisseur trié
SELECT numfou,stkphy,stkale FROM vente 
INNER JOIN produit ON vente.codart=produit.codart WHERE stkphy<=(150/100)*stkale

-- 16.Éditer la liste des fournisseurs susceptibles de livrer les produit dont le stock est 
-- inférieur ou égal à 150 % du stock dalerte et un délai de livraison Dau plus 30 
-- jours. La liste est triée par fournisseur puis produit
SELECT numfou, libart,stkphy,stkale,delliv FROM vente
INNER JOIN produit ON vente.codart=produit.codart WHERE stkphy<=(150/100)*stkale AND delliv<=30
-- 17.Avec le même type de sélection que ci-dessus, sortir un total des stocks par 
-- fournisseur trié par total décroissant
SELECT numfou, libart,stkphy,stkale,delliv FROM vente
INNER JOIN produit ON vente.codart=produit.codart WHERE stkphy<=(150/100)*stkale AND delliv<=30 AND sum (stkphy=numfou) ORDER BY total DESC
-- dépasse 90% de la quantité annuelle prévue.
-- 19.Calculer le chiffre daffaire par fournisseur pour lannée 93 sachant que les prix 
-- indiqués sont hors taxes et que le taux de TVA est 20%.
-- 20.Existe-t-il des lignes de commande non cohérentes avec les produits vendus par 
-- les fournisseurs. 