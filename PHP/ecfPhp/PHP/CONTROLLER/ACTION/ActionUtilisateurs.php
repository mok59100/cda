<?php
$elm = new Utilisateurs($_POST);
$elm1 = new Stagiaires($_POST);

switch ($_GET['mode']) {
	case "Ajouter": {
		$elm = UtilisateursManager::add($elm);
		$elm1= StagiairesManager::add($elm1);
		break;
	}
	case "Modifier": {
		$elm = UtilisateursManager::update($elm);
		$elm1= StagiairesManager::update($elm1);
		break;
	}
	case "Supprimer": {
		$elm = UtilisateursManager::delete($elm);
		$elm1= StagiairesManager::delete($elm1);
		break;
	}
}

header("location:index.php?page=ListeUtilisateurs");