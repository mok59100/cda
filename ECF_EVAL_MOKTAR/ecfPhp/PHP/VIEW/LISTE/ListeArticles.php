<?php

 echo '<main>';

 echo '<div class="flex-0-1"></div>';

 echo '<div>';
 

$objets = ArticlesManager::getList();
//Création du template de la grid
echo '<div class="grid-col-8 gridListe">';

echo '<div class="caseListe grid-columns-span-8">Liste des Articles</div>';
echo '<div class="caseListe grid-columns-span-8">
<div></div>
<div class="caseListe"><a href="index.php?page=FormArticles&mode=Ajouter"><i class="fas fa-plus"></i></a></div>
<div></div>
</div>';

echo '<div ></div>';
echo '<div class="caseListe">Libelle</div>';
echo '<div class="caseListe">Description</div>';
echo '<div class="caseListe">Prix</div>';
echo '<div class="caseListe">TypeArticle</div>';

//Remplissage de div vide pour la structure de la grid

echo '<div class="caseListe"></div>';
echo '<div class="caseListe"></div>';
echo '<div class="caseListe"></div>';

// Affichage des ennregistrements de la base de données
foreach($objets as $unObjet)
{
// echo '<div class="caseListe">'.$unObjet->getPhotos().'</div>';
echo '<div><img src= "./IMG/'.$unObjet->getPhotos().'"></div>';
echo '<div class="caseListe">'.$unObjet->getLibelleArticle().'</div>';
echo '<div class="caseListe">'.$unObjet->getDescriptionArticle().'</div>';
echo '<div class="caseListe">'.$unObjet->getPrixArticle().'</div>';

$idTypeArticle=$unObjet->getIdTypeArticle();/*je recupere l'idtype article de l'objet*/
$TypeArticle=TypesarticlesManager::findById($idTypeArticle);/*je recherche en base de donne l'objet type article grace a son id */
echo '<div class="caseListe">'.$TypeArticle->getLibelleTypeArticle().'</div>';/*je demande a l'objet d'afficher son libelle*/

/*version optimise*/
// echo '<div class="caseListe">'.TypesarticlesManager::findById($unObjet->getIdTypeArticle())->getLibelleTypeArticle().'</div>';
//var_dump(TypesarticlesManager::findById($unObjet->getIdTypeArticle()));  */mok je recupere un objet qui me donne un id de ype article me permet d'obtenir le libelle typearticle( j'utilise la methode findbyid dans le articlesmanager qui me permet d'obtenir leobjet type article)

echo '<div class="caseListe"> <a href="index.php?page=FormArticles&mode=Afficher&id='.$unObjet->getIdArticle().'"><i class="fas fa-file-contract"></i></a></div>';
                                                    
echo '<div class="caseListe"> <a href="index.php?page=FormArticles&mode=Modifier&id='.$unObjet->getIdArticle().'"><i class="fas fa-pen"></i></a></div>';
                                                    
echo '<div class="caseListe"> <a href="index.php?page=FormArticles&mode=Supprimer&id='.$unObjet->getIdArticle().'"><i class="fas fa-trash-alt"></i></a></div>';

}
//Derniere ligne du tableau (bouton retour)
echo '<div class="caseListe grid-columns-span-8">
	<div></div>
	<a href="index.php?page=Accueil"><button><i class="fas fa-sign-out-alt fa-rotate-180"></i></button></a>
	<div></div>
</div>';

echo'</div>'; //Grid
echo'</div>'; //Div
echo '<div class="flex-0-1"></div>';
echo '</main>';