-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: locationauto
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
-- Current Database: `locationauto`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `locationauto` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `locationauto`;

--
-- Table structure for table `agencelocations`
--

DROP TABLE IF EXISTS `agencelocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agencelocations` (
  `IdAgence` int(11) NOT NULL AUTO_INCREMENT,
  `NomGerant` varchar(50) DEFAULT NULL,
  `Adresse` varchar(50) DEFAULT NULL,
  `NumeroTelephone` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdAgence`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agencelocations`
--

LOCK TABLES `agencelocations` WRITE;
/*!40000 ALTER TABLE `agencelocations` DISABLE KEYS */;
INSERT INTO `agencelocations` VALUES (1,'Parvis','255 rue de la rose paris',622336655),(2,'courpis','98 boulevard du general de gaulle paris',611223344),(3,'string','string',0),(4,'string','string',0);
/*!40000 ALTER TABLE `agencelocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `IdClient` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) DEFAULT NULL,
  `Prenom` varchar(50) DEFAULT NULL,
  `Adresse` varchar(50) DEFAULT NULL,
  `NumTelephone` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdClient`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'marie','pierre','200 allee des lillas paris',611778899),(2,'carpro','pierre','98 boulevard du general de gaulle paris',302010422),(3,'david ','vincent','44444rue de la rose paris',108040912),(4,'robert','henry','1 rue de la besace lille',320202014);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `idLocation` int(11) NOT NULL AUTO_INCREMENT,
  `IdClient` int(11) DEFAULT NULL,
  `IdVoiture` int(11) DEFAULT NULL,
  `DateDeLocation` date DEFAULT NULL,
  `KilometrageSorti` int(11) DEFAULT NULL,
  PRIMARY KEY (`idLocation`),
  KEY `FK_Location_Clients` (`IdClient`),
  KEY `FK_Location_Voitures` (`IdVoiture`),
  CONSTRAINT `FK_Location_Clients` FOREIGN KEY (`IdClient`) REFERENCES `clients` (`IdClient`),
  CONSTRAINT `FK_Location_Voitures` FOREIGN KEY (`IdVoiture`) REFERENCES `voitures` (`IdVoiture`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,2,1,'2021-12-26',12500),(2,1,2,'2021-12-01',45213),(3,1,5,'2021-12-26',850),(4,3,3,'2021-12-06',88521);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voitures`
--

DROP TABLE IF EXISTS `voitures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voitures` (
  `IdVoiture` int(11) NOT NULL AUTO_INCREMENT,
  `Marque` varchar(50) DEFAULT NULL,
  `Modele` varchar(50) DEFAULT NULL,
  `IdAgence` int(11) NOT NULL,
  PRIMARY KEY (`IdVoiture`),
  KEY `FK_Voitures_AgenceLocations` (`IdAgence`),
  CONSTRAINT `FK_Voitures_AgenceLocations` FOREIGN KEY (`IdAgence`) REFERENCES `agencelocations` (`IdAgence`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voitures`
--

LOCK TABLES `voitures` WRITE;
/*!40000 ALTER TABLE `voitures` DISABLE KEYS */;
INSERT INTO `voitures` VALUES (1,'peugeot','206',2),(2,'volvo','340gte',1),(3,'bmw','328i',2),(4,'renault','megane',2),(5,'bmw','i3',1),(6,'renault','kagdar',1);
/*!40000 ALTER TABLE `voitures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-22 17:25:16
