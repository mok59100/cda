<?php
class HotelsManager
{
    public static function add(Hotels $obj)
    {
        $db = DbConnect::getDb();
        $q = $db->prepare("INSERT INTO Hotels (nomHotel,categorieHotel,adresseHotel,villeHotel) VALUES (:nomHotel,:categorieHotel,:adresseHotel,:villeHotel)");
        $q->bindValue(":nomHotel", $obj->getNomHotel());
        $q->bindValue(":categorieHotel", $obj->getCategorieHotel());
        $q->bindValue(":adresseHotel", $obj->getAdresseHotel());
        $q->bindValue(":villeHotel", $obj->getVilleHotel());
        $q->execute();
    }

    public static function update(Hotels $obj)
    {
        $db = DbConnect::getDb();
        $q = $db->prepare("UPDATE Hotels SET nomHotel=:nomHotel, categorieHotel=:categorieHotel, adresseHotel=:adresseHotel, villeHotel=:villeHotel WHERE idHotel=:idHotel");
        $q->bindValue(":nomHotel", $obj->getNomHotel());
        $q->bindValue(":categorieHotel", $obj->getCategorieHotel());
        $q->bindValue(":adresseHotel", $obj->getAdresseHotel());
        $q->bindValue(":villeHotel", $obj->getVilleHotel());
        $q->bindValue(":idHotel", $obj->getIdHotel());
        $q->execute();
    }

    public static function delete(Hotels $obj)
    {
        $db = DbConnect::getDb();
        $db->exec("DELETE FROM Hotels WHERE idHotel=" . $obj->getIdHotel());
    }

    public static function findById($id)
    {
        $db = DbConnect::getDb();
        $id = (int) $id;  // on verifie que id est numerique, evite l'injection SQL
        $q = $db->query("SELECT * FROM Hotels WHERE idHotel=".$id);
        $results = $q->fetch(PDO::FETCH_ASSOC);
        if ($results != false)
        {
            return new Hotels($results);
        }
        else
        {
            return false;
        }
    }

    public static function getList()
    {
        $db = DbConnect::getDb();
        $liste = [];
        $q = $db->query("SELECT * FROM Hotels");
        while ($donnees = $q->fetch(PDO::FETCH_ASSOC))
        {
            if ($donnees != false)
            {
                $liste[] = new Hotels($donnees);
            }
        }
        return $liste;  // tableau contenant les objets Hotels
    }

   
}
