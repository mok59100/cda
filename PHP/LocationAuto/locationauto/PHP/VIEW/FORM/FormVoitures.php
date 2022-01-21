<?php
global $regex;
$mode = $_GET['mode'];
$disabled = " ";
switch ($mode) {
	case "Afficher":
	case "Supprimer":
		$disabled = " disabled ";
		break;
}

if (isset($_GET['id'])) {
	$elm = VoituresManager::findById($_GET['id']);
} else {
	$elm = new Voitures();
}
echo '<main class="center">';

echo '<form class="GridForm" action="index.php?page=ActionVoitures&mode='.$_GET['mode'].'" method="post"/>';

echo '<div class="caseForm col-span-form">Formulaire Voitures</div>';
if ($mode != "Ajouter") {
	echo '<div class="noDisplay"><input type="hidden" value="'.$elm->getIdVoiture().'" name=IdVoiture></div>';
};
echo '<div class="caseForm">Marque</div>';
echo '<div class="caseForm"><input type="text" '.$disabled;
echo ($mode == "Ajouter") ? "" : " value=".$elm->getMarque(); echo ' name=Marque pattern="'.$regex["*"].'"></div>';
echo '<div class="caseForm"><i class="fas fa-question-circle"></i></div>';
echo '<div class="caseForm"><i class="fas fa-check-circle"></i></div>';

echo '<div class="caseForm">Modele</div>';
echo '<div class="caseForm"><input type="text" '.$disabled;
echo ($mode == "Ajouter") ? "" : " value=".$elm->getModele(); echo ' name=Modele pattern="'.$regex["*"].'"></div>';
echo '<div class="caseForm"><i class="fas fa-question-circle"></i></div>';
echo '<div class="caseForm"><i class="fas fa-check-circle"></i></div>';

echo '<div class="caseForm">IdAgence</div>';
echo '<div class="caseForm"><input type="text" '.$disabled;
echo ($mode == "Ajouter") ? "" : " value=".$elm->getIdAgence(); echo ' name=IdAgence pattern="'.$regex["*"].'"></div>';
echo '<div class="caseForm"><i class="fas fa-question-circle"></i></div>';
echo '<div class="caseForm"><i class="fas fa-check-circle"></i></div>';

echo '<div class="caseForm col-span-form">
	<div></div>
	<div><a href="index.php?page=ListeVoitures"><button type="button"><i class="fas fa-sign-out-alt fa-rotate-180"></i></button></a></div>
	<div class="flex-0-1"></div>';
	echo ($mode == "Afficher") ? "" : " <div><button type=\"submit\"><i class=\"fas fa-paper-plane\"></i></button></div>";
	echo'<div></div>
	</div>';

echo'</form>';

echo '</main>';