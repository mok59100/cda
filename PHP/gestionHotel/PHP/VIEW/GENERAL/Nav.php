<?php

if (isset($_SESSION['utilisateur'])) {
    if ($_SESSION['utilisateur']->getRole() == 1) {

        $classeCouleur = "grey"; // l'admin voir les boutons gris
    } else {
        $classeCouleur = "blue"; //les utilisateurs bleu
    }

    echo '<nav>
    <button class="crudBtn crudBtnRetour ' . $classeCouleur . '"><a href="index.php?page=listeChambre">Chambres</a></button>
    <button class="crudBtn crudBtnRetour ' . $classeCouleur . '"><a href="index.php?page=listeHotel">Hotels</a></button>
        </nav>';
}
