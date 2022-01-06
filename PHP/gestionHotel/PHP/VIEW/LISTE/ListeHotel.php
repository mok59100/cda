<?php
$liste = HotelsManager::getList();
?>
<div class="demiPage colonne">
    <div id="crudBarreOutil">
        <a class=" crudBtn crudBtnOutil" href='index.php?page=formHotel&mode=Ajouter'>Ajouter </a>
    </div>
    <div id="crudTableau">

        <div class="crudColonne">Libellé</div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>

        <?php foreach ($liste as $elt) {

            echo '<div class="crudColonne">' . $elt->getNomHotel() . '</div>
                <div></div>
                <a class=" crudBtn crudBtnEditer" href="index.php?page=formHotel&mode=Editer&id=' . $elt->getIdHotel() . '">Afficher </a>
                <a class=" crudBtn crudBtnModifier" href="index.php?page=formHotel&mode=Modifier&id=' . $elt->getIdHotel() . '">Modifier</a>
                <a class=" crudBtn crudBtnSupprimer" href="index.php?page=formHotel&mode=Supprimer&id=' . $elt->getIdHotel() . '">Supprimer</a>
             ';
        } ?>

    </div>

</div>