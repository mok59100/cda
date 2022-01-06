<?php
$erreur = false;
// var_dump($_POST);
$p = new Hotels($_POST);
// var_dump($p);
switch ($_GET['mode']) {
    case "Ajouter": {
        HotelsManager::add($p);
            break;
        }
    case "Modifier": {
        HotelsManager::update($p);
            break;
        }
    case "Supprimer": {
            $listeProduit = ChambresManager::getListByHotel($p->getIdHotel());
            /**** Technique informative */
            //    if (count($listeProduit)>0)
            //    {
            //        echo 'Il reste des produits';
            //        $erreur=true;

            //    }
            //    else{
            //     CategoriesManager::delete($p);
            //    }

            /**** Technique de suppression en cascade */
            foreach ($listeChambre as $unChambre) {
                ChambresManager::delete($unChambre);
            }
            HotelsManager::delete($p);
            break;
        }
}

if (!$erreur) {  // si pas d'erreur
    header("location:index.php?page=listeHotel");   //redirection directe
} else {
    header("refresh:3;url=index.php?page=listeHotel");    // on attend 3 secondes avant la redirection
}
