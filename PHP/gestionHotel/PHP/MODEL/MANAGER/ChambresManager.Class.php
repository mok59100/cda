<?php

class ChambresManager 
{
	public static function add(Chambres $obj)
	{
 		$db=DbConnect::getDb();
		$q=$db->prepare("INSERT INTO Chambres (typeChambre,capaciteChambre,numChambre,idHotel) VALUES (:typeChambre,capaciteChambre,numChambre,idHotel)");
		$q->bindValue(":typeChambre", $obj->getTypeChambre());
        $q->bindValue(":capaciteChambre", $obj->getCapaciteChambre());
        $q->bindValue(":numChambre", $obj->getNumChambre());
        $q->bindValue(":idHotel", $obj->getIdHotel());
        $q->execute();
	}

	public static function update(Chambres $obj)
	{
 		$db=DbConnect::getDb();
		$q=$db->prepare("UPDATE Chambres SET typeChambre=:typeChambre,capaciteChambre=:capaciteChambre,numChambre=:numChambre,idHotel=:idHotel WHERE idChambre=:idChambre");
		$q->bindValue(":typeChambre", $obj->getTypeChambre());
		$q->bindValue(":capaciteChambre", $obj->getCapaciteChambre());
        $q->bindValue(":numChambre", $obj->getNumChambre());
        $q->bindValue(":idHotel", $obj->getIdHotel());
        $q->bindValue(":idChambre", $obj->getIdChambre());
		$q->execute();
	}
	public static function delete(Chambres $obj)
	{
 		$db=DbConnect::getDb();
		$db->exec("DELETE FROM Chambres WHERE idChambre=" .$obj->getIdChambre());
	}
	public static function findById($id)
	{
 		$db=DbConnect::getDb();
		$id = (int) $id;
		$q=$db->query("SELECT * FROM Chambres WHERE idChambre =".$id);
		$results = $q->fetch(PDO::FETCH_ASSOC);
		if($results != false)
		{
			return new Chambres($results);
		}
		else
		{
			return false;
		}
	}
	public static function getList()
	{
 		$db=DbConnect::getDb();
		$liste = [];
		$q = $db->query("SELECT * FROM Chambres");
		while($donnees = $q->fetch(PDO::FETCH_ASSOC))
		{
			if($donnees != false)
			{
				$liste[] = new Chambres($donnees);
			}
		}
		return $liste;
	}
    public static function getListByHotel($idHotel)
    {
        $idHotel=(int) $idHotel;
        $db = DbConnect::getDb();
        $liste = [];
        $q = $db->query("SELECT * FROM Chambres where idHotel=$idHotel");
        while ($donnees = $q->fetch(PDO::FETCH_ASSOC))
        {
            if ($donnees != false)
            {
                $liste[] = new Chambres($donnees);
            }
        }
        return $liste;  // tableau contenant les objets Produits
    }
}
