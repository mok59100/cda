-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: gestion_hotels
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `gestion_hotels`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `gestion_hotels` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gestion_hotels`;

--
-- Table structure for table `chambres`
--

DROP TABLE IF EXISTS `chambres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chambres` (
  `IdChambre` int(11) NOT NULL AUTO_INCREMENT,
  `numChambre` int(11) NOT NULL,
  `typeChambre` int(11) NOT NULL,
  `capaciteChambre` int(11) NOT NULL,
  `idHotel` int(11) NOT NULL,
  PRIMARY KEY (`IdChambre`),
  KEY `FK_Chambres_idHotel` (`idHotel`),
  CONSTRAINT `FK_Chambres_idHotel` FOREIGN KEY (`idHotel`) REFERENCES `hotels` (`idHotel`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chambres`
--

LOCK TABLES `chambres` WRITE;
/*!40000 ALTER TABLE `chambres` DISABLE KEYS */;
INSERT INTO `chambres` VALUES (1,101,1,1,1),(2,102,1,2,1),(3,103,1,1,1),(4,104,1,2,2),(5,105,1,2,2),(6,106,1,1,2),(7,107,1,3,3),(8,108,1,1,3),(9,109,1,2,3),(10,235,1,1,4),(11,157,1,1,4),(12,874,1,1,7),(13,125,1,5,7),(14,101,1,3,6),(15,102,1,3,6),(16,103,1,2,10),(17,104,1,3,15),(18,105,1,3,6),(19,106,1,1,15),(20,107,1,1,11),(21,108,1,2,13),(22,109,1,2,10),(23,235,1,3,12),(24,157,1,1,11),(25,874,1,2,7),(26,125,1,1,9),(27,101,1,3,8),(28,102,1,3,15),(29,103,1,1,11),(30,104,1,1,11),(31,105,1,1,13),(32,106,1,2,15),(33,107,1,2,12),(34,108,1,1,9),(35,109,1,3,13),(36,235,1,3,8),(37,157,1,3,14),(38,874,1,1,8),(39,125,1,2,10);
/*!40000 ALTER TABLE `chambres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `nomClient` varchar(25) NOT NULL,
  `prenomClient` varchar(25) NOT NULL,
  `adresseClient` varchar(250) NOT NULL,
  `villeClient` varchar(25) NOT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'DOE','John','Rue Du General Leclerc','Chatenay Malabry'),(2,'HOMME','Josh','Rue Danton','Palm Desert'),(3,'PAUL','Weller','Rue Hoche','Londres'),(4,'WHITE','Jack','Allee Gustave Eiffel','Detroit'),(5,'CLAYPOOL','Les','Rue Jean Pierre Timbaud','San Francisco'),(6,'SQUIRE','Chris','Place Paul Vaillant Couturier','Londres'),(7,'WOOD','Ronnie','Rue Erevan','Londres'),(8,'THUNDERS','Johnny','Rue Du General Leclerc','New York'),(9,'JEUNEMAITRE','Eric','Rue Du General Leclerc','Chaville'),(10,'KARAM','Patrick','Rue Danton','Courbevoie'),(11,'RUFET','Corinne','Rue Hoche','Le Plessis Robinson'),(12,'SAINT JUST ','Wallerand','Allee Gustave Eiffel','Marnes La Coquette'),(13,'SANTINI','Jean-Luc','Rue Jean Pierre Timbaud','Chatenay Malabry'),(14,'AIT','Eddie','Place Paul Vaillant Couturier','Le Plessis Robinson'),(15,'BARBOTIN','Eddie','Rue Erevan','Chatenay Malabry'),(16,'BERESSI','Isabelle','Rue Du General Leclerc','Londres'),(17,'CAMARA','Lamine','Rue Ernest Renan','Antony'),(18,'CECCONI','Frank','Rue Georges Marie','Chatenay Malabry'),(19,'CHEVRON','Eric','Boulevard Gallieni','Suresnes'),(20,'CIUNTU','Marie-Carole','Esplanade Du Belvedere','Meudon');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotels` (
  `idHotel` int(11) NOT NULL AUTO_INCREMENT,
  `nomHotel` varchar(25) NOT NULL,
  `categorieHotel` int(11) NOT NULL,
  `adresseHotel` varchar(25) NOT NULL,
  `villeHotel` varchar(25) NOT NULL,
  `idStation` int(11) NOT NULL,
  PRIMARY KEY (`idHotel`),
  KEY `FK_Hotels_idStation` (`idStation`),
  CONSTRAINT `FK_Hotels_idStation` FOREIGN KEY (`idStation`) REFERENCES `stations` (`idStation`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (1,'Le Magnifique',3,'rue du bas','Pralo',1),(2,'Hotel du haut',1,'rue du haut','Pralo',1),(3,'Le Narval',3,'place de la liberation','Vonten',2),(4,'Les Pissenlis',4,'place du 14 juillet','Bretou',2),(5,'RR Hotel',5,'place du bas','Bretou',2),(6,'La Brique',2,'place du haut','Bretou',2),(7,'Le Beau Rivage',3,'place du centre','Toras',3),(8,'Résidence les marmottes',1,'1 Chemin des randonneurs','Alpe d Huez',6),(9,'Résidence les edelweiss',5,'2 Rue des sapins','Areches',2),(10,'Résidence les panoramas',4,'7 Avenue de la neige','Beaufort',2),(11,'Résidence les sapins',5,'8 Chemin des pissenlits','Aussois',4),(12,'Chalets les marmottes',3,'10 Rue des etables','Avoriaz',3),(13,'Chalets les edelweiss',3,'8 Avenue des sapins','Alpe d Huez',8),(14,'Chalets les panoramas',2,'3 Chemin de la neige','Areches',6),(15,'Chalets les sapins',5,'3 Rue des pissenlits','Beaufort',8);
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservations` (
  `idReservation` int(11) NOT NULL AUTO_INCREMENT,
  `dateReservationSejour` date NOT NULL,
  `dateDebutSejour` date NOT NULL,
  `dateFinSejour` date NOT NULL,
  `prixSejour` int(11) NOT NULL,
  `arrhesSejour` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `IdChambre` int(11) NOT NULL,
  PRIMARY KEY (`idReservation`),
  KEY `FK_reservation_idClient` (`idClient`),
  KEY `FK_reservation_IdChambre` (`IdChambre`),
  CONSTRAINT `FK_reservation_IdChambre` FOREIGN KEY (`IdChambre`) REFERENCES `chambres` (`IdChambre`),
  CONSTRAINT `FK_reservation_idClient` FOREIGN KEY (`idClient`) REFERENCES `clients` (`idClient`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (3,'2009-05-01','2009-07-01','2009-07-31',2400,800,1,1),(4,'2009-07-01','2009-08-01','2009-07-31',400,50,3,1),(5,'2009-06-01','2009-07-01','2009-07-31',3400,100,2,2),(6,'2009-08-01','2009-08-01','2009-07-31',7200,1800,4,2),(7,'2009-09-01','2009-07-01','2009-07-31',1400,450,5,3),(8,'2009-05-10','2009-08-01','2009-08-31',2400,780,6,4),(9,'2009-06-26','2009-07-01','2009-07-31',500,80,6,4),(10,'2009-07-09','2009-09-01','2009-09-22',40,0,8,4),(11,'2009-06-09','2009-07-20','2009-08-04',580,58,15,8),(12,'2009-06-04','2009-09-17','2009-10-02',140,14,17,9),(13,'2009-06-03','2009-08-20','2009-09-04',360,36,15,8),(14,'2009-05-19','2009-08-09','2009-08-24',1380,138,20,4),(15,'2009-06-15','2009-08-05','2009-08-20',420,42,16,13),(16,'2009-05-26','2009-07-03','2009-07-18',360,36,16,13),(17,'2009-05-20','2009-09-24','2009-10-09',680,68,1,12),(18,'2009-06-16','2009-09-14','2009-09-29',1280,128,15,21),(19,'2009-05-31','2009-09-16','2009-10-01',420,42,19,14),(20,'2009-06-06','2009-08-28','2009-09-12',260,26,12,24),(21,'2009-06-08','2009-09-08','2009-09-23',1380,138,9,12),(22,'2009-06-11','2009-09-27','2009-10-12',1430,143,12,4),(23,'2009-05-24','2009-09-05','2009-09-20',820,82,1,23),(24,'2009-05-14','2009-08-17','2009-09-01',650,65,11,10),(25,'2009-05-26','2009-07-23','2009-08-07',1290,129,14,20),(26,'2009-06-09','2009-07-27','2009-08-11',1030,103,19,15),(27,'2009-06-01','2009-09-04','2009-09-19',470,47,17,17),(28,'2009-05-09','2009-07-18','2009-08-02',1460,146,16,14),(29,'2009-06-09','2009-09-21','2009-10-06',1310,131,6,21),(30,'2009-05-23','2009-08-12','2009-08-27',460,46,9,20),(31,'2009-05-06','2009-08-09','2009-08-24',350,35,17,18),(32,'2009-05-15','2009-09-02','2009-09-17',890,89,14,23),(33,'2009-05-23','2009-09-02','2009-09-17',1440,144,14,12),(34,'2009-06-12','2009-08-02','2009-08-17',1010,101,17,19),(35,'2009-05-12','2009-07-02','2009-07-17',790,79,13,16),(36,'2009-06-01','2009-06-28','2009-07-13',270,27,5,2),(37,'2009-05-15','2009-08-07','2009-08-22',660,66,19,19),(38,'2009-06-13','2009-09-28','2009-10-13',140,14,13,4),(39,'2009-06-03','2009-08-06','2009-08-21',1460,146,14,19),(40,'2009-05-10','2009-09-13','2009-09-28',790,79,6,4),(41,'2009-05-19','2009-09-10','2009-09-25',390,39,15,20);
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stations`
--

DROP TABLE IF EXISTS `stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stations` (
  `idStation` int(11) NOT NULL AUTO_INCREMENT,
  `nomStation` varchar(25) NOT NULL,
  `altitudeStation` int(11) NOT NULL,
  PRIMARY KEY (`idStation`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stations`
--

LOCK TABLES `stations` WRITE;
/*!40000 ALTER TABLE `stations` DISABLE KEYS */;
INSERT INTO `stations` VALUES (1,'La Montagne',2500),(2,'Le Sud',200),(3,'La Plage',10),(4,'Alpe d Huez',1860),(5,'Areches',1200),(6,'Beaufort',1200),(7,'Aussois',1500),(8,'Avoriaz',1800);
/*!40000 ALTER TABLE `stations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-17 17:20:35
