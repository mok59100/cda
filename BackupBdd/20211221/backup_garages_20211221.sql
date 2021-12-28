-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: garages
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
-- Current Database: `garages`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `garages` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `garages`;

--
-- Table structure for table `automobiles`
--

DROP TABLE IF EXISTS `automobiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automobiles` (
  `IdAuto` int(11) NOT NULL AUTO_INCREMENT,
  `IdProprio` int(11) NOT NULL,
  `Marque` varchar(50) NOT NULL,
  `Modele` varchar(50) NOT NULL,
  `AnneeConstruction` date NOT NULL,
  PRIMARY KEY (`IdAuto`),
  KEY `FK_Auto_Prop` (`IdProprio`),
  CONSTRAINT `FK_Auto_Prop` FOREIGN KEY (`IdProprio`) REFERENCES `proprietaires` (`IdProprio`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automobiles`
--

LOCK TABLES `automobiles` WRITE;
/*!40000 ALTER TABLE `automobiles` DISABLE KEYS */;
INSERT INTO `automobiles` VALUES (1,1,'peugeot','206','2006-09-24'),(2,2,'renault','clio','2003-09-25'),(3,1,'peugeot','306','2021-11-02'),(4,2,'bmw','320','2021-11-30'),(5,1,'bmw','525i','2021-11-30'),(6,1,'marcq','alain','2021-11-30'),(7,1,'ford','escort','2021-11-30'),(8,1,'ford','escort','2021-11-30'),(9,1,'a','a','2021-11-30');
/*!40000 ALTER TABLE `automobiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proprietaires`
--

DROP TABLE IF EXISTS `proprietaires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proprietaires` (
  `IdProprio` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  PRIMARY KEY (`IdProprio`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proprietaires`
--

LOCK TABLES `proprietaires` WRITE;
/*!40000 ALTER TABLE `proprietaires` DISABLE KEYS */;
INSERT INTO `proprietaires` VALUES (1,'pieer','quentin','saint omer afpa'),(2,'z','z','z'),(5,'charles','patrick','rue de toulds lille'),(6,'w','w','w'),(7,'e','e','e');
/*!40000 ALTER TABLE `proprietaires` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-21 17:25:16
