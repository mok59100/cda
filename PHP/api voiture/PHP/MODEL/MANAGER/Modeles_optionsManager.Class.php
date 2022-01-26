<?php

class Modeles_optionsManager 
{

	public static function add(Modeles_options $obj)
	{
 		return DAO::add($obj);
	}

	public static function update(Modeles_options $obj)
	{
 		return DAO::update($obj);
	}

	public static function delete(Modeles_options $obj)
	{
 		return DAO::delete($obj);
	}

	public static function findById($id)
	{
 		return DAO::select(Modeles_options::getAttributes(),"Modeles_options",["om_id" => $id])[0];
	}

	public static function getList(array $nomColonnes=null,  array $conditions = null, string $orderBy = null, string $limit = null, bool $api = false, bool $debug = false)
	{
 		$nomColonnes = ($nomColonnes==null)?Modeles_options::getAttributes():$nomColonnes;
		return DAO::select($nomColonnes,"Modeles_options",   $conditions ,  $orderBy,  $limit ,  $api,  $debug );	}
}