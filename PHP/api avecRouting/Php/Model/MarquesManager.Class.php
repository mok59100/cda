<?php

class MarquesManager
{
	  
	static public function add(marques $perso)
	{
		$db = DbConnect::getDb(); // Instance de PDO.
		// Pr�paration de la requ�te d'insertion.
		$q = $db->prepare('INSERT INTO marques(nom, prenom, codePostal, adresse, ville) VALUES(:nom, :prenom, :codePostal, :adresse, :ville)');
		
		// Assignation des valeurs pour le nom, le pr�nom.
		$q->bindValue(':nom', $perso->getNom());
		$q->bindValue(':prenom', $perso->getPrenom());
		$q->bindValue(':adresse', $perso->getAdresse());
		$q->bindValue(':ville', $perso->getVille());
		$q->bindValue(':codePostal', $perso->getCodePostal());
		
		// Ex�cution de la requ�te.
		$q->execute();
		
	}
	
	static public function delete(marques $perso)
	{
		$db = DbConnect::getDb(); // Instance de PDO.
		// Ex�cute une requ�te de type DELETE.
		$db->exec('DELETE FROM marques WHERE id = '.$perso->getId());
	}
	
	static public function getById($id)
	{
		$db = DbConnect::getDb(); // Instance de PDO.
		// Ex�cute une requ�te de type SELECT avec une clause WHERE, et retourne un objet marque.
		$id = (int) $id;
		
		$q = $db->query('SELECT id, nom, prenom, codePostal, adresse, ville FROM marques WHERE id = '.$id);
		$donnees = $q->fetch(PDO::FETCH_ASSOC);
		
		return new marques($donnees);
	}
	/**
	 * Si API = True on renvoi un tableau asociatif
	 * sinon on renvoi un tableau de marques
	 */
	static public function getList($api)
	{
		$db = DbConnect::getDb(); // Instance de PDO.
		// Retourne la liste de tous les marques.
		
		$q = $db->query('SELECT id, nom, prenom, codePostal, adresse, ville FROM marques ORDER BY nom');
		
		while ($donnees = $q->fetch(PDO::FETCH_ASSOC))
		{
			$persos[] = new marques($donnees);
			$json[]=$donnees;
		}
		if (!$api)   		return $persos;
		return $json;
	}
	
	
	static public function update(marques $perso)
	{
		$db = DbConnect::getDb(); // Instance de PDO.
		// Pr�pare une requ�te de type UPDATE.
		$q = $db->prepare('UPDATE marques SET nom=:nom, prenom=:prenom ,codePostal=:codePostal, adresse=:adresse, ville=:ville WHERE id = :id');
		
		// Assignation des valeurs � la requ�te.
		$q->bindValue(':nom', $perso->getNom());
		$q->bindValue(':prenom', $perso->getPrenom());
		$q->bindValue(':id', $perso->getId());
		$q->bindValue(':adresse', $perso->getAdresse());
		$q->bindValue(':ville', $perso->getVille());
		$q->bindValue(':codePostal', $perso->getCodePostal());
		
		// Ex�cution de la requ�te.
		$q->execute();
	}
	
	static public function count()
	{
		$db = DbConnect::getDb(); // Instance de PDO.
		// Retourne la liste de tous les marques.
		
		$q = $db->query('SELECT count(*) as nb FROM marques');
		
		$donnees = $q->fetch(PDO::FETCH_ASSOC);
		
		return $donnees;
	}
	
}