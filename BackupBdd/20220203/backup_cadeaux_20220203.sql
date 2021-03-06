-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: cadeaux
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
-- Current Database: `cadeaux`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cadeaux` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cadeaux`;

--
-- Table structure for table `assurer`
--

DROP TABLE IF EXISTS `assurer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assurer` (
  `Id_Lutins` int(11) NOT NULL,
  `Id_livraisons` int(11) NOT NULL,
  PRIMARY KEY (`Id_Lutins`,`Id_livraisons`),
  KEY `FK_assurer_livraisons` (`Id_livraisons`),
  CONSTRAINT `FK_assurer_Lutins` FOREIGN KEY (`Id_Lutins`) REFERENCES `lutins` (`Id_Lutins`),
  CONSTRAINT `FK_assurer_livraisons` FOREIGN KEY (`Id_livraisons`) REFERENCES `livraisons` (`Id_livraisons`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assurer`
--

LOCK TABLES `assurer` WRITE;
/*!40000 ALTER TABLE `assurer` DISABLE KEYS */;
/*!40000 ALTER TABLE `assurer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cadeaux`
--

DROP TABLE IF EXISTS `cadeaux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cadeaux` (
  `Id_cadeaux` int(11) NOT NULL,
  `numeroUniq` int(11) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `Id_livraisons` int(11) NOT NULL,
  PRIMARY KEY (`Id_cadeaux`),
  KEY `FK_cadeaux_livraisons` (`Id_livraisons`),
  CONSTRAINT `FK_cadeaux_livraisons` FOREIGN KEY (`Id_livraisons`) REFERENCES `livraisons` (`Id_livraisons`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadeaux`
--

LOCK TABLES `cadeaux` WRITE;
/*!40000 ALTER TABLE `cadeaux` DISABLE KEYS */;
/*!40000 ALTER TABLE `cadeaux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conduit`
--

DROP TABLE IF EXISTS `conduit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conduit` (
  `Id_Lutins` int(11) NOT NULL,
  `Id_Traineaux` int(11) NOT NULL,
  `dateResponsabilte` date DEFAULT NULL,
  PRIMARY KEY (`Id_Lutins`,`Id_Traineaux`),
  KEY `FK_conduit_Traineaux` (`Id_Traineaux`),
  CONSTRAINT `FK_conduit_Lutins` FOREIGN KEY (`Id_Lutins`) REFERENCES `lutins` (`Id_Lutins`),
  CONSTRAINT `FK_conduit_Traineaux` FOREIGN KEY (`Id_Traineaux`) REFERENCES `traineaux` (`Id_Traineaux`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conduit`
--

LOCK TABLES `conduit` WRITE;
/*!40000 ALTER TABLE `conduit` DISABLE KEYS */;
/*!40000 ALTER TABLE `conduit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dispose`
--

DROP TABLE IF EXISTS `dispose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dispose` (
  `Id_Traineaux` int(11) NOT NULL,
  `Id_livraisons` int(11) NOT NULL,
  PRIMARY KEY (`Id_Traineaux`,`Id_livraisons`),
  KEY `FK_dispose_livraisons` (`Id_livraisons`),
  CONSTRAINT `FK_dispose_Traineaux` FOREIGN KEY (`Id_Traineaux`) REFERENCES `traineaux` (`Id_Traineaux`),
  CONSTRAINT `FK_dispose_livraisons` FOREIGN KEY (`Id_livraisons`) REFERENCES `livraisons` (`Id_livraisons`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispose`
--

LOCK TABLES `dispose` WRITE;
/*!40000 ALTER TABLE `dispose` DISABLE KEYS */;
/*!40000 ALTER TABLE `dispose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfants`
--

DROP TABLE IF EXISTS `enfants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enfants` (
  `Id_Enfants` int(11) NOT NULL,
  `numero_d_ident` int(11) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `adresse` varchar(80) DEFAULT NULL,
  `sexe` varchar(50) DEFAULT NULL,
  `voeux` varchar(80) DEFAULT NULL,
  `pourcentageSagesse` int(11) DEFAULT NULL,
  `Id_cadeaux` int(11) NOT NULL,
  PRIMARY KEY (`Id_Enfants`),
  KEY `FK_Enfants_cadeaux` (`Id_cadeaux`),
  CONSTRAINT `FK_Enfants_cadeaux` FOREIGN KEY (`Id_cadeaux`) REFERENCES `cadeaux` (`Id_cadeaux`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfants`
--

LOCK TABLES `enfants` WRITE;
/*!40000 ALTER TABLE `enfants` DISABLE KEYS */;
/*!40000 ALTER TABLE `enfants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livraisons`
--

DROP TABLE IF EXISTS `livraisons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livraisons` (
  `Id_livraisons` int(11) NOT NULL,
  `numeroUniq` int(11) DEFAULT NULL,
  `heureDepartTournee` datetime DEFAULT NULL,
  PRIMARY KEY (`Id_livraisons`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livraisons`
--

LOCK TABLES `livraisons` WRITE;
/*!40000 ALTER TABLE `livraisons` DISABLE KEYS */;
/*!40000 ALTER TABLE `livraisons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lutins`
--

DROP TABLE IF EXISTS `lutins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lutins` (
  `Id_Lutins` int(11) NOT NULL,
  `numero_ident` int(11) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Lutins`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lutins`
--

LOCK TABLES `lutins` WRITE;
/*!40000 ALTER TABLE `lutins` DISABLE KEYS */;
/*!40000 ALTER TABLE `lutins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participe`
--

DROP TABLE IF EXISTS `participe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participe` (
  `Id_livraisons` int(11) NOT NULL,
  `Id_rennes` int(11) NOT NULL,
  PRIMARY KEY (`Id_livraisons`,`Id_rennes`),
  KEY `FK_participe_rennes` (`Id_rennes`),
  CONSTRAINT `FK_participe_livraisons` FOREIGN KEY (`Id_livraisons`) REFERENCES `livraisons` (`Id_livraisons`),
  CONSTRAINT `FK_participe_rennes` FOREIGN KEY (`Id_rennes`) REFERENCES `rennes` (`Id_rennes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participe`
--

LOCK TABLES `participe` WRITE;
/*!40000 ALTER TABLE `participe` DISABLE KEYS */;
/*!40000 ALTER TABLE `participe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rennes`
--

DROP TABLE IF EXISTS `rennes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rennes` (
  `Id_rennes` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `sexe` varchar(50) DEFAULT NULL,
  `dateNaissance` date DEFAULT NULL,
  PRIMARY KEY (`Id_rennes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rennes`
--

LOCK TABLES `rennes` WRITE;
/*!40000 ALTER TABLE `rennes` DISABLE KEYS */;
/*!40000 ALTER TABLE `rennes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tire`
--

DROP TABLE IF EXISTS `tire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tire` (
  `Id_Traineaux` int(11) NOT NULL,
  `Id_rennes` int(11) NOT NULL,
  PRIMARY KEY (`Id_Traineaux`,`Id_rennes`),
  KEY `FK_tire_rennes` (`Id_rennes`),
  CONSTRAINT `FK_tire_Traineaux` FOREIGN KEY (`Id_Traineaux`) REFERENCES `traineaux` (`Id_Traineaux`),
  CONSTRAINT `FK_tire_rennes` FOREIGN KEY (`Id_rennes`) REFERENCES `rennes` (`Id_rennes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tire`
--

LOCK TABLES `tire` WRITE;
/*!40000 ALTER TABLE `tire` DISABLE KEYS */;
/*!40000 ALTER TABLE `tire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traineaux`
--

DROP TABLE IF EXISTS `traineaux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traineaux` (
  `Id_Traineaux` int(11) NOT NULL,
  `numeroTraineau` int(11) DEFAULT NULL,
  `taille` int(11) DEFAULT NULL,
  `dateMiseEnService` date DEFAULT NULL,
  `dateRevision` date DEFAULT NULL,
  PRIMARY KEY (`Id_Traineaux`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traineaux`
--

LOCK TABLES `traineaux` WRITE;
/*!40000 ALTER TABLE `traineaux` DISABLE KEYS */;
/*!40000 ALTER TABLE `traineaux` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-03 17:20:34
