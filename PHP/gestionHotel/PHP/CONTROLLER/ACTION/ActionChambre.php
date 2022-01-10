<?php
var_dump($_POST);
$p = new Chambres($_POST);
var_dump($p);
switch ($_GET['mode']) {
    case "Ajouter": {
            ChambresManager::add($p);
            break;
        }
    case "Modifier": {

            ChambresManager::update($p);
            break;
        }
    case "Supprimer": {

            ChambresManager::delete($p);
            break;
        }
}

header("location:index.php?page=listeChambre");
