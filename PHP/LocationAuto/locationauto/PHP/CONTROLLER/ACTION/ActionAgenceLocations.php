<?php
$elm = new AgenceLocations($_POST);

switch ($_GET['mode']) {
	case "Ajouter": {
		$elm = AgenceLocationsManager::add($elm);
		break;
	}
	case "Modifier": {
		$elm = AgenceLocationsManager::update($elm);
		break;
	}
	case "Supprimer": {
		$elm = AgenceLocationsManager::delete($elm);
		break;
	}
}

header("location:index.php?page=ListeAgenceLocations");