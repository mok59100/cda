<?php

include "employe.php";
include "agence.php";
include "enfant.php";

$a1 = new agence(["Nom" => "afpa", "adresse" => "525 rue lille","restauration" => "restaurant d'entreprise" ,"codePostal" => "59100" , "ville" => "roubaix"]);
$a2 = new agence(["Nom" => "michelin", "adresse" => "6a rue du painfouree","restauration" => "ticket restaurant" ,"codePostal" => "69100" , "ville" => "lyon"]);
$a3 = new agence(["Nom" => "renault", "adresse" => "avenue de la liberation","restauration" => "restaurant d'entreprise" ,"codePostal" => "75620" , "ville" => "paris"]);
$a4 = new agence(["Nom" => "sfr", "adresse" => "87 rue des arcs","restauration" => "ticket restaurant " ,"codePostal" => "92610" , "ville" => "nanterre"]);

$em[] = new Employe(["nom"=>"Lucri","prenom"=>"sophie","dateEmbauche"=>new DateTime ("2001/05/26"),"salaire"=>23.5, "service"=>"comptabilite","agence"=>$a1,"enfant" =>[$enf[1]]]);
$em[] = new Employe(["nom"=>"patin","prenom"=>"patrick","dateEmbauche"=>new DateTime ("1998/02/23"),"salaire"=>29, "service"=>"mecanique","agence"=>$a1, "enfant" =>[$enf[2]]]);
$em[] = new Employe(["nom"=>"firmin","prenom"=>"antoine","dateEmbauche"=>new DateTime ("2021/05/26"),"salaire"=>20, "service"=>"operateur","agence"=>$a2,"enfant" =>[$enf[1]]]);
$em[] = new Employe(["nom"=>"Lucien","prenom"=>"sophie","dateEmbauche"=>new DateTime ("2012/09/26"),"salaire"=>19, "service"=>"comptabilite","agence"=>$a4,"enfant" =>[$enf[1]]]);
$em[] = new Employe(["nom"=>"Ligui","prenom"=>"alexio","dateEmbauche"=>new DateTime ("2016/05/01"),"salaire"=>21, "service"=>"comptabilite","agence"=>$a3,"enfant" =>[$enf[2]]]);
$enf[] = new Enfant(["Nom" => "lucri", "Prenom" => "Antoine", "DateDeNaissance" => new DateTime ("2014/05/26")]);
$enf[] = new Enfant(["Nom" => "patin", "Prenom" => "matthieu", "DateDeNaissance" => new DateTime ("1999/05/26")]);
$enf[] = new Enfant(["Nom" => "lucien", "Prenom" => "alae", "DateDeNaissance" => new DateTime ("2016/05/25")]);
$enf[] = new Enfant(["Nom" => "ligui", "Prenom" => "Antonio", "DateDeNaissance" => new DateTime ("2011/04/20")]);
$enf[] = new Enfant(["Nom" => "firmin", "Prenom" => "antony", "DateDeNaissance" => new DateTime ("2009/05/26")]);
foreach($em as $key=>$value)
{


echo '<div>'.$value->toString();
echo 'primeAnnuelle'.$value->toString();

}