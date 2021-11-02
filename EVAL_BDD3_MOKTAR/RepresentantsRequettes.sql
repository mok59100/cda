1.	 Question 1
Tous les détails de tous les clients.
select * from clients


2.	Question 2
Les numéros et les noms des produits de couleur rouge et de poids supérieur à 2000.
select IdProduit, NomProduit, CouleurProduit 
from produits 
where PoidsProduit >2000 and CouleurProduit='Rouge' 

3.	Question 3
Les noms des représentants ayant vendu au moins un produit trié par ordre alphabétique.
select DISTINCT NomRepres from representants 
inner join ventes on representants.IdRepres=ventes.IdRepres
ORDER BY NomRepres ASC


4.	Question 4
Les noms des clients de Paris ayant acheté un produit pour une quantité supérieure à 180.
select DISTINCT NomClient from clients 
inner join ventes on clients.IdClient=ventes.IdClient 
where Villeclient='paris'and Quantite >180
 
 5.	Question 5
Les noms des représentants et les clients à qui ces représentants ont vendu un produit de couleur rouge pour une quantité supérieure à 100.	
select distinct NomRepres, representants.IdRepres, CouleurProduit from representants
inner join ventes on representants.IdRepres=ventes.IdRepres
inner join produits on ventes.IdProduit=produits.IdProduit
WHERE CouleurProduit='Rouge'and Quantite>100

6.	Question 6
Les produits et le nombre vendus 
select distinct quantite, NomProduit from ventes
inner join  produits on ventes.IdProduit=produits.IdProduit

7.	Question 7
Les clients ayant achetés plus que la moyenne.
select clients.NomClient FROM clients
inner JOIN ventes on clients.IdClient=ventes.IdClient
WHERE Quantite >(select avg(Quantite) from ventes)

8.	Question 8 
Créer une vue pleine entre clients et ventes
CREATE VIEW test AS
select  
clients.IdClient,
    NomClient,
    VilleClient
     IdVente,
    IdRepres,
    IdProduit,
    Quantite
    from clients
    inner join  ventes on clients.IdClient=ventes.IdClient;