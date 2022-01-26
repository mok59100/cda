<?php
$elm = new Modeles($_POST);

switch ($_GET['mode']) {
	case "Ajouter": {
		$elm = ModelesManager::add($elm);
		break;
	}
	case "Modifier": {
		$elm = ModelesManager::update($elm);
		break;
	}
	case "Supprimer": {
		$elm = ModelesManager::delete($elm);
		break;
	}
}

header("location:index.php?page=ListeModeles");