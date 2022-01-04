<?php

class agence
{

     /*****************Attributs***************** */
    private $_nom;
    private $_adresse;
    private $_codePostal;
    private $_ville;
    
    

    /*****************Accesseurs***************** */

   












    public function getNom()
    {
        return $this->_nom;
    }

    public function setNom($nom)
    {
        $this->_nom = $nom;
    }

    public function getAdresse($adresse)
    {
        return $this->_adresse;
    }

    public function setAdresse($adresse)
    {
        $this->_adresse = $adresse;
    }

    public function getCodePostal()
    {
        return $this->_codePostal;
    }

    public function setCodePostal($codePostal)
    {
        $this->_codePostal = $codePostal;
    }

    public function getVille()
    {
        return $this->_ville;
    }

    public function setVille($ville)
    {
        $this->_ville = $ville;

    }
}