<?php

class Modeles 
{

	/*****************Attributs***************** */

	private $_mod_id;
	private $_mod_mar_id;
	private $_mod_nom;
	private $_mod_cylindree;
	private $_mod_prix;
	private $_mod_date_dispo;
	private $_mod_date_ajout;
	private static $_attributes=["mod_id","mod_mar_id","mod_nom","mod_cylindree","mod_prix","mod_date_dispo","mod_date_ajout"];
	/***************** Accesseurs ***************** */


	public function getMod_id()
	{
		return $this->_mod_id;
	}

	public function setMod_id(int $mod_id)
	{
		$this->_mod_id=$mod_id;
	}

	public function getMod_mar_id()
	{
		return $this->_mod_mar_id;
	}

	public function setMod_mar_id(int $mod_mar_id)
	{
		$this->_mod_mar_id=$mod_mar_id;
	}

	public function getMod_nom()
	{
		return $this->_mod_nom;
	}

	public function setMod_nom(string $mod_nom)
	{
		$this->_mod_nom=$mod_nom;
	}

	public function getMod_cylindree()
	{
		return $this->_mod_cylindree;
	}

	public function setMod_cylindree(float $mod_cylindree)
	{
		$this->_mod_cylindree=$mod_cylindree;
	}

	public function getMod_prix()
	{
		return $this->_mod_prix;
	}

	public function setMod_prix(int $mod_prix)
	{
		$this->_mod_prix=$mod_prix;
	}

	public function getMod_date_dispo()
	{
		return is_null($this->_mod_date_dispo)?null:$this->_mod_date_dispo->format('Y-n-j');
	}

	public function setMod_date_dispo(?string $mod_date_dispo)
	{
		$this->_mod_date_dispo=is_null($mod_date_dispo)?null:DateTime::createFromFormat("Y-n-j",$mod_date_dispo);
	}

	public function getMod_date_ajout()
	{
		return is_null($this->_mod_date_ajout)?null:$this->_mod_date_ajout->format('Y-n-j');
	}

	public function setMod_date_ajout(?string $mod_date_ajout)
	{
		$this->_mod_date_ajout=is_null($mod_date_ajout)?null:DateTime::createFromFormat("Y-n-j",$mod_date_ajout);
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
		return "Mod_id : ".$this->getMod_id()."Mod_mar_id : ".$this->getMod_mar_id()."Mod_nom : ".$this->getMod_nom()."Mod_cylindree : ".$this->getMod_cylindree()."Mod_prix : ".$this->getMod_prix()."Mod_date_dispo : ".$this->getMod_date_dispo()."Mod_date_ajout : ".$this->getMod_date_ajout()."\n";
	}
}