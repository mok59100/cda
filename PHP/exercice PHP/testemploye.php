<?php

include "employe.php";
$em[] = new Employe(["nom"=>"Lucri","prenom"=>"sophie","dateEmbauche"=>new DateTime ("2001/05/26"),"salaire"=>23.5, "service"=>"comptabilite" ]);
$em[] = new Employe(["nom"=>"patin","prenom"=>"patrick","dateEmbauche"=>new DateTime ("1998/02/23"),"salaire"=>29, "service"=>"mecanique" ]);
$em[] = new Employe(["nom"=>"firmin","prenom"=>"antoine","dateEmbauche"=>new DateTime ("2021/05/26"),"salaire"=>20, "service"=>"operateur" ]);
$em[] = new Employe(["nom"=>"Lucien","prenom"=>"sophie","dateEmbauche"=>new DateTime ("2012/09/26"),"salaire"=>19, "service"=>"comptabilite" ]);
$em[] = new Employe(["nom"=>"Ligui","prenom"=>"alexio","dateEmbauche"=>new DateTime ("2016/05/01"),"salaire"=>21, "service"=>"comptabilite" ]);

foreach($em as $key=>$value)
{


echo '<div>'.$value->toString();
echo 'primeAnnuelle'.$value->toString();
}