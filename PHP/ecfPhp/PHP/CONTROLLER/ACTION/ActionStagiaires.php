<?php
$elm = new Stagiaires($_POST);

switch ($_GET['mode']) {
	case "Ajouter": {
		$elm = StagiairesManager::add($elm);
		break;
	}
	case "Modifier": {
		$elm = StagiairesManager::update($elm);
		break;
	}
	case "Supprimer": {
		$elm = StagiairesManager::delete($elm);
		break;
	}
}

header("location:index.php?page=ListeStagiaires");