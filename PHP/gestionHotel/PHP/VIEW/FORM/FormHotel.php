<?php
$mode = $_GET['mode'];
echo '<div class="demiPage colonne">';
echo '<div id="DivSousTitre">';


$disabled = " ";
switch ($mode) {
    case "Editer":
    case "Supprimer":
        $disabled = " disabled ";
        break;
}
echo '  <h5>'.$mode.' un nouveau Hotel</h5></div>
        <form id="formulaire" method="post" action="index.php?page=actionHotel&mode='.$mode.'">';

if (isset($_GET['id'])) {
    $categ = HotelsManager::findById($_GET['id']);
}
else{
    $categ = new Hotels();
}

echo '  <input type="hidden" name="idHotel" value="' . $categ->getIdHotel() . '">';
echo '  <label> Nom :</label>
        <input type="text" name="nomHotel" value="' . $categ->getNomHotel() . '"' .$disabled.'>';
echo '  <label>categorie :</label>
        <input type="number" name="categorieHotel" value="' . $prod->getCategorieHotel() . '"' . $disabled . '>';
echo '  <label>adresse :</label>
        <input type="date" name="adresseHotel" value="' . $prod->getAdresseHotel() . '"' . $disabled . '>';
echo '  <label>ville :</label>
        <input type="date" name="villeHotel" value="' . $prod->getVilleHotel() . '"' . $disabled . '>';

echo '<input type="submit" value="'.$mode.'" class=" crudBtn crudBtn'.$mode.'"/>';

echo '<a href="index.php?page=listeHotel" class=" crudBtn crudBtnRetour">Annuler</a>
</form>';