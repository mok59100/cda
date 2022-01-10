<?php
$liste = ChambresManager::getList();
?>
<div class="demiPage colonne">
    <div id="crudBarreOutil">
        <a class=" crudBtn crudBtnOutil" href='index.php?page=formChambre&mode=Ajouter'>Ajouter </a>
    </div>
    <div id="crudTableau">

        <div class="crudColonne">Libellé</div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <?php foreach ($liste as $elt) {
            echo '<div class="crudColonne">' . $elt->getNumChambre() . '</div>
            <div></div>    
            <a class=" crudBtn crudBtnEditer" href="index.php?page=formChambre&mode=Editer&id='. $elt->getIdChambre().'">Afficher </a>
                <a class=" crudBtn crudBtnModifier" href="index.php?page=formChambre&mode=Modifier&id='.$elt->getIdChambre().'">Modifier</a>
                <a class=" crudBtn crudBtnSupprimer" href="index.php?page=formChambre&mode=Supprimer&id='. $elt->getIdChambre().'">Supprimer</a>
            ';
        } ?>

    </div>
</div>