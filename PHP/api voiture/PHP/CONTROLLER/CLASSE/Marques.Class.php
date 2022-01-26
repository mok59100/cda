<?php

class Marques 
{

	/*****************Attributs***************** */

	private $_mar_id;
	private $_mar_nom;
	private static $_attributes=["mar_id","mar_nom"];
	/***************** Accesseurs ***************** */


	public function getMar_id()
	{
		return $this->_mar_id;
	}

	public function setMar_id(int $mar_id)
	{
		$this->_mar_id=$mar_id;
	}

	public function getMar_nom()
	{
		return $this->_mar_nom;
	}

	public function setMar_nom(string $mar_nom)
	{
		$this->_mar_nom=$mar_nom;
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
		return "Mar_id : ".$this->getMar_id()."Mar_nom : ".$this->getMar_nom()."\n";
	}
}