<?php
$mode = $_GET['mode'];
echo '<div class="demiPage colonne">';
echo '<div id="DivSousTitre" >';

$disabled = " ";
switch ($mode) {
    case "Editer":
    case "Supprimer":
        $disabled = " disabled ";
        break;
}

echo '<h5>' . $mode . ' une nouvelle Chambre</h5></div>
<form id="formulaire" method="post" action="index.php?page=actionChambre&mode=' . $mode . '">';
if (isset($_GET['id'])) {
    $chambre = ChambresManager::findById($_GET['id']);
    $idHot = $chambre->getIdHotel();
} else {
    $chambre = new Chambres();
    $idHot = null;
}

$listeHotel = HotelsManager::getList();

// on crée les inputs du formulaire
// il faut que les name des input correspondent aux attributs de la class
// si on a les informations (cas Editer, Modifier, supp) on les mets à jour
echo '  <input type="hidden" name="idChambre" value="' . $chambre->getIdChambre() . '">';
echo '  <label> Type :</label>
        <input type="text" name="typeChambre" value="' . $chambre->getTypeChambre() . '"' . $disabled . '>';
echo '  <label>Capacite :</label>
        <input type="number" name="capaciteChambre" value="' . $chambre->getCapaciteChambre() . '"' . $disabled . '>';
echo '  <label>NumChambre :</label>
        <input type="numero" name="numeroChambre" value="' . $chambre->getNumChambre() . '"' . $disabled . '>';
echo '  <label>Hotel :</label>
        <select name="idHotel" '.$disabled.'>';
foreach ($listeHotel as $unHotel) {
    $sel = "";
    if ($unHotel->getIdHotel() == $idHot) {
        $sel = "selected";
    }

    echo '<option value="' . $unHotel->getIdHotel() . '" ' . $sel . ' >' . $unHotel->getNomHotel() . '</option>';
}

echo '
    </select>
    </div>';

echo '<div class="ligneDetail"><input type="submit" value="' . $mode . '" class=" crudBtn crudBtn' . $mode . '"/>';
echo '
<a href="index.php?page=listeChambre" class=" crudBtn crudBtnRetour">Annuler</a>
</div>
</div>
</form>';