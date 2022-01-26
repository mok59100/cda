<?php

class OptionsManager 
{

	public static function add(Options $obj)
	{
 		return DAO::add($obj);
	}

	public static function update(Options $obj)
	{
 		return DAO::update($obj);
	}

	public static function delete(Options $obj)
	{
 		return DAO::delete($obj);
	}

	public static function findById($id)
	{
 		return DAO::select(Options::getAttributes(),"Options",["opt_id" => $id])[0];
	}

	public static function getList(array $nomColonnes=null,  array $conditions = null, string $orderBy = null, string $limit = null, bool $api = false, bool $debug = false)
	{
 		$nomColonnes = ($nomColonnes==null)?Options::getAttributes():$nomColonnes;
		return DAO::select($nomColonnes,"Options",   $conditions ,  $orderBy,  $limit ,  $api,  $debug );	}
}