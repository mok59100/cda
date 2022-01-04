<?php
class employe
{

     /*****************Attributs***************** */
    private $_nom;
    private $_prenom;
    private $_dateEmbauche;
    private $_salaire;
    private $_service;
    
  /*****************Accesseurs***************** */
  public function getNom()
  {
      return $this->_nom;
  }

  public function setNom($nom)
  {
      $this->_nom = strtoUpper($nom);
  }

  public function getPrenom()
  {
      return $this->_prenom;
  }
  public function setPrenom($prenom)
  {
      $this->_prenom = $prenom;
  }
  public function getDateEmbauche()
  {
      return $this->_dateEmbauche;
  }

  public function setDateEmbauche($dateEmbauche)
  {
      $this->_dateEmbauche =  $dateEmbauche;
  }
  public function getSalaire()
  {
      return $this->_salaire;
  }

  public function setSalaire($salaire)
  {
      $this->_salaire = strtoUpper($salaire);
  }
      public function getService()
      {
          return $this->_service;
      }
    
      public function setService($service)
      {
          $this->_service = $service;
      }

      /*****************Constructeur***************** */

      public function __construct(array $options = [])
      {
          if (!empty($options)) // empty : renvoi vrai si le tableau est vide
          {
              $this->hydrate($options);
          }
      }
      public function hydrate($data)
      {
          foreach ($data as $key => $value) {
              $methode = "set" . ucfirst($key); //ucfirst met la 1ere lettre en majuscule
              if (is_callable(([$this, $methode]))) // is_callable verifie que la methode existe
              {
                  $this->$methode($value);
              }
          }
      }

  /*****************Autres Méthodes***************** */
 /**
     * Transforme l'objet en chaine de caractères
     *
     * @return String
     */

public function toString()
{
    $aff = "\n\n*** SALARIE ***\n";
    $aff .= "Nom :" . $this->getNom() . "\nPrenom :" . $this->getPrenom() . "\nDateEmbauche :" . $this->getDateEmbauche()->format('Y-m-d') . "\nSalaire annuel :" . $this->getSalaire() . "K€\nService :" . $this->getService() . "\n";

    $aff .= "Il reçoit une prime de " . $this->prime() . "K€\n";

}

 /**
     * Renvoi vrai si l'objet en paramètre est égal à l'objet appelant
     *
     * @param [type] $obj
     * @return bool
     */


    public function equalsTo($obj)
    {
        return true;
    }


    /**
     * Compare 2 objets
     * Renvoi 1 si le 1er est >
     *        0 si ils sont égaux
     *        -1 si le 1er est <
     *
     * @param [type] $obj1
     * @param [type] $obj2
     * @return int
     */


    /* comparaison avec concaténation*/
    public static function compareTo($obj1, $obj2)
    {
        if ($obj1->getNom() > $obj2->getNom())
        {
            return 1;
        }
        else if ($obj1->getNom() < $obj2->getNom())
        {
            return -1;
        }
        else if ($obj1->getPrenom() > $obj2->getPrenom())
        {
            return 1;
        }
        else if ($obj1->getPrenom() < $obj2->getPrenom())
        {
            return -1;
        }
        else
        {
            return 0;
        }
    }

       public function getAnciennete()
      {
          
          
          $date = new DateTime("now");
        
          $anciennete = date_diff($date,$this->getDateEmbauche());
         return $anciennete->format('%y Années %m mois et %d jours');
      }

   
    
        public function Prime()
        {
            
         return $this->primeSalaireAnnuel() + $this->PrimeAnciennete();

        }


        //applique 5% du salaire
      private function PrimeSalaireAnnuel()
    {
        return $this->getSalaire()* 0.05;
        
      
    }



    /**
 * prime de 2% du salaire par annee d'ancienneté
 *
 * @return int montant de la prime
 */

    private function PrimeAnciennete()
    
    {
    
      return $this->getSalaire()* 0.02 * $this->getAnciennete();

    }


 private function masseSalariale()
 {
return $this->getSalaire() + $this->PrimeAnciennete() + $this->PrimeSalaireAnnuel();
 }



}
    
?>