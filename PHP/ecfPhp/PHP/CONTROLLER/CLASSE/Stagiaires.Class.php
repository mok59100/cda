<?php

class Stagiaires 
{

	/*****************Attributs***************** */

	private $_idStagiaire;
	private $_nom;
	private $_prenom;
	private static $_attributes=["idStagiaire","nom","prenom"];
	/***************** Accesseurs ***************** */


	public function getIdStagiaire()
	{
		return $this->_idStagiaire;
	}

	public function setIdStagiaire(int $idStagiaire)
	{
		$this->_idStagiaire=$idStagiaire;
	}

	public function getNom()
	{
		return $this->_nom;
	}

	public function setNom(string $nom)
	{
		$this->_nom=$nom;
	}

	public function getPrenom()
	{
		return $this->_prenom;
	}

	public function setPrenom(string $prenom)
	{
		$this->_prenom=$prenom;
	}

	public static function getAttributes()
	{
		return self::$_attributes;
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
 		foreach ($data as $key => $value)
		{
 			$methode = "set".ucfirst($key); //ucfirst met la 1ere lettre en majuscule
			if (is_callable(([$this, $methode]))) // is_callable verifie que la methode existe
			{
				$this->$methode($value===""?null:$value);
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
		return "IdStagiaire : ".$this->getIdStagiaire()."Nom : ".$this->getNom()."Prenom : ".$this->getPrenom()."\n";
	}
}