<?php

 echo '<main>';

 echo '<div class="flex-0-1"></div>';

 echo '<div>';
 

$objets = PaniersManager::getList();
//Création du template de la grid
echo '<div class="grid-col-6 gridListe">';

echo '<div class="caseListe grid-columns-span-6">Liste des Paniers </div>';
echo '<div class="caseListe grid-columns-span-6">
<div></div>
<div class="caseListe"><a href="index.php?page=FormPaniers&mode=Ajouter"><i class="fas fa-plus"></i></a></div>
<div></div>
</div>';

echo '<div class="caseListe">Client</div>';
echo '<div class="caseListe">Nombre Articles</div>';


//Remplissage de div vide pour la structure de la grid
echo '<div class="caseListe"></div>';
echo '<div class="caseListe"></div>';
echo '<div class="caseListe"></div>';
UtilisateursManager::getList(null,["role"=>1]);/*je demande a la classe utilisateurmanager avec le getlist  tout les info utilisateur avec le role client (je met toute les condition)*/
// Affichage des ennregistrements de la base de données
var_dump(UtilisateursManager::getList(null,["role"=>1]));
foreach($objets as $unObjet)
{
echo '<div class="caseListe">'.$unObjet->getNomUtilisateur().'</div>';
echo '<div class="caseListe">'.$unObjet->getQuantite().'</div>';
echo '<div class="caseListe">'.$unObjet->getAdresseLivraison().'</div>';
echo '<div class="caseListe"> <a href="index.php?page=FormPaniers&mode=Afficher&id='.$unObjet->getIdPanier().'"><i class="fas fa-file-contract"></i></a></div>';
                                                    
echo '<div class="caseListe"> <a href="index.php?page=FormPaniers&mode=Modifier&id='.$unObjet->getIdPanier().'"><i class="fas fa-pen"></i></a></div>';
                                                    
echo '<div class="caseListe"> <a href="index.php?page=FormPaniers&mode=Supprimer&id='.$unObjet->getIdPanier().'"><i class="fas fa-trash-alt"></i></a></div>';
}
//Derniere ligne du tableau (bouton retour)
echo '<div class="caseListe grid-columns-span-6">
	<div></div>
	<a href="index.php?page=Accueil"><button><i class="fas fa-sign-out-alt fa-rotate-180"></i></button></a>
	<div></div>
</div>';

echo'</div>'; //Grid
echo'</div>'; //Div
echo '<div class="flex-0-1"></div>';
echo '</main>';