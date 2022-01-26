<?php
$elm = new Modeles_options($_POST);

switch ($_GET['mode']) {
	case "Ajouter": {
		$elm = Modeles_optionsManager::add($elm);
		break;
	}
	case "Modifier": {
		$elm = Modeles_optionsManager::update($elm);
		break;
	}
	case "Supprimer": {
		$elm = Modeles_optionsManager::delete($elm);
		break;
	}
}

header("location:index.php?page=ListeModeles_options");