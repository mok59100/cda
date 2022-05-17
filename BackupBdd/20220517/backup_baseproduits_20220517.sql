-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: baseproduits
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
-- Current Database: `baseproduits`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `baseproduits` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `baseproduits`;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `idCategorie` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleCategorie` varchar(50) NOT NULL,
  PRIMARY KEY (`idCategorie`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'périssable'),(2,'éternel');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `mavue`
--

DROP TABLE IF EXISTS `mavue`;
/*!50001 DROP VIEW IF EXISTS `mavue`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `mavue` AS SELECT 
 1 AS `idProduit`,
 1 AS `libelleProduit`,
 1 AS `prix`,
 1 AS `dateDePeremption`,
 1 AS `idCategorie`,
 1 AS `image`,
 1 AS `libelleCategorie`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `produits`
--

DROP TABLE IF EXISTS `produits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produits` (
  `idProduit` int(11) NOT NULL AUTO_INCREMENT,
  `libelleProduit` varchar(50) NOT NULL,
  `prix` int(11) NOT NULL,
  `dateDePeremption` date NOT NULL,
  `idCategorie` int(11) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idProduit`),
  KEY `FK_Produit_Categorie` (`idCategorie`),
  CONSTRAINT `FK_Produit_Categorie` FOREIGN KEY (`idCategorie`) REFERENCES `categories` (`idCategorie`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produits`
--

LOCK TABLES `produits` WRITE;
/*!40000 ALTER TABLE `produits` DISABLE KEYS */;
INSERT INTO `produits` VALUES (1,'gomme',2,'2020-11-30',1,NULL),(2,'crayon',1,'2020-11-30',2,NULL),(3,'zet',12,'2021-04-21',2,'IMG/prod_608193848b2b8.png'),(6,'m',1,'2021-04-29',1,'IMG/prod_6081972f86d49.png'),(7,'ty',12,'2021-04-27',1,'IMG/prod_608664feb15c3.jpeg');
/*!40000 ALTER TABLE `produits` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `textes`
--

LOCK TABLES `textes` WRITE;
/*!40000 ALTER TABLE `textes` DISABLE KEYS */;
INSERT INTO `textes` VALUES (1,'Bonjour','Bonjour','Hello'),(2,'Connexion','Connexion','Log in'),(3,'Deconnexion','Deconnexion','Log out'),(4,'Accueil','Accueil','Home'),(5,'AdresseEmail','Adresse email','Email address'),(6,'Mdp','Mot de passe','Password'),(7,'Inscription','Inscription','Registration'),(8,'Nom','Nom','Surname'),(9,'Prenom','Prenom','Name'),(10,'InfoMdpLegend','Veuillez saisir au moins','Please enter at least'),(11,'UneMajuscule','1 majuscule','1 uppercase'),(12,'UneMinuscule','1 minuscule','1 lowercase'),(13,'UnChiffre','1 chiffre','1 number'),(14,'UnCaractereSpecial','1 caractère spécial ( ! @ & # * ^ $ % +)','1 special character ( ! @ & # * ^ $ % +)'),(15,'MinimumCaractere','8 caractères','8 character'),(16,'Confirmation','Confirmation','Confirmation'),(17,'Reset','Réinitialisation','Reset'),(18,'Envoyer','Envoyer','Send'),(19,'Bonjour','Bonjour','Hello'),(20,'Connexion','Connexion','Log in'),(21,'Deconnexion','Deconnexion','Log out'),(22,'Accueil','Accueil','Home'),(23,'AdresseEmail','Adresse email','Email address'),(24,'Mdp','Mot de passe','Password'),(25,'Inscription','Inscription','Registration'),(26,'Nom','Nom','Surname'),(27,'Prenom','Prenom','Name'),(28,'InfoMdpLegend','Veuillez saisir au moins','Please enter at least'),(29,'UneMajuscule','1 majuscule','1 uppercase'),(30,'UneMinuscule','1 minuscule','1 lowercase'),(31,'UnChiffre','1 chiffre','1 number'),(32,'UnCaractereSpecial','1 caractère spécial ( ! @ & # * ^ $ % +)','1 special character ( ! @ & # * ^ $ % +)'),(33,'MinimumCaractere','8 caractères','8 character'),(34,'Confirmation','Confirmation','Confirmation'),(35,'Reset','Réinitialisation','Reset'),(36,'Envoyer','Envoyer','Send');
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
  `motDePasse` varchar(50) NOT NULL,
  `adresseMail` varchar(50) NOT NULL,
  `role` int(11) NOT NULL COMMENT '1 Admin 2 User',
  `pseudo` varchar(50) NOT NULL,
  PRIMARY KEY (`idUtilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateurs`
--

LOCK TABLES `utilisateurs` WRITE;
/*!40000 ALTER TABLE `utilisateurs` DISABLE KEYS */;
INSERT INTO `utilisateurs` VALUES (7,'ad','ad','11d437a3e6695447bd1bf2331651049e','ad',1,'ad'),(8,'u','u','1d0a5a28d53430e7f2293a1f36682f23','u',2,'u');
/*!40000 ALTER TABLE `utilisateurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `baseproduits`
--

USE `baseproduits`;

--
-- Final view structure for view `mavue`
--

/*!50001 DROP VIEW IF EXISTS `mavue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mavue` AS select `produits`.`idProduit` AS `idProduit`,`produits`.`libelleProduit` AS `libelleProduit`,`produits`.`prix` AS `prix`,`produits`.`dateDePeremption` AS `dateDePeremption`,`produits`.`idCategorie` AS `idCategorie`,`produits`.`image` AS `image`,`categories`.`LibelleCategorie` AS `libelleCategorie` from (`produits` join `categories` on((`produits`.`idCategorie` = `categories`.`idCategorie`))) */;
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

-- Dump completed on 2022-05-17 17:20:33
