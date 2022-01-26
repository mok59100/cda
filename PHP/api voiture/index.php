<?php

include "./PHP/CONTROLLER/Outils.php";

spl_autoload_register("ChargerClasse");

Parametres::init();

DbConnect::init();

session_start();

/******Les langues******/
/***On récupère la langue***/
if (isset($_GET['lang']) && TextesManager::checkIfLangExist($_GET['lang'])) {
	 // tester si la langue est gérée
	$_SESSION['lang'] = $_GET['lang'];
}else if (isset($_COOKIE['lang'])) {
	$_SESSION['lang'] = $_COOKIE['lang'];
}else{
	$_SESSION['lang'] = 'FR';
}
//Crée un cookie lang sur la machine de l'utilisateur d'une durée de 10h.
setcookie("lang", $_SESSION['lang'], time()+36000, '/');
/******Fin des langues******/

$routes=[
	"Default"=>["PHP/VIEW/FORM/","FormInscriptionConnexion","Connexion & Inscription",0,false],
	"Accueil"=>["PHP/VIEW/GENERAL/","Accueil","Accueil",0,false],

	"ActionConnexion"=>["PHP/CONTROLLER/ACTION/","ActionConnexion","Action de la connexion",0,false],
	"ActionInscription"=>["PHP/CONTROLLER/ACTION/","ActionInscription","Action de l'inscription",0,false],
	"ActionDeconnexion"=>["PHP/CONTROLLER/ACTION/","ActionDeconnexion","Action de deconnexion",0,false],

	"ListeMailAPI"=>["PHP/MODEL/API/","ListeMailAPI", "ListeMailAPI",0,true],

	"ListeMarques"=>["PHP/VIEW/LISTE/","ListeMarques","Liste Marques",0,false],
	"FormMarques"=>["PHP/VIEW/FORM/","FormMarques","Formulaire Marques",0,false],
	"ActionMarques"=>["PHP/CONTROLLER/ACTION/","ActionMarques","Action Marques",0,false],

	"ListeMavue"=>["PHP/VIEW/LISTE/","ListeMavue","Liste Mavue",0,false],
	"FormMavue"=>["PHP/VIEW/FORM/","FormMavue","Formulaire Mavue",0,false],
	"ActionMavue"=>["PHP/CONTROLLER/ACTION/","ActionMavue","Action Mavue",0,false],

	"ListeModeles"=>["PHP/VIEW/LISTE/","ListeModeles","Liste Modeles",0,false],
	"FormModeles"=>["PHP/VIEW/FORM/","FormModeles","Formulaire Modeles",0,false],
	"ActionModeles"=>["PHP/CONTROLLER/ACTION/","ActionModeles","Action Modeles",0,false],

	"ListeModeles_options"=>["PHP/VIEW/LISTE/","ListeModeles_options","Liste Modeles_options",0,false],
	"FormModeles_options"=>["PHP/VIEW/FORM/","FormModeles_options","Formulaire Modeles_options",0,false],
	"ActionModeles_options"=>["PHP/CONTROLLER/ACTION/","ActionModeles_options","Action Modeles_options",0,false],

	"ListeOptions"=>["PHP/VIEW/LISTE/","ListeOptions","Liste Options",0,false],
	"FormOptions"=>["PHP/VIEW/FORM/","FormOptions","Formulaire Options",0,false],
	"ActionOptions"=>["PHP/CONTROLLER/ACTION/","ActionOptions","Action Options",0,false],

	"ListeUtilisateurs"=>["PHP/VIEW/LISTE/","ListeUtilisateurs","Liste Utilisateurs",0,false],
	"FormUtilisateurs"=>["PHP/VIEW/FORM/","FormUtilisateurs","Formulaire Utilisateurs",0,false],
	"ActionUtilisateurs"=>["PHP/CONTROLLER/ACTION/","ActionUtilisateurs","Action Utilisateurs",0,false],

];

if(isset($_GET["page"]))
{

	$page=$_GET["page"];

	if(isset($routes[$page]))
	{
		AfficherPage($routes[$page]);
	}
	else
	{
		AfficherPage($routes["Default"]);
	}
}
else
{
	AfficherPage($routes["Default"]);
}