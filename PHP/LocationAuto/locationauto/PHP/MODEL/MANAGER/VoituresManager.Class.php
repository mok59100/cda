<?php

class VoituresManager 
{

	public static function add(Voitures $obj)
	{
 		return DAO::add($obj);
	}

	public static function update(Voitures $obj)
	{
 		return DAO::update($obj);
	}

	public static function delete(Voitures $obj)
	{
 		return DAO::delete($obj);
	}

	public static function findById($id)
	{
 		return DAO::select(Voitures::getAttributes(),"Voitures",["IdVoiture" => $id])[0];
	}

	public static function getList(array $nomColonnes=null,  array $conditions = null, string $orderBy = null, string $limit = null, bool $api = false, bool $debug = false)
	{
 		$nomColonnes = ($nomColonnes==null)?Voitures::getAttributes():$nomColonnes;
		return DAO::select($nomColonnes,"Voitures",   $conditions ,  $orderBy,  $limit ,  $api,  $debug );	}
}