<?php

class ModelesManager 
{

	public static function add(Modeles $obj)
	{
 		return DAO::add($obj);
	}

	public static function update(Modeles $obj)
	{
 		return DAO::update($obj);
	}

	public static function delete(Modeles $obj)
	{
 		return DAO::delete($obj);
	}

	public static function findById($id)
	{
 		return DAO::select(Modeles::getAttributes(),"Modeles",["mod_id" => $id])[0];
	}

	public static function getList(array $nomColonnes=null,  array $conditions = null, string $orderBy = null, string $limit = null, bool $api = false, bool $debug = false)
	{
 		$nomColonnes = ($nomColonnes==null)?Modeles::getAttributes():$nomColonnes;
		return DAO::select($nomColonnes,"Modeles",   $conditions ,  $orderBy,  $limit ,  $api,  $debug );	}
}