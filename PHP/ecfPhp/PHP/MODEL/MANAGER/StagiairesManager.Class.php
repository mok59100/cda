<?php

class StagiairesManager 
{

	public static function add(Stagiaires $obj)
	{
 		return DAO::add($obj);
	}

	public static function update(Stagiaires $obj)
	{
 		return DAO::update($obj);
	}

	public static function delete(Stagiaires $obj)
	{
 		return DAO::delete($obj);
	}

	public static function findById($id)
	{
 		return DAO::select(Stagiaires::getAttributes(),"Stagiaires",["idStagiaire" => $id])[0];
	}

	public static function getList(array $nomColonnes=null,  array $conditions = null, string $orderBy = null, string $limit = null, bool $api = false, bool $debug = false)
	{
 		$nomColonnes = ($nomColonnes==null)?Stagiaires::getAttributes():$nomColonnes;
		return DAO::select($nomColonnes,"Stagiaires",   $conditions ,  $orderBy,  $limit ,  $api,  $debug );	}
}