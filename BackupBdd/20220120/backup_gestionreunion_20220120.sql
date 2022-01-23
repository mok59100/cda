<<<<<<< HEAD
-- MySQL dump 10.13  Distrib 5.7.28, for Win32 (AMD64)
--
-- Host: localhost    Database: gestionreunion
-- ------------------------------------------------------
-- Server version	5.7.28
=======
-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: gestionreunion
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
-- Current Database: `gestionreunion`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `gestionreunion` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gestionreunion`;

--
-- Table structure for table `etatsavancements`
--

DROP TABLE IF EXISTS `etatsavancements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etatsavancements` (
  `idEtatAvancement` int(11) NOT NULL AUTO_INCREMENT,
  `libelleEtatAvancement` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idEtatAvancement`)
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
=======
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etatsavancements`
--

LOCK TABLES `etatsavancements` WRITE;
/*!40000 ALTER TABLE `etatsavancements` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `etatsavancements` VALUES (1,'visio en cours');
=======
INSERT INTO `etatsavancements` VALUES (1,'En attente'),(2,'En cours'),(3,'Terminer');
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40000 ALTER TABLE `etatsavancements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fichiersannexes`
--

DROP TABLE IF EXISTS `fichiersannexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fichiersannexes` (
  `idFichierAnnexe` int(11) NOT NULL AUTO_INCREMENT,
  `titreFichierAnnexe` varchar(50) DEFAULT NULL,
  `lienFichierAnnexe` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idFichierAnnexe`)
<<<<<<< HEAD
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
=======
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fichiersannexes`
--

LOCK TABLES `fichiersannexes` WRITE;
/*!40000 ALTER TABLE `fichiersannexes` DISABLE KEYS */;
<<<<<<< HEAD
=======
INSERT INTO `fichiersannexes` VALUES (1,'Historique entreprise','https://fr.wikipedia.org/wiki/Histoire'),(2,'Diagramme coups production','https://fr.wikipedia.org/wiki/Histoire');
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40000 ALTER TABLE `fichiersannexes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestionsannexes`
--

DROP TABLE IF EXISTS `gestionsannexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gestionsannexes` (
  `idGestionAnnexe` int(11) NOT NULL AUTO_INCREMENT,
  `idReunion` int(11) DEFAULT NULL,
  `idFichierAnnexe` int(11) DEFAULT NULL,
  PRIMARY KEY (`idGestionAnnexe`),
  KEY `FK_GestionsAnnexes_Reunions` (`idReunion`),
  KEY `FK_GestionsAnnexes_FichiersAnnexes` (`idFichierAnnexe`),
  CONSTRAINT `FK_GestionsAnnexes_FichiersAnnexes` FOREIGN KEY (`idFichierAnnexe`) REFERENCES `fichiersannexes` (`idFichierAnnexe`),
  CONSTRAINT `FK_GestionsAnnexes_Reunions` FOREIGN KEY (`idReunion`) REFERENCES `reunions` (`idReunion`)
<<<<<<< HEAD
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
=======
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestionsannexes`
--

LOCK TABLES `gestionsannexes` WRITE;
/*!40000 ALTER TABLE `gestionsannexes` DISABLE KEYS */;
<<<<<<< HEAD
=======
INSERT INTO `gestionsannexes` VALUES (1,2,2),(2,1,1);
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40000 ALTER TABLE `gestionsannexes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestionstaches`
--

DROP TABLE IF EXISTS `gestionstaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gestionstaches` (
  `idGestionTache` int(11) NOT NULL AUTO_INCREMENT,
  `idReunion` int(11) DEFAULT NULL,
  `idTache` int(11) DEFAULT NULL,
  PRIMARY KEY (`idGestionTache`),
  KEY `FK_GestionsTaches_Reunions` (`idReunion`),
  KEY `FK_GestionsTaches_Taches` (`idTache`),
  CONSTRAINT `FK_GestionsTaches_Reunions` FOREIGN KEY (`idReunion`) REFERENCES `reunions` (`idReunion`),
  CONSTRAINT `FK_GestionsTaches_Taches` FOREIGN KEY (`idTache`) REFERENCES `taches` (`idTache`)
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
=======
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestionstaches`
--

LOCK TABLES `gestionstaches` WRITE;
/*!40000 ALTER TABLE `gestionstaches` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `gestionstaches` VALUES (10,3,2),(11,4,2);
=======
INSERT INTO `gestionstaches` VALUES (1,2,1),(2,1,2);
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40000 ALTER TABLE `gestionstaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordresdujour`
--

DROP TABLE IF EXISTS `ordresdujour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordresdujour` (
  `idOrdreDuJour` int(11) NOT NULL AUTO_INCREMENT,
  `idReunion` int(11) DEFAULT NULL,
  `idSujet` int(11) DEFAULT NULL,
  PRIMARY KEY (`idOrdreDuJour`),
  KEY `FK_OrdresDuJour_Reunions` (`idReunion`),
  KEY `FK_OrdresDuJour_Sujets` (`idSujet`),
  CONSTRAINT `FK_OrdresDuJour_Reunions` FOREIGN KEY (`idReunion`) REFERENCES `reunions` (`idReunion`),
  CONSTRAINT `FK_OrdresDuJour_Sujets` FOREIGN KEY (`idSujet`) REFERENCES `sujets` (`idSujet`)
<<<<<<< HEAD
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
=======
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordresdujour`
--

LOCK TABLES `ordresdujour` WRITE;
/*!40000 ALTER TABLE `ordresdujour` DISABLE KEYS */;
<<<<<<< HEAD
=======
INSERT INTO `ordresdujour` VALUES (1,1,3),(2,2,4);
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40000 ALTER TABLE `ordresdujour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participations`
--

DROP TABLE IF EXISTS `participations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participations` (
  `idParticipation` int(11) NOT NULL AUTO_INCREMENT,
  `idUtilisateur` int(11) DEFAULT NULL,
  `idReunion` int(11) DEFAULT NULL,
  `idStatutPresence` int(11) DEFAULT NULL,
  `obligationPresence` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idParticipation`),
  KEY `FK_Participations_Utilisateurs` (`idUtilisateur`),
  KEY `FK_Participations_Reunions` (`idReunion`),
  KEY `FK_Participations_StatutsPresences` (`idStatutPresence`),
  CONSTRAINT `FK_Participations_Reunions` FOREIGN KEY (`idReunion`) REFERENCES `reunions` (`idReunion`),
  CONSTRAINT `FK_Participations_StatutsPresences` FOREIGN KEY (`idStatutPresence`) REFERENCES `statutspresences` (`idStatutPresence`),
  CONSTRAINT `FK_Participations_Utilisateurs` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateurs` (`idUtilisateur`)
<<<<<<< HEAD
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
=======
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participations`
--

LOCK TABLES `participations` WRITE;
/*!40000 ALTER TABLE `participations` DISABLE KEYS */;
<<<<<<< HEAD
=======
INSERT INTO `participations` VALUES (1,1,2,1,1),(2,3,2,2,2);
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40000 ALTER TABLE `participations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prioritestaches`
--

DROP TABLE IF EXISTS `prioritestaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prioritestaches` (
  `idPrioriteTache` int(11) NOT NULL AUTO_INCREMENT,
  `libellePrioriteTache` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idPrioriteTache`)
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
=======
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prioritestaches`
--

LOCK TABLES `prioritestaches` WRITE;
/*!40000 ALTER TABLE `prioritestaches` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `prioritestaches` VALUES (1,'urgent'),(2,'urgent');
=======
INSERT INTO `prioritestaches` VALUES (1,'Faible importance '),(2,'Moyenne importance '),(3,'Forte importance');
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40000 ALTER TABLE `prioritestaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reunions`
--

DROP TABLE IF EXISTS `reunions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reunions` (
  `idReunion` int(11) NOT NULL AUTO_INCREMENT,
  `titreReunion` varchar(50) DEFAULT NULL,
  `dateReunion` date DEFAULT NULL,
  `lieuReunion` varchar(50) DEFAULT NULL,
  `horaireDebut` time DEFAULT NULL,
  `horaireFin` time DEFAULT NULL,
  `nbMaxParticipants` int(11) DEFAULT NULL,
  `contenuCompteRendu` text,
  `idCreateur` int(11) NOT NULL,
  `idAnimateur` int(11) NOT NULL,
  `idSecretaire` int(11) NOT NULL,
  `idTypeReunion` int(11) NOT NULL,
  `idEtatAvancement` int(11) NOT NULL,
  `idSalle` int(11) NOT NULL,
  PRIMARY KEY (`idReunion`),
  KEY `FK_Reunions_Createur` (`idCreateur`),
  KEY `FK_Reunions_Secretaire` (`idSecretaire`),
  KEY `FK_Reunions_Animateur` (`idAnimateur`),
  KEY `FK_Reunions_TypesReunions` (`idTypeReunion`),
  KEY `FK_Reunions_EtatsAvancements` (`idEtatAvancement`),
  KEY `FK_Reunions_Salles` (`idSalle`),
  CONSTRAINT `FK_Reunions_Animateur` FOREIGN KEY (`idAnimateur`) REFERENCES `utilisateurs` (`idUtilisateur`),
  CONSTRAINT `FK_Reunions_Createur` FOREIGN KEY (`idCreateur`) REFERENCES `utilisateurs` (`idUtilisateur`),
  CONSTRAINT `FK_Reunions_EtatsAvancements` FOREIGN KEY (`idEtatAvancement`) REFERENCES `etatsavancements` (`idEtatAvancement`),
  CONSTRAINT `FK_Reunions_Salles` FOREIGN KEY (`idSalle`) REFERENCES `salles` (`idSalle`),
  CONSTRAINT `FK_Reunions_Secretaire` FOREIGN KEY (`idSecretaire`) REFERENCES `utilisateurs` (`idUtilisateur`),
  CONSTRAINT `FK_Reunions_TypesReunions` FOREIGN KEY (`idTypeReunion`) REFERENCES `typesreunions` (`idTypeReunion`)
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
=======
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reunions`
--

LOCK TABLES `reunions` WRITE;
/*!40000 ALTER TABLE `reunions` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `reunions` VALUES (3,'debrief salon','2022-01-17','paris','08:00:00','15:00:00',20,'yrdjfu',1,2,1,1,1,1),(4,'debrief salon','2022-01-17','paris','08:00:00','15:00:00',20,'yrdjfu',1,2,1,1,1,1);
=======
INSERT INTO `reunions` VALUES (1,'financiere','2022-01-13','dunkerque ','06:30:30','07:30:30',50,'la reunion portera sur les comptes de l\'entreprise , on verra l\'intégralités des projet réalisés en 2021',1,2,3,1,1,1),(2,'compte rendu operation noel ','2022-01-19','maubeuge','15:36:30','20:36:30',150,'projet noel , compte rendu de l\'operation',3,1,2,2,2,1);
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40000 ALTER TABLE `reunions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `idRole` int(11) NOT NULL AUTO_INCREMENT,
  `libelleRole` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idRole`)
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
=======
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `roles` VALUES (1,'secretaire'),(2,'orateur');
=======
INSERT INTO `roles` VALUES (1,'Secretaire '),(2,'Animateur'),(3,'Participant'),(4,'Administrateur');
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salles`
--

DROP TABLE IF EXISTS `salles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salles` (
  `idSalle` int(11) NOT NULL AUTO_INCREMENT,
  `libelleSalle` varchar(50) DEFAULT NULL,
  `tailleMaxSalle` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSalle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salles`
--

LOCK TABLES `salles` WRITE;
/*!40000 ALTER TABLE `salles` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `salles` VALUES (1,'f3',20),(2,'f3',20);
=======
INSERT INTO `salles` VALUES (1,'coluche',50),(2,'Charles de gaulle',150);
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40000 ALTER TABLE `salles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statutspresences`
--

DROP TABLE IF EXISTS `statutspresences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statutspresences` (
  `idStatutPresence` int(11) NOT NULL AUTO_INCREMENT,
  `libelleStatutPresence` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idStatutPresence`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statutspresences`
--

LOCK TABLES `statutspresences` WRITE;
/*!40000 ALTER TABLE `statutspresences` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `statutspresences` VALUES (3,'absent');
=======
INSERT INTO `statutspresences` VALUES (1,'Present'),(2,'Absent'),(3,'Excuse');
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40000 ALTER TABLE `statutspresences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sujets`
--

DROP TABLE IF EXISTS `sujets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sujets` (
  `idSujet` int(11) NOT NULL AUTO_INCREMENT,
  `libelleSujet` varchar(150) DEFAULT NULL,
  `tempsAlloue` time DEFAULT NULL,
  `idOrateur` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSujet`),
  KEY `FK_Sujets_Orateur` (`idOrateur`),
  CONSTRAINT `FK_Sujets_Orateur` FOREIGN KEY (`idOrateur`) REFERENCES `utilisateurs` (`idUtilisateur`)
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
=======
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sujets`
--

LOCK TABLES `sujets` WRITE;
/*!40000 ALTER TABLE `sujets` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `sujets` VALUES (1,'evolution commerciale','00:40:00',2);
=======
INSERT INTO `sujets` VALUES (3,'cout','09:33:14',1),(4,'temps','00:18:40',2),(5,'structure','00:33:22',3);
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40000 ALTER TABLE `sujets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taches`
--

DROP TABLE IF EXISTS `taches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taches` (
  `idTache` int(11) NOT NULL AUTO_INCREMENT,
  `libelleTache` text,
  `dateEcheanceTache` date DEFAULT NULL,
  `idEtatAvancement` int(11) NOT NULL,
  `idUtilisateur` int(11) NOT NULL,
  `idPrioriteTache` int(11) NOT NULL,
  PRIMARY KEY (`idTache`),
  KEY `FK_Taches_EtatsAvancements` (`idEtatAvancement`),
  KEY `FK_Taches_Utilisateurs` (`idUtilisateur`),
  KEY `FK_Taches_PrioritesTaches` (`idPrioriteTache`),
  CONSTRAINT `FK_Taches_EtatsAvancements` FOREIGN KEY (`idEtatAvancement`) REFERENCES `etatsavancements` (`idEtatAvancement`),
  CONSTRAINT `FK_Taches_PrioritesTaches` FOREIGN KEY (`idPrioriteTache`) REFERENCES `prioritestaches` (`idPrioriteTache`),
  CONSTRAINT `FK_Taches_Utilisateurs` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateurs` (`idUtilisateur`)
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
=======
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taches`
--

LOCK TABLES `taches` WRITE;
/*!40000 ALTER TABLE `taches` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `taches` VALUES (2,'test','2009-12-20',1,1,1),(3,'test','2009-12-20',1,1,1),(4,'test','2009-12-20',1,1,1),(5,'test','2009-12-20',1,1,1);
=======
INSERT INTO `taches` VALUES (1,'Structure des ducuments','2022-01-19',1,4,3),(2,'Calcule des couts ','2022-01-12',2,2,2),(3,'Mise en production','2022-01-12',3,1,3);
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40000 ALTER TABLE `taches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typesreunions`
--

DROP TABLE IF EXISTS `typesreunions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typesreunions` (
  `idTypeReunion` int(11) NOT NULL AUTO_INCREMENT,
  `libelleTypeReunion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idTypeReunion`)
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
=======
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typesreunions`
--

LOCK TABLES `typesreunions` WRITE;
/*!40000 ALTER TABLE `typesreunions` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `typesreunions` VALUES (1,'commerce'),(2,'commerce'),(3,'commerce');
=======
INSERT INTO `typesreunions` VALUES (1,'Presentiel'),(2,'Distanciel ');
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40000 ALTER TABLE `typesreunions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilisateurs` (
  `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `nomUtilisateur` varchar(50) DEFAULT NULL,
  `prenomUtilisateur` varchar(50) DEFAULT NULL,
  `emailUtilisateur` varchar(50) DEFAULT NULL,
  `motDePasseUtilisateur` varchar(50) DEFAULT NULL,
  `validationUtilisateur` tinyint(1) DEFAULT NULL,
  `idRole` int(11) NOT NULL,
  PRIMARY KEY (`idUtilisateur`),
  KEY `FK_Utilisateurs_Roles` (`idRole`),
  CONSTRAINT `FK_Utilisateurs_Roles` FOREIGN KEY (`idRole`) REFERENCES `roles` (`idRole`)
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
=======
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateurs`
--

LOCK TABLES `utilisateurs` WRITE;
/*!40000 ALTER TABLE `utilisateurs` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `utilisateurs` VALUES (1,'terki','moktar','moktar.terki@gmail.com','1234',0,1),(2,'terki','moktar','moktar.terki@gmail.com','1234',0,1);
=======
INSERT INTO `utilisateurs` VALUES (1,'Poson','Alan','Alan@gmail.com','test',1,4),(2,'Mayeux','Bruno','Bruno@gmail.com','test',1,2),(3,'Terki','Moktar','Moktar@gmail.com','test',1,1),(4,'Bolt','Usain','usain@gmail.com','test',1,3);
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
-- Dump completed on 2022-01-20 17:30:22
=======
-- Dump completed on 2022-01-20 17:20:35
>>>>>>> 8404020eab6dc37cacedc76ae6bffd39375e71d6
