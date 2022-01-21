<?php

class Voitures 
{

	/*****************Attributs***************** */

	private $_IdVoiture;
	private $_Marque;
	private $_Modele;
	private $_IdAgence;
	private static $_attributes=["IdVoiture","Marque","Modele","IdAgence"];
	/***************** Accesseurs ***************** */


	public function getIdVoiture()
	{
		return $this->_IdVoiture;
	}

	public function setIdVoiture(int $IdVoiture)
	{
		$this->_IdVoiture=$IdVoiture;
	}

	public function getMarque()
	{
		return $this->_Marque;
	}

	public function setMarque(?string $Marque)
	{
		$this->_Marque=$Marque;
	}

	public function getModele()
	{
		return $this->_Modele;
	}

	public function setModele(?string $Modele)
	{
		$this->_Modele=$Modele;
	}

	public function getIdAgence()
	{
		return $this->_IdAgence;
	}

	public function setIdAgence(int $IdAgence)
	{
		$this->_IdAgence=$IdAgence;
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
		return "IdVoiture : ".$this->getIdVoiture()."Marque : ".$this->getMarque()."Modele : ".$this->getModele()."IdAgence : ".$this->getIdAgence()."\n";
	}
}