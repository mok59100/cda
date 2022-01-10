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
    $hotel = HotelsManager::findById($_GET['id']);
}
else{
    $hotel = new Hotels();
}

echo '  <input type="hidden" name="idHotel" value="' . $hotel->getIdHotel() . '">';
echo '  <label> Nom :</label>
        <input type="text" name="nomHotel" value="' . $hotel->getNomHotel() . '"' .$disabled.'>';
echo '  <label>categorie :</label>
        <input type="number" name="categorieHotel" value="' . $hotel->getCategorieHotel() . '"' . $disabled . '>';
echo '  <label>adresse :</label>
        <input type="adresse" name="adresseHotel" value="' . $hotel->getAdresseHotel() . '"' . $disabled . '>';
echo '  <label>ville :</label>
        <input type="ville" name="villeHotel" value="' . $hotel->getVilleHotel() . '"' . $disabled . '>';

echo '<input type="submit" value="'.$mode.'" class=" crudBtn crudBtn'.$mode.'"/>';

echo '<a href="index.php?page=listeHotel" class=" crudBtn crudBtnRetour">Annuler</a>
</form>';