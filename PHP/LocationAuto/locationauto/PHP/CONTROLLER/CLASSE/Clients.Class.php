<?php

class Clients 
{

	/*****************Attributs***************** */

	private $_IdClient;
	private $_Nom;
	private $_Prenom;
	private $_Adresse;
	private $_NumTelephone;
	private static $_attributes=["IdClient","Nom","Prenom","Adresse","NumTelephone"];
	/***************** Accesseurs ***************** */


	public function getIdClient()
	{
		return $this->_IdClient;
	}

	public function setIdClient(int $IdClient)
	{
		$this->_IdClient=$IdClient;
	}

	public function getNom()
	{
		return $this->_Nom;
	}

	public function setNom(?string $Nom)
	{
		$this->_Nom=$Nom;
	}

	public function getPrenom()
	{
		return $this->_Prenom;
	}

	public function setPrenom(?string $Prenom)
	{
		$this->_Prenom=$Prenom;
	}

	public function getAdresse()
	{
		return $this->_Adresse;
	}

	public function setAdresse(?string $Adresse)
	{
		$this->_Adresse=$Adresse;
	}

	public function getNumTelephone()
	{
		return $this->_NumTelephone;
	}

	public function setNumTelephone(?int $NumTelephone)
	{
		$this->_NumTelephone=$NumTelephone;
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
		return "IdClient : ".$this->getIdClient()."Nom : ".$this->getNom()."Prenom : ".$this->getPrenom()."Adresse : ".$this->getAdresse()."NumTelephone : ".$this->getNumTelephone()."\n";
	}
}