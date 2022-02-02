<?php
echo '<main>';

echo '<div class="flex-0-1"></div>';

echo '<div>';

$articles=ArticlesManager::getList();/* pour recuperer en base de donnee la liste des produits je creer une variable article pour stocker et je note apres la classe articlesmanager pour recuperer la liste des articles  la ou il ya la methode getlist * */
// var_dump($articles);

// Affichage des ennregistrements de la base de données
foreach($articles as $unArticle){/*faire une boucle */
 echo '<div class= "colonne center">';

echo '<div>
 <img src= "./IMG/' .$unArticle->getPhotos().'"></div>';

echo '<div class="caseListe">'.$unArticle->getLibelleArticle().'</div>';/*mok j'affiche le nom de l'article*/
echo '<div class="caseListe">'.$unArticle->getDescriptionArticle().'</div>';/* mok j'affiche la description de l'article*/
echo '<div class="caseListe">'.$unArticle->getPrixArticle().'</div>';/* mokj'affiche le prix de l'article*/
if ($_SESSION ["utilisateur"]->getRole()==1){
    echo '<a href ="index.php?page=ActionLignespaniers&id='.$unArticle->getIdArticle().' class="caseListe"><i class="fas fa-cart-plus"></i></a>';/* mokj'affiche le prix de l'article*/
}

echo'</div>';

 }
//  var_dump($_SESSION);
 //var_dump($_SESSION ["utilisateur"]->getRole());

echo'</div>'; //Div
echo '<div class="flex-0-1"></div>';
echo '</main>';