-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: gestionstocks
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
-- Current Database: `gestionstocks`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `gestionstocks` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gestionstocks`;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `IdArticle` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleArticle` varchar(100) DEFAULT NULL,
  `QuantiteStockee` int(11) DEFAULT NULL,
  `IdCategorie` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdArticle`),
  KEY `FK_Articles_Categories` (`IdCategorie`),
  CONSTRAINT `FK_Articles_Categories` FOREIGN KEY (`IdCategorie`) REFERENCES `categories` (`IdCategorie`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (2,'saumon en tranche',250,1),(3,'papier canson',500,2),(4,'stylo bleu bic',250,3),(5,'riz en sachet',1,4),(6,'croissant pur beurre',300,5),(7,'tournevis plat',10,6),(8,'verre a cafe',250,7),(9,'filet de bar',1,8),(10,'truite',250,9),(11,'baguette',250,10),(12,'tarte aux fruits',300,11),(13,'skotch blanc',500,12),(14,'elastique',250,13),(15,'gomme maped',500,14),(16,'regle 30cm',250,15),(17,'dorade entiere',500,16),(18,'crevette en sachet',300,17);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `IdCategorie` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleCategorie` varchar(100) DEFAULT NULL,
  `IdTypeProduit` int(11) NOT NULL,
  PRIMARY KEY (`IdCategorie`),
  KEY `FK_Categories_TypesProduits` (`IdTypeProduit`),
  CONSTRAINT `FK_Categories_TypesProduits` FOREIGN KEY (`IdTypeProduit`) REFERENCES `typesproduits` (`IdTypeProduit`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'produit frais',4),(2,'non perissable',2),(3,'non perissable',2),(4,'produit sec',1),(5,'pain',3),(6,'tournevis plat',5),(7,'verre a cafe',5),(8,'produit frais',4),(9,'produit frais',4),(10,'pain',3),(11,'pain',3),(12,'skotch blanc',5),(13,'elastique ',5),(14,'non perissable',2),(15,'non perissable',2),(16,'produit frais',4),(17,'produit frais',4);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typesproduits`
--

DROP TABLE IF EXISTS `typesproduits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typesproduits` (
  `IdTypeProduit` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleTypeProduit` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdTypeProduit`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typesproduits`
--

LOCK TABLES `typesproduits` WRITE;
/*!40000 ALTER TABLE `typesproduits` DISABLE KEYS */;
INSERT INTO `typesproduits` VALUES (1,'alimentaire'),(2,'papeterie'),(3,'boulangerie'),(4,'poissonnerie'),(5,'grand bazar');
/*!40000 ALTER TABLE `typesproduits` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-06 17:25:16
