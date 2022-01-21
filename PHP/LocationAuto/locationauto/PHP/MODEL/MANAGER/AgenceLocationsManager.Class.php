<?php

class AgenceLocationsManager 
{

	public static function add(AgenceLocations $obj)
	{
 		return DAO::add($obj);
	}

	public static function update(AgenceLocations $obj)
	{
 		return DAO::update($obj);
	}

	public static function delete(AgenceLocations $obj)
	{
 		return DAO::delete($obj);
	}

	public static function findById($id)
	{
 		return DAO::select(AgenceLocations::getAttributes(),"AgenceLocations",["IdAgence" => $id])[0];
	}

	public static function getList(array $nomColonnes=null,  array $conditions = null, string $orderBy = null, string $limit = null, bool $api = false, bool $debug = false)
	{
 		$nomColonnes = ($nomColonnes==null)?AgenceLocations::getAttributes():$nomColonnes;
		return DAO::select($nomColonnes,"AgenceLocations",   $conditions ,  $orderBy,  $limit ,  $api,  $debug );	}
}