<?php

class Modeles_options 
{

	/*****************Attributs***************** */

	private $_om_id;
	private $_om_mod_id;
	private $_om_opt_id;
	private static $_attributes=["om_id","om_mod_id","om_opt_id"];
	/***************** Accesseurs ***************** */


	public function getOm_id()
	{
		return $this->_om_id;
	}

	public function setOm_id(int $om_id)
	{
		$this->_om_id=$om_id;
	}

	public function getOm_mod_id()
	{
		return $this->_om_mod_id;
	}

	public function setOm_mod_id(int $om_mod_id)
	{
		$this->_om_mod_id=$om_mod_id;
	}

	public function getOm_opt_id()
	{
		return $this->_om_opt_id;
	}

	public function setOm_opt_id(int $om_opt_id)
	{
		$this->_om_opt_id=$om_opt_id;
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
		return "Om_id : ".$this->getOm_id()."Om_mod_id : ".$this->getOm_mod_id()."Om_opt_id : ".$this->getOm_opt_id()."\n";
	}
}