-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: stagiaireafpa
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
-- Current Database: `stagiaireafpa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `stagiaireafpa` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `stagiaireafpa`;

--
-- Table structure for table `formation`
--

DROP TABLE IF EXISTS `formation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formation` (
  `idFormation` int(11) NOT NULL AUTO_INCREMENT,
  `libelleFormation` varchar(50) NOT NULL,
  `idGroupe` int(11) NOT NULL,
  PRIMARY KEY (`idFormation`),
  KEY `FK_formation_idGroupe` (`idGroupe`),
  CONSTRAINT `FK_formation_idGroupe` FOREIGN KEY (`idGroupe`) REFERENCES `groupe` (`idGroupe`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formation`
--

LOCK TABLES `formation` WRITE;
/*!40000 ALTER TABLE `formation` DISABLE KEYS */;
INSERT INTO `formation` VALUES (1,'TSAII',2),(2,'TRTE',3),(3,'DWWM',1);
/*!40000 ALTER TABLE `formation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupe`
--

DROP TABLE IF EXISTS `groupe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupe` (
  `idGroupe` int(11) NOT NULL AUTO_INCREMENT,
  `libelleGroupe` varchar(50) NOT NULL,
  PRIMARY KEY (`idGroupe`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupe`
--

LOCK TABLES `groupe` WRITE;
/*!40000 ALTER TABLE `groupe` DISABLE KEYS */;
INSERT INTO `groupe` VALUES (1,'Informatique'),(2,'Automatisme'),(3,'Reseau');
/*!40000 ALTER TABLE `groupe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hebergement`
--

DROP TABLE IF EXISTS `hebergement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hebergement` (
  `idHebergement` int(11) NOT NULL AUTO_INCREMENT,
  `libelleHebergement` varchar(50) NOT NULL,
  PRIMARY KEY (`idHebergement`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hebergement`
--

LOCK TABLES `hebergement` WRITE;
/*!40000 ALTER TABLE `hebergement` DISABLE KEYS */;
INSERT INTO `hebergement` VALUES (1,'AFPA'),(2,'Autre');
/*!40000 ALTER TABLE `hebergement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stagiaire`
--

DROP TABLE IF EXISTS `stagiaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stagiaire` (
  `idStagiaire` int(11) NOT NULL AUTO_INCREMENT,
  `nomStagiaire` varchar(50) NOT NULL,
  `prenomStagiaire` varchar(50) NOT NULL,
  `idHebergement` int(11) NOT NULL,
  `idFormation` int(11) NOT NULL,
  PRIMARY KEY (`idStagiaire`),
  KEY `FK_stagire_idHebergement` (`idHebergement`),
  KEY `fk_stagiaire_idFormation` (`idFormation`),
  CONSTRAINT `FK_stagire_idHebergement` FOREIGN KEY (`idHebergement`) REFERENCES `hebergement` (`idHebergement`),
  CONSTRAINT `fk_stagiaire_idFormation` FOREIGN KEY (`idFormation`) REFERENCES `formation` (`idFormation`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stagiaire`
--

LOCK TABLES `stagiaire` WRITE;
/*!40000 ALTER TABLE `stagiaire` DISABLE KEYS */;
INSERT INTO `stagiaire` VALUES (1,'Durand','Paul',1,1),(2,'Duval','Jean',1,2),(3,'Dupond','Jules',2,3);
/*!40000 ALTER TABLE `stagiaire` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-30 17:20:38
