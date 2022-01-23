<<<<<<< HEAD
-- MySQL dump 10.13  Distrib 5.7.28, for Win32 (AMD64)
--
-- Host: localhost    Database: animaleriedao
-- ------------------------------------------------------
-- Server version	5.7.28
=======
-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: animaleriedao
-- ------------------------------------------------------
-- Server version	5.7.31
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6

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
-- Current Database: `animaleriedao`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `animaleriedao` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `animaleriedao`;

--
-- Table structure for table `alimentations`
--

DROP TABLE IF EXISTS `alimentations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alimentations` (
  `idAliment` int(11) NOT NULL AUTO_INCREMENT,
  `libelleAliment` varchar(50) NOT NULL,
  PRIMARY KEY (`idAliment`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alimentations`
--

LOCK TABLES `alimentations` WRITE;
/*!40000 ALTER TABLE `alimentations` DISABLE KEYS */;
INSERT INTO `alimentations` VALUES (1,'vegetaux'),(2,'viandes');
/*!40000 ALTER TABLE `alimentations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animaux`
--

DROP TABLE IF EXISTS `animaux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animaux` (
  `idAnimal` int(11) NOT NULL AUTO_INCREMENT,
  `libelleAnimal` varchar(50) NOT NULL,
  `prix` int(11) NOT NULL,
  `dateDeNaissance` date NOT NULL,
  `idAliment` int(11) NOT NULL,
  `idMilieuVie` int(11) NOT NULL,
  PRIMARY KEY (`idAnimal`),
  KEY `FK_animaux_alimentations` (`idAliment`),
  KEY `FK_animaux_milieuvies` (`idMilieuVie`),
  CONSTRAINT `FK_animaux_alimentations` FOREIGN KEY (`idAliment`) REFERENCES `alimentations` (`idAliment`),
  CONSTRAINT `FK_animaux_milieuvies` FOREIGN KEY (`idMilieuVie`) REFERENCES `milieuvies` (`idMilieuVie`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animaux`
--

LOCK TABLES `animaux` WRITE;
/*!40000 ALTER TABLE `animaux` DISABLE KEYS */;
INSERT INTO `animaux` VALUES (1,'lion',2,'1899-11-30',1,1),(2,'vache',1,'1958-11-30',2,1);
/*!40000 ALTER TABLE `animaux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milieuvies`
--

DROP TABLE IF EXISTS `milieuvies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `milieuvies` (
  `idMilieuVie` int(11) NOT NULL AUTO_INCREMENT,
  `libelleMilieuVie` varchar(50) NOT NULL,
  `situationGeographique` varchar(50) NOT NULL,
  `climat` varchar(50) NOT NULL,
  PRIMARY KEY (`idMilieuVie`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milieuvies`
--

LOCK TABLES `milieuvies` WRITE;
/*!40000 ALTER TABLE `milieuvies` DISABLE KEYS */;
INSERT INTO `milieuvies` VALUES (1,'montagne','Asie','Chaud');
/*!40000 ALTER TABLE `milieuvies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `texte`
--

DROP TABLE IF EXISTS `texte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `texte` (
  `idTexte` int(11) NOT NULL AUTO_INCREMENT,
  `codeTexte` varchar(50) NOT NULL,
  `fr` longtext NOT NULL,
  `en` longtext NOT NULL,
  PRIMARY KEY (`idTexte`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `texte`
--

LOCK TABLES `texte` WRITE;
/*!40000 ALTER TABLE `texte` DISABLE KEYS */;
INSERT INTO `texte` VALUES (1,'Pseudo','pseudo','pseudos'),(2,'MotDePasse','MotDePasse','MotDePasse'),(3,'Envoyer','Envoyer','Envoyer'),(4,'Inscription','Inscription','Inscription'),(5,'Nom','Nom','Name'),(6,'Prenom','prenom','surname'),(7,'ConfirmationMotDePasse','ConfirmationMotDePasse','ConfirmationPassword'),(8,'AdresseMail','AdresseMail','eMail'),(9,'Role','role','role');
/*!40000 ALTER TABLE `texte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilisateurs` (
  `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
<<<<<<< HEAD
  `adresseMail` varchar(50) NOT NULL,
  `telephone` int(10) NOT NULL,
  `motDePasse` varchar(50) NOT NULL,
  `role` int(11) DEFAULT NULL COMMENT '2 Admin 1 User',
  `pseudo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idUtilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
=======
  `motDePasse` varchar(50) NOT NULL,
  `adresseMail` varchar(50) NOT NULL,
  `role` int(11) NOT NULL COMMENT '2 Admin 1 User',
  `pseudo` varchar(50) NOT NULL,
  PRIMARY KEY (`idUtilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateurs`
--

LOCK TABLES `utilisateurs` WRITE;
/*!40000 ALTER TABLE `utilisateurs` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `utilisateurs` VALUES (7,'ad','ad','test@gmail.com',615121512,'11d437a3e6695447bd1bf2331651049e',2,'ad'),(8,'u','u','u',203010203,'1d0a5a28d53430e7f2293a1f36682f23',1,'u'),(9,'alan','poson','alan.poson@gmail.com',2147483647,'0c2d53364f5e70cdb05768e79ae5f683',1,'alan'),(10,'moktar','Moktar','Moktar@gmail.com',623252526,'0c2d53364f5e70cdb05768e79ae5f683',1,'Moktar'),(11,'moktar','moktar','moktar.terki@gmail.com',622322565,'80a910d42093f7901a3ddcdbc4bbc140',1,'mok');
=======
INSERT INTO `utilisateurs` VALUES (7,'ad','ad','11d437a3e6695447bd1bf2331651049e','ad',2,'ad'),(8,'u','u','1d0a5a28d53430e7f2293a1f36682f23','u',1,'u'),(9,'moktar','terki','6c1df8ebedd4bfce53f14c4a9129c83e','moktar.terki@gmail.com',1,'mok1'),(10,'Alan','Alan','fb469d7ef430b0baf0cab6c436e70375','Alan@live.fr',2,'Alan');
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40000 ALTER TABLE `utilisateurs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

<<<<<<< HEAD
-- Dump completed on 2022-01-19 17:30:15
=======
-- Dump completed on 2022-01-19 17:20:33
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
