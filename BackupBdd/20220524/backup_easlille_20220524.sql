-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: easlille
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
-- Current Database: `easlille`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `easlille` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `easlille`;

--
-- Table structure for table `actualites`
--

DROP TABLE IF EXISTS `actualites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actualites` (
  `IdActualite` int(11) NOT NULL AUTO_INCREMENT,
  `Titre` varchar(50) DEFAULT NULL,
  `Contenu` text,
  `DateAffichage` date DEFAULT NULL,
  PRIMARY KEY (`IdActualite`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actualites`
--

LOCK TABLES `actualites` WRITE;
/*!40000 ALTER TABLE `actualites` DISABLE KEYS */;
INSERT INTO `actualites` VALUES (6,'promotion CAF 2022','Affichage campagne CAF ','2022-06-09'),(7,'Recherche Sponsor ','CocaCola','2022-04-03'),(10,'préparation match','videos','2021-05-21'),(11,'revivre le match d\'hier','videos','2022-04-08'),(14,'revivre le match d\'hier','videos','2022-05-01'),(16,'revivre le match d\'hier','videos','2022-04-20'),(17,'revivre le match d\'hier','videos','2022-04-23');
/*!40000 ALTER TABLE `actualites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adhesions`
--

DROP TABLE IF EXISTS `adhesions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adhesions` (
  `IdAdhesion` int(11) NOT NULL AUTO_INCREMENT,
  `DateDebutAdhesion` date DEFAULT NULL,
  `DateFinAdhesion` date DEFAULT NULL,
  `IdUtilisateur` int(11) NOT NULL,
  PRIMARY KEY (`IdAdhesion`),
  KEY `FK_Adhesions_Utilisateurs` (`IdUtilisateur`),
  CONSTRAINT `FK_Adhesions_Utilisateurs` FOREIGN KEY (`IdUtilisateur`) REFERENCES `utilisateurs` (`IdUtilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adhesions`
--

LOCK TABLES `adhesions` WRITE;
/*!40000 ALTER TABLE `adhesions` DISABLE KEYS */;
INSERT INTO `adhesions` VALUES (1,'2022-04-14','2022-04-21',2);
/*!40000 ALTER TABLE `adhesions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appartient`
--

DROP TABLE IF EXISTS `appartient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appartient` (
  `IdActualite` int(11) NOT NULL AUTO_INCREMENT,
  `IdVideo` int(11) NOT NULL,
  PRIMARY KEY (`IdActualite`),
  KEY `FK_Appartient_Videos` (`IdVideo`),
  CONSTRAINT `FK_Appartient_Actualites` FOREIGN KEY (`IdActualite`) REFERENCES `actualites` (`IdActualite`),
  CONSTRAINT `FK_Appartient_Videos` FOREIGN KEY (`IdVideo`) REFERENCES `videos` (`IdVideo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appartient`
--

LOCK TABLES `appartient` WRITE;
/*!40000 ALTER TABLE `appartient` DISABLE KEYS */;
/*!40000 ALTER TABLE `appartient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contient`
--

DROP TABLE IF EXISTS `contient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contient` (
  `IdActualite` int(11) NOT NULL AUTO_INCREMENT,
  `IdImage` int(11) NOT NULL,
  PRIMARY KEY (`IdActualite`),
  KEY `FK_Contient_Images` (`IdImage`),
  CONSTRAINT `FK_Contient_Actualites` FOREIGN KEY (`IdActualite`) REFERENCES `actualites` (`IdActualite`),
  CONSTRAINT `FK_Contient_Images` FOREIGN KEY (`IdImage`) REFERENCES `images` (`IdImage`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contient`
--

LOCK TABLES `contient` WRITE;
/*!40000 ALTER TABLE `contient` DISABLE KEYS */;
INSERT INTO `contient` VALUES (6,2),(7,4);
/*!40000 ALTER TABLE `contient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotisations`
--

DROP TABLE IF EXISTS `cotisations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cotisations` (
  `IdCotisation` int(11) NOT NULL AUTO_INCREMENT,
  `EtatCotisation` varchar(50) DEFAULT NULL,
  `MontantCotisation` varchar(50) DEFAULT NULL,
  `ModePaiement` varchar(50) DEFAULT NULL,
  `DateCotisation` date DEFAULT NULL,
  `IdUtilisateur` int(11) NOT NULL,
  PRIMARY KEY (`IdCotisation`),
  KEY `FK_Cotisations_Utilisateurs` (`IdUtilisateur`),
  CONSTRAINT `FK_Cotisations_Utilisateurs` FOREIGN KEY (`IdUtilisateur`) REFERENCES `utilisateurs` (`IdUtilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotisations`
--

LOCK TABLES `cotisations` WRITE;
/*!40000 ALTER TABLE `cotisations` DISABLE KEYS */;
INSERT INTO `cotisations` VALUES (1,'à jour','55','chèque','2022-03-08',4),(3,'à jour','50.00','chèque','2022-03-15',3),(4,'à jour','50.00','espece','2021-12-08',2),(5,'paye','25','espece','2022-05-22',4),(6,'a jour','100','espece','2022-05-25',5);
/*!40000 ALTER TABLE `cotisations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dons`
--

DROP TABLE IF EXISTS `dons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dons` (
  `IdDon` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) DEFAULT NULL,
  `Prenom` varchar(50) DEFAULT NULL,
  `LibelleDon` text,
  `MontantDon` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`IdDon`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dons`
--

LOCK TABLES `dons` WRITE;
/*!40000 ALTER TABLE `dons` DISABLE KEYS */;
INSERT INTO `dons` VALUES (1,'pierrin','didier','don travaux terrain',2000.00),(2,'admin','admin','don filet foot',15.50),(4,'jeannot','jean pierre','Achat filets et Ballons',1500.00),(5,'Terki','moktar','Achat filets et Ballons',25.00),(6,'pieer','luc','bouteille d\'eau',200.00),(7,'pieer','luc','Achat filets et Ballons',25.00),(8,'Terki','moktar','bouteille d\'eau',200.00),(9,'Terki','moktar','bouteille d\'eau',200.00),(13,'pierre','courquiin','ACHAT FILET DE FOOT',25.00);
/*!40000 ALTER TABLE `dons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `IdImage` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(100) DEFAULT NULL,
  `images` varchar(100) NOT NULL,
  PRIMARY KEY (`IdImage`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'image affiche match ','imageFoot2'),(2,'image recherche sponsor ','imageFoot'),(3,'image affiche match ','imageFoot1'),(4,'image recherche sponsors ','imageFoot3');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `IdMessage` int(11) NOT NULL AUTO_INCREMENT,
  `Auteur` varchar(50) NOT NULL,
  `Contenu` text NOT NULL,
  `Create_at` datetime DEFAULT NULL,
  PRIMARY KEY (`IdMessage`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'momo','ww','2022-05-13 15:38:20'),(2,'momo','','2022-05-13 15:38:23'),(3,'momo','ca va ','2022-05-13 15:38:27'),(4,'eeee','','2022-05-13 15:46:07'),(5,'eeee','eeee','2022-05-13 15:46:09'),(6,'eeee','','2022-05-13 15:46:11'),(7,'moktar','salut','2022-05-13 16:00:39'),(9,'DD','DS','2022-05-13 16:22:39'),(10,'Lior','cxbb','2022-05-13 16:26:08'),(11,'','','2022-05-13 17:12:50'),(12,'','ddd','2022-05-13 17:16:18'),(13,'','','2022-05-13 17:17:46'),(16,'Lior','super et toi','2022-05-13 17:19:46'),(17,'Lior','ca va cool','2022-05-13 17:19:51'),(18,'Lior','c\'est bientot la certification','2022-05-13 17:20:05'),(19,'Lior','ca sera le 02/06 ou 03/06','2022-05-13 17:20:24'),(20,'Lior','oui ca va aller','2022-05-13 17:20:32'),(21,'Lior','bien sur ','2022-05-13 17:20:37'),(22,'moktar','super ','2022-05-13 17:20:54'),(23,'moktar','ca ira ','2022-05-13 17:20:59'),(24,'','','2022-05-13 17:28:23'),(25,'moktar','coucou','2022-05-16 09:24:52'),(26,'mpoktar','salut ca va ','2022-05-16 10:57:23'),(27,'mok','salut ca va ','2022-05-16 16:44:01'),(28,'mok','salut ca va ','2022-05-19 10:32:14'),(29,'mok','salut ca va ','2022-05-19 10:33:29'),(30,'mok','salut ca va ','2022-05-19 15:52:46'),(31,'moktar','gdsgdgdgd','2022-05-19 16:46:04'),(32,'momo ','coool','2022-05-19 19:23:09');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `IdRole` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleRole` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdRole`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'utilisateur'),(2,'administrateur');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `textes`
--

DROP TABLE IF EXISTS `textes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `textes` (
  `idTexte` int(11) NOT NULL AUTO_INCREMENT,
  `codeTexte` varchar(50) NOT NULL,
  `fr` longtext NOT NULL,
  `en` longtext NOT NULL,
  PRIMARY KEY (`idTexte`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `textes`
--

LOCK TABLES `textes` WRITE;
/*!40000 ALTER TABLE `textes` DISABLE KEYS */;
INSERT INTO `textes` VALUES (1,'Bonjour','Bonjour','Hello'),(2,'Connexion','Connexion','Log in'),(3,'Deconnexion','Deconnexion','Log out'),(4,'Accueil','Accueil','Home'),(5,'AdresseEmail','Adresse email','Email address'),(6,'Mdp','Mot de passe','Password'),(7,'Inscription','Inscription','Registration'),(8,'Nom','Nom','Surname'),(9,'Prenom','Prenom','Name'),(10,'InfoMdpLegend','Veuillez saisir au moins','Please enter at least'),(11,'UneMajuscule','1 majuscule','1 uppercase'),(12,'UneMinuscule','1 minuscule','1 lowercase'),(13,'UnChiffre','1 chiffre','1 number'),(14,'UnCaractereSpecial','1 caractère spécial ( ! @ & # * ^ $ % +)','1 special character ( ! @ & # * ^ $ % +)'),(15,'MinimumCaractere','8 caractères','8 character'),(16,'Confirmation','Confirmation','Confirmation'),(17,'Reset','Réinitialisation','Reset'),(18,'inputDefault','Choisir une valeur','Choose a value'),(19,'Envoyer','Envoyer','Send'),(20,'Bonjour','Bonjour','Hello'),(21,'Connexion','Connexion','Log in'),(22,'Deconnexion','Deconnexion','Log out'),(23,'Accueil','Accueil','Home'),(24,'AdresseEmail','Adresse email','Email address'),(25,'Mdp','Mot de passe','Password'),(26,'Inscription','Inscription','Registration'),(27,'Nom','Nom','Surname'),(28,'Prenom','Prenom','Name'),(29,'InfoMdpLegend','Veuillez saisir au moins','Please enter at least'),(30,'UneMajuscule','1 majuscule','1 uppercase'),(31,'UneMinuscule','1 minuscule','1 lowercase'),(32,'UnChiffre','1 chiffre','1 number'),(33,'UnCaractereSpecial','1 caractère spécial ( ! @ & # * ^ $ % +)','1 special character ( ! @ & # * ^ $ % +)'),(34,'MinimumCaractere','8 caractères','8 character'),(35,'Confirmation','Confirmation','Confirmation'),(36,'Reset','Réinitialisation','Reset'),(37,'inputDefault','Choisir une valeur','Choose a value'),(38,'Envoyer','Envoyer','Send');
/*!40000 ALTER TABLE `textes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilisateurs` (
  `IdUtilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `AdresseMail` varchar(50) NOT NULL,
  `MotDePasse` varchar(50) NOT NULL,
  `TelephoneUtilisateur` int(11) DEFAULT NULL,
  `SituationProfessionnelle` varchar(50) DEFAULT NULL,
  `Active` tinyint(1) DEFAULT NULL,
  `IdRole` int(11) NOT NULL,
  PRIMARY KEY (`IdUtilisateur`),
  UNIQUE KEY `AdresseMail` (`AdresseMail`),
  KEY `FK_Utilisateurs_Roles` (`IdRole`),
  CONSTRAINT `FK_Utilisateurs_Roles` FOREIGN KEY (`IdRole`) REFERENCES `roles` (`IdRole`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateurs`
--

LOCK TABLES `utilisateurs` WRITE;
/*!40000 ALTER TABLE `utilisateurs` DISABLE KEYS */;
INSERT INTO `utilisateurs` VALUES (2,'admin','admin','admin@gmail.fr','',652321452,'formation',1,2),(3,'terki','moktar','moktar.terki@gmail.com','',666558963,'formation',1,1),(4,'ad','ad','ad@gmail.com','Test@999',666558963,'formation',1,1),(5,'valaud','pierric','pierric.valaud@gmail.com','Test@999',689898925,'sans emploi',1,1),(10,'administrateur','administrateur','administrateur@gmail.fr','1039c5bba2f583c93c62dc41a3cb365f',320529686,'formation',1,2),(11,'utilisateur','utilisateur','utilisateur@gmail.fr','1039c5bba2f583c93c62dc41a3cb365f',320258956,'formation',1,1);
/*!40000 ALTER TABLE `utilisateurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `utilisateurs_cotisations`
--

DROP TABLE IF EXISTS `utilisateurs_cotisations`;
/*!50001 DROP VIEW IF EXISTS `utilisateurs_cotisations`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `utilisateurs_cotisations` AS SELECT 
 1 AS `IdUtilisateur`,
 1 AS `Nom`,
 1 AS `Prenom`,
 1 AS `AdresseMail`,
 1 AS `MotDePasse`,
 1 AS `TelephoneUtilisateur`,
 1 AS `SituationProfessionnelle`,
 1 AS `Active`,
 1 AS `IdCotisation`,
 1 AS `EtatCotisation`,
 1 AS `MontantCotisation`,
 1 AS `ModePaiement`,
 1 AS `DateCotisation`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `IdVideo` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(100) DEFAULT NULL,
  `videos` varchar(100) NOT NULL,
  PRIMARY KEY (`IdVideo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (2,'vidéo match 25/08/2021','videoFoot4'),(3,'video match stade jean Bouin','videoFoot5');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `easlille`
--

USE `easlille`;

--
-- Final view structure for view `utilisateurs_cotisations`
--

/*!50001 DROP VIEW IF EXISTS `utilisateurs_cotisations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `utilisateurs_cotisations` AS select `utilisateurs`.`IdUtilisateur` AS `IdUtilisateur`,`utilisateurs`.`Nom` AS `Nom`,`utilisateurs`.`Prenom` AS `Prenom`,`utilisateurs`.`AdresseMail` AS `AdresseMail`,`utilisateurs`.`MotDePasse` AS `MotDePasse`,`utilisateurs`.`TelephoneUtilisateur` AS `TelephoneUtilisateur`,`utilisateurs`.`SituationProfessionnelle` AS `SituationProfessionnelle`,`utilisateurs`.`Active` AS `Active`,`cotisations`.`IdCotisation` AS `IdCotisation`,`cotisations`.`EtatCotisation` AS `EtatCotisation`,`cotisations`.`MontantCotisation` AS `MontantCotisation`,`cotisations`.`ModePaiement` AS `ModePaiement`,`cotisations`.`DateCotisation` AS `DateCotisation` from (`utilisateurs` join `cotisations` on((`utilisateurs`.`IdUtilisateur` = `cotisations`.`IdUtilisateur`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-24 17:20:35
