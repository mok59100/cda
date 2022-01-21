<?php

class AgenceLocations 
{

	/*****************Attributs***************** */

	private $_IdAgence;
	private $_NomGerant;
	private $_Adresse;
	private $_NumeroTelephone;
	private static $_attributes=["IdAgence","NomGerant","Adresse","NumeroTelephone"];
	/***************** Accesseurs ***************** */


	public function getIdAgence()
	{
		return $this->_IdAgence;
	}

	public function setIdAgence(int $IdAgence)
	{
		$this->_IdAgence=$IdAgence;
	}

	public function getNomGerant()
	{
		return $this->_NomGerant;
	}

	public function setNomGerant(?string $NomGerant)
	{
		$this->_NomGerant=$NomGerant;
	}

	public function getAdresse()
	{
		return $this->_Adresse;
	}

	public function setAdresse(?string $Adresse)
	{
		$this->_Adresse=$Adresse;
	}

	public function getNumeroTelephone()
	{
		return $this->_NumeroTelephone;
	}

	public function setNumeroTelephone(?int $NumeroTelephone)
	{
		$this->_NumeroTelephone=$NumeroTelephone;
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
		return "IdAgence : ".$this->getIdAgence()."NomGerant : ".$this->getNomGerant()."Adresse : ".$this->getAdresse()."NumeroTelephone : ".$this->getNumeroTelephone()."\n";
	}
}