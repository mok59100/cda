<?php
$elm = new Options($_POST);

switch ($_GET['mode']) {
	case "Ajouter": {
		$elm = OptionsManager::add($elm);
		break;
	}
	case "Modifier": {
		$elm = OptionsManager::update($elm);
		break;
	}
	case "Supprimer": {
		$elm = OptionsManager::delete($elm);
		break;
	}
}

header("location:index.php?page=ListeOptions");