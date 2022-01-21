<?php
$elm = new Voitures($_POST);

switch ($_GET['mode']) {
	case "Ajouter": {
		$elm = VoituresManager::add($elm);
		break;
	}
	case "Modifier": {
		$elm = VoituresManager::update($elm);
		break;
	}
	case "Supprimer": {
		$elm = VoituresManager::delete($elm);
		break;
	}
}

header("location:index.php?page=ListeVoitures");