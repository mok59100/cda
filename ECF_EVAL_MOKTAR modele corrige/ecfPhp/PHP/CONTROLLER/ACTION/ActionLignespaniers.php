<?php
$elm = new Lignespaniers($_POST);


switch ($_GET['mode']) {
	case "Ajouter": {
		$elm = LignespaniersManager::add($elm);
	
		break;
	}
	case "Modifier": {
		$elm = LignespaniersManager::update($elm);
	
		break;
	}
	case "Supprimer": {
		$elm = LignespaniersManager::delete($elm);
	
		break;
	}
}

header("location:index.php?page=ListeLignespaniers");