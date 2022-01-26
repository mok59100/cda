-- MySQL dump 10.13  Distrib 5.7.28, for Win32 (AMD64)
--
-- Host: localhost    Database: locationauto
-- ------------------------------------------------------
-- Server version	5.7.28

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
INSERT INTO `agencelocations` VALUES (1,'Parvis','255 rue de la rose paris',622336655),(2,'courpis','98 boulevard du general de gaulle paris',611223344),(3,'dupin','58 rue delsalle 59000 lille',320586396),(4,'steven','3 rue de l\'afpa 59120 lens',320859578);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'marie','pierre','2000',611778899),(2,'carpro','pierre','98 boulevard du general de gaulle paris',302010422),(3,'david ','vincent','44444rue de la rose paris',108040912),(4,'robert','henry','1 rue de la besace lille',320202014),(5,'pieer','luc','58 rue delsalle 59000 lille',3);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `textes`
--

LOCK TABLES `textes` WRITE;
/*!40000 ALTER TABLE `textes` DISABLE KEYS */;
INSERT INTO `textes` VALUES (1,'Bonjour','Bonjour','Hello'),(2,'Connexion','Connexion','Log in'),(3,'Deconnexion','Deconnexion','Log out'),(4,'Accueil','Accueil','Home'),(5,'AdresseEmail','Adresse email','Email address'),(6,'Mdp','Mot de passe','Password'),(7,'Inscription','Inscription','Registration'),(8,'Nom','Nom','Surname'),(9,'Prenom','Prenom','Name'),(10,'InfoMdpLegend','Veuillez saisir au moins','Please enter at least'),(11,'UneMajuscule','1 majuscule','1 uppercase'),(12,'UneMinuscule','1 minuscule','1 lowercase'),(13,'UnChiffre','1 chiffre','1 number'),(14,'UnCaractereSpecial','1 caractère spécial ( ! @ & # * ^ $ % +)','1 special character ( ! @ & # * ^ $ % +)'),(15,'MinimumCaractere','8 caractères','8 character'),(16,'Confirmation','Confirmation','Confirmation'),(17,'Reset','Réinitialisation','Reset'),(18,'Envoyer','Envoyer','Send'),(19,'Bonjour','Bonjour','Hello'),(20,'Connexion','Connexion','Log in'),(21,'Deconnexion','Deconnexion','Log out'),(22,'Accueil','Accueil','Home'),(23,'AdresseEmail','Adresse email','Email address'),(24,'Mdp','Mot de passe','Password'),(25,'Inscription','Inscription','Registration'),(26,'Nom','Nom','Surname'),(27,'Prenom','Prenom','Name'),(28,'InfoMdpLegend','Veuillez saisir au moins','Please enter at least'),(29,'UneMajuscule','1 majuscule','1 uppercase'),(30,'UneMinuscule','1 minuscule','1 lowercase'),(31,'UnChiffre','1 chiffre','1 number'),(32,'UnCaractereSpecial','1 caractère spécial ( ! @ & # * ^ $ % +)','1 special character ( ! @ & # * ^ $ % +)'),(33,'MinimumCaractere','8 caractères','8 character'),(34,'Confirmation','Confirmation','Confirmation'),(35,'Reset','Réinitialisation','Reset'),(36,'Envoyer','Envoyer','Send'),(37,'Bonjour','Bonjour','Hello'),(38,'Connexion','Connexion','Log in'),(39,'Deconnexion','Deconnexion','Log out'),(40,'Accueil','Accueil','Home'),(41,'AdresseEmail','Adresse email','Email address'),(42,'Mdp','Mot de passe','Password'),(43,'Inscription','Inscription','Registration'),(44,'Nom','Nom','Surname'),(45,'Prenom','Prenom','Name'),(46,'InfoMdpLegend','Veuillez saisir au moins','Please enter at least'),(47,'UneMajuscule','1 majuscule','1 uppercase'),(48,'UneMinuscule','1 minuscule','1 lowercase'),(49,'UnChiffre','1 chiffre','1 number'),(50,'UnCaractereSpecial','1 caractère spécial ( ! @ & # * ^ $ % +)','1 special character ( ! @ & # * ^ $ % +)'),(51,'MinimumCaractere','8 caractères','8 character'),(52,'Confirmation','Confirmation','Confirmation'),(53,'Reset','Réinitialisation','Reset'),(54,'Envoyer','Envoyer','Send'),(55,'Bonjour','Bonjour','Hello'),(56,'Connexion','Connexion','Log in'),(57,'Deconnexion','Deconnexion','Log out'),(58,'Accueil','Accueil','Home'),(59,'AdresseEmail','Adresse email','Email address'),(60,'Mdp','Mot de passe','Password'),(61,'Inscription','Inscription','Registration'),(62,'Nom','Nom','Surname'),(63,'Prenom','Prenom','Name'),(64,'InfoMdpLegend','Veuillez saisir au moins','Please enter at least'),(65,'UneMajuscule','1 majuscule','1 uppercase'),(66,'UneMinuscule','1 minuscule','1 lowercase'),(67,'UnChiffre','1 chiffre','1 number'),(68,'UnCaractereSpecial','1 caractère spécial ( ! @ & # * ^ $ % +)','1 special character ( ! @ & # * ^ $ % +)'),(69,'MinimumCaractere','8 caractères','8 character'),(70,'Confirmation','Confirmation','Confirmation'),(71,'Reset','Réinitialisation','Reset'),(72,'Envoyer','Envoyer','Send'),(73,'Bonjour','Bonjour','Hello'),(74,'Connexion','Connexion','Log in'),(75,'Deconnexion','Deconnexion','Log out'),(76,'Accueil','Accueil','Home'),(77,'AdresseEmail','Adresse email','Email address'),(78,'Mdp','Mot de passe','Password'),(79,'Inscription','Inscription','Registration'),(80,'Nom','Nom','Surname'),(81,'Prenom','Prenom','Name'),(82,'InfoMdpLegend','Veuillez saisir au moins','Please enter at least'),(83,'UneMajuscule','1 majuscule','1 uppercase'),(84,'UneMinuscule','1 minuscule','1 lowercase'),(85,'UnChiffre','1 chiffre','1 number'),(86,'UnCaractereSpecial','1 caractère spécial ( ! @ & # * ^ $ % +)','1 special character ( ! @ & # * ^ $ % +)'),(87,'MinimumCaractere','8 caractères','8 character'),(88,'Confirmation','Confirmation','Confirmation'),(89,'Reset','Réinitialisation','Reset'),(90,'Envoyer','Envoyer','Send'),(91,'telephone','telephone','phone');
/*!40000 ALTER TABLE `textes` ENABLE KEYS */;
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
  `adresseMail` varchar(50) NOT NULL,
  `telephone` varchar(16) NOT NULL,
  `motDePasse` varchar(50) NOT NULL,
  `role` int(11) DEFAULT NULL COMMENT '2 Admin 1 User',
  `pseudo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idUtilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateurs`
--

LOCK TABLES `utilisateurs` WRITE;
/*!40000 ALTER TABLE `utilisateurs` DISABLE KEYS */;
INSERT INTO `utilisateurs` VALUES (7,'ad','ad','test@gmail.com','615121512','11d437a3e6695447bd1bf2331651049e',2,'ad'),(9,'alan','poson','alan.poson@gmail.com','2147483647','0c2d53364f5e70cdb05768e79ae5f683',1,'alan'),(13,'moktar','moktar','moktar.terki@gmail.com','03-85-98-15-85','1039c5bba2f583c93c62dc41a3cb365f',1,NULL);
/*!40000 ALTER TABLE `utilisateurs` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voitures`
--

LOCK TABLES `voitures` WRITE;
/*!40000 ALTER TABLE `voitures` DISABLE KEYS */;
INSERT INTO `voitures` VALUES (1,'peugeot','206',2),(2,'volvo','340gte',1),(3,'bmw','328i',2),(4,'renault','megane',2),(5,'bmw','i3',1),(6,'renault','kagdar',1),(7,'audi','A5',3);
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

-- Dump completed on 2022-01-26 17:30:20
