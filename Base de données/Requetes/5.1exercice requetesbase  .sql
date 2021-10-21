A.	Requêtes simples

1.	Afficher les noms de département
select nomdep from departement
2.	Afficher les numéros et noms de département
select nodep ,nomdep from departement 
3.	Afficher toutes les propriétés des employés
select noemp,nomemp,fonction,noresp,datemb,sala,comm,nodep from employe
4.	Afficher les fonctions des employés
select fonction from employe
5.	Afficher les fonctions des employés sans double
select distinct fonction from employe
6.	Afficher les noms des employés avec leur date dembauche, ainsi que la date dembauche augmentée dune journée
select nomemp,datemb,sum(datemb+1) from employe
7.	Afficher les noms des employés suivis dun espace, suivi de leur fonction
select CONCAT(nomemp,'',fonction) from employe



B.	Requêtes avec clause “where”

1.	Donner la liste des numéros et noms des employés du département 30
select noemp,nomemp from employe where nodep=30
2.	Donner la liste des numéros et noms des ouvriers ainsi que leur numéro de département
select noemp,nomemp,nodep FROM employe where fonction='ouvrier'
3.	Donner les noms et numéros des départements dont le numéro est supérieur ou égal à 30
select nomemp,nodep from employe where nodep>=30
4.	Donner les noms, salaires et commissions des employés dont la commission excède le salaire
select nomemp,sala, comm from employe where comm>sala
5.	Donner les noms et salaires des vendeurs du département 30 dont le salaire est supérieur à 1500 €
select nomemp,sala from employe where nodep=30 and sala>1500  
6.	Donner la liste des noms, fonctions et salaires des directeurs et des présidents
select nomemp,fonction,sala from employe where fonction ='directeur','president'
7.	Donner la liste des noms, fonctions et salaires des directeurs et des employés qui ont un salaire > 2500 €
select noemp,fonction,sala from employe where sala>2500
8.	Donner la liste des noms, numéros de département des directeurs et des ouvriers du département 10
select nomemp,nodep from employe where nodep=10 and fonction= 'directeur','ouvrier' 
9.	Donner la liste des noms, fonctions et numéros de département des employés du département 10 qui ne sont ni ouvrier ni directeur
select nomemp,fonction, nodep from employe where nodep=10 and fonction!= 'directeur' or fonction!='ouvrier'
10.	Donner la liste des noms, fonctions et numéros de département des directeurs qui ne sont pas directeur dans le département 30
select nomemp,fonction,nodep from employe where fonction='directeur'  and nodep!='30'
11.	Donner la liste des noms, fonctions et salaires des employés qui gagnent entre 1200 € et 1300 €
Select nomemp,fonction,sala from employe where sala BETWEEN 1200 AND 1300
12.	Donner la liste des noms, numéros de département et fonctions des employés
« ouvrier », « analyste » ou « vendeur »
select nomemp,fonction, nodep from employe where fonction= 'ouvrier' or fonction='analyste'or fonction='vendeur'
13.	Donner les employés qui ne sont pas "vendeur"
select fonction from employe where fonction!='vendeur'
14.	Donner la liste des employés dont la première lettre du nom est un "C"
select nomemp from employe where nomemp LIKE'c%'
15.	Donner la liste des employés qui nont pas de commission
select nomemp,comm from employe where comm is null
16.	Donner la liste des employés qui ont une commission et qui sont dans le département 30 ou 20
select nomemp,comm from employe where comm is>0 and nodep=30 or nodep=20


C.	Requêtes avec clause « order by »

1.	Donner la liste des salaires, fonctions et noms des employés du département 30, selon lordre croissant des salaires
select sala,fonction,nomemp,nodep from employe where nomemp=30 and sala order by sala asc
2.	Donner la liste des salaires, fonctions et noms des employés du département 30, selon l'ordre décroissant des salaires

3.	Donner la liste des employés triée selon l'ordre croissant des fonctions et l'ordre décroissant des salaires

4.	Donner la liste des commissions, salaires et noms triée selon l'ordre croissant des commissions

5.	Donner la liste des commissions, salaires et noms triée selon l'ordre décroissant des commissions

