<?php
class employe
{

     /*****************Attributs***************** */
    private $_nom;
    private $_prenom;
    private $_dateEmbauche;
    private $_salaire;
    private $_service;
    private $_agence;
    private $_enfants = [];
    private $chequeVacance;
    private $ChequeNoel;
    
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
      public function getAgence()
    {
        return $this->_agence;
    }

    public function setAgence(Agence $agence)
    {
        $this->_agence = $agence;
    }

    public function getEnfants()
    {
        return $this->_enfants;
    }
    public function getChequeVacance()
    {
        return $this->chequeVacance;
    }

    public function setChequeVacance($chequeVacance)
    {
        $this->chequeVacance = $chequeVacance;
    }
    public function getChequeNoel()
    {
        return $this->ChequeNoel;
    }

    public function setChequeNoel($ChequeNoel)
    {
        $this->ChequeNoel = $ChequeNoel;
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

  /*****************Autres M??thodes***************** */
 /**
     * Transforme l'objet en chaine de caract??res
     *
     * @return String
     */

public function toString()
{
    $aff = "\n\n*** SALARIE ***\n";
    $aff .= "Nom :" . $this->getNom() . "\nPrenom :" . $this->getPrenom() . "\nDateEmbauche :" . $this->getDateEmbauche()->format('Y-m-d') . "\nSalaire annuel :" . $this->getSalaire() . "K???\nService :" . $this->getService()
    . "\nAgence :" . $this->getAgence()."\nChequeVcance :" . $this->getChequeVacance() ;
    $aff .= "Il re??oit une prime de " . $this->prime() . "K???\n";

}

 /**
     * Renvoi vrai si l'objet en param??tre est ??gal ?? l'objet appelant
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
     *        0 si ils sont ??gaux
     *        -1 si le 1er est <
     *
     * @param [type] $obj1
     * @param [type] $obj2
     * @return int
     */


    /* comparaison avec concat??nation*/
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
         return $anciennete->format('%y Ann??es %m mois et %d jours');
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
 * prime de 2% du salaire par annee d'anciennet??
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




  
    
     public function ChequeVacance()
     {
        if ($this.Anciennete() >= 1)
            {
                return "vous avez droit ?? des cheques vacances";
            }
        else
            {
                return "vous n'avez pas droit ?? des cheques vacances";
            }
        }
             

     

     public function ChequeNoel()
     {
         if (enfant 0-10)
     {
         return "L'agence a un restaurant";
     }
     else
     {
         return "Le salari?? b??n??ficie de Tickets Resto";

     }

   
    }    
?>