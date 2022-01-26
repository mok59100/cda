<?php

 echo '<main>';

 echo '<div class="flex-0-1"></div>';

 echo '<div>';
 

$objets = ModelesManager::getList();
//Création du template de la grid
echo '<div class="grid-col-9 gridListe">';

echo '<div class="caseListe titreListe grid-columns-span-9">Liste des Modeles </div>';
echo '<div class="caseListe grid-columns-span-9">
<div></div>
<div class="caseListe"><a href="index.php?page=FormModeles&mode=Ajouter"><i class="fas fa-plus"></i></a></div>
<div></div>
</div>';

echo '<div class="caseListe labelListe">Mod_mar_id</div>';
echo '<div class="caseListe labelListe">Mod_nom</div>';
echo '<div class="caseListe labelListe">Mod_cylindree</div>';
echo '<div class="caseListe labelListe">Mod_prix</div>';
echo '<div class="caseListe labelListe">Mod_date_dispo</div>';
echo '<div class="caseListe labelListe">Mod_date_ajout</div>';

//Remplissage de div vide pour la structure de la grid
echo '<div class="caseListe"></div>';
echo '<div class="caseListe"></div>';
echo '<div class="caseListe"></div>';

// Affichage des ennregistrements de la base de données
foreach($objets as $unObjet)
{
echo '<div class="caseListe donneeListe">'.$unObjet->getMod_mar_id().'</div>';
echo '<div class="caseListe donneeListe">'.$unObjet->getMod_nom().'</div>';
echo '<div class="caseListe donneeListe">'.$unObjet->getMod_cylindree().'</div>';
echo '<div class="caseListe donneeListe">'.$unObjet->getMod_prix().'</div>';
echo '<div class="caseListe donneeListe">'.$unObjet->getMod_date_dispo().'</div>';
echo '<div class="caseListe donneeListe">'.$unObjet->getMod_date_ajout().'</div>';
echo '<div class="caseListe"> <a href="index.php?page=FormModeles&mode=Afficher&id='.$unObjet->getMod_id().'"><i class="fas fa-file-contract"></i></a></div>';
                                                    
echo '<div class="caseListe"> <a href="index.php?page=FormModeles&mode=Modifier&id='.$unObjet->getMod_id().'"><i class="fas fa-pen"></i></a></div>';
                                                    
echo '<div class="caseListe"> <a href="index.php?page=FormModeles&mode=Supprimer&id='.$unObjet->getMod_id().'"><i class="fas fa-trash-alt"></i></a></div>';
}
//Derniere ligne du tableau (bouton retour)
echo '<div class="caseListe grid-columns-span-9">
	<div></div>
	<a href="index.php?page=Accueil"><button><i class="fas fa-sign-out-alt fa-rotate-180"></i></button></a>
	<div></div>
</div>';

echo'</div>'; //Grid
echo'</div>'; //Div
echo '<div class="flex-0-1"></div>';
echo '</main>';