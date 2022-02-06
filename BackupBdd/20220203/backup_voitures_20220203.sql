<<<<<<< HEAD
-- MySQL dump 10.13  Distrib 5.7.28, for Win32 (AMD64)
--
-- Host: localhost    Database: voitures
-- ------------------------------------------------------
-- Server version	5.7.28
=======
-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: voitures
-- ------------------------------------------------------
-- Server version	5.7.31
>>>>>>> 0da64853af6ba85569fdda00f1791068c00ddb71

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
-- Current Database: `voitures`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `voitures` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `voitures`;

--
-- Table structure for table `marques`
--

DROP TABLE IF EXISTS `marques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marques` (
<<<<<<< HEAD
  `mar_id` int(11) NOT NULL AUTO_INCREMENT,
  `mar_nom` varchar(20) NOT NULL,
  PRIMARY KEY (`mar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
=======
  `marid` int(11) NOT NULL AUTO_INCREMENT,
  `marnom` varchar(20) NOT NULL,
  PRIMARY KEY (`marid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
>>>>>>> 0da64853af6ba85569fdda00f1791068c00ddb71
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marques`
--

LOCK TABLES `marques` WRITE;
/*!40000 ALTER TABLE `marques` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `marques` VALUES (1,'Citroën'),(2,'Peugeot'),(3,'Renault'),(4,'bmw');
=======
INSERT INTO `marques` VALUES (1,'Citroën'),(2,'Peugeot'),(3,'Renault');
>>>>>>> 0da64853af6ba85569fdda00f1791068c00ddb71
/*!40000 ALTER TABLE `marques` ENABLE KEYS */;
UNLOCK TABLES;

--
<<<<<<< HEAD
-- Temporary table structure for view `mavue`
--

DROP TABLE IF EXISTS `mavue`;
/*!50001 DROP VIEW IF EXISTS `mavue`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `mavue` AS SELECT 
 1 AS `mod_id`,
 1 AS `mod_mar_id`,
 1 AS `mod_nom`,
 1 AS `mod_cylindree`,
 1 AS `mod_prix`,
 1 AS `mod_date_dispo`,
 1 AS `mod_date_ajout`,
 1 AS `mar_nom`*/;
SET character_set_client = @saved_cs_client;

--
=======
>>>>>>> 0da64853af6ba85569fdda00f1791068c00ddb71
-- Table structure for table `modeles`
--

DROP TABLE IF EXISTS `modeles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modeles` (
  `mod_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mod_mar_id` int(11) NOT NULL,
  `mod_nom` varchar(20) NOT NULL,
  `mod_cylindree` decimal(2,1) unsigned NOT NULL,
  `mod_prix` int(10) unsigned NOT NULL,
  `mod_date_dispo` date DEFAULT NULL,
  `mod_date_ajout` date DEFAULT NULL,
  PRIMARY KEY (`mod_id`),
  KEY `fk_modeles_mar_id` (`mod_mar_id`),
<<<<<<< HEAD
  CONSTRAINT `fk_modeles_mar_id` FOREIGN KEY (`mod_mar_id`) REFERENCES `marques` (`mar_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
=======
  CONSTRAINT `fk_modeles_mar_id` FOREIGN KEY (`mod_mar_id`) REFERENCES `marques` (`marid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
>>>>>>> 0da64853af6ba85569fdda00f1791068c00ddb71
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modeles`
--

LOCK TABLES `modeles` WRITE;
/*!40000 ALTER TABLE `modeles` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `modeles` VALUES (1,1,'C3',1.0,13500,NULL,'2018-10-18'),(2,1,'Cactus',1.0,18470,'2019-01-02','2018-10-18'),(3,3,'Espace',2.0,40000,'2019-01-02','2018-10-18'),(4,3,'Clio',1.0,14080,'2019-01-02','2018-10-18'),(5,2,'5008',1.2,33250,'2019-01-02','2018-10-18'),(6,2,'308',1.2,23630,'2019-01-02','2018-10-18'),(7,3,'Mégane',1.3,26740,'2019-01-02','2018-10-18'),(8,1,'Picasso',1.2,29100,'2019-01-02','2018-10-18'),(9,3,'Kadjar',1.2,26950,'2019-01-02','2018-10-18'),(10,3,'Koléos',1.5,34900,'2019-01-02','2018-10-18'),(11,4,'325ix',2.5,39000,'2021-12-01','2021-12-02');
=======
INSERT INTO `modeles` VALUES (1,1,'C3',1.0,13500,NULL,'2018-10-18'),(2,1,'Cactus',1.0,18470,'2019-01-02','2018-10-18'),(3,3,'Espace',2.0,40000,'2019-01-02','2018-10-18'),(4,3,'Clio',1.0,14080,'2019-01-02','2018-10-18'),(5,2,'5008',1.2,33250,'2019-01-02','2018-10-18'),(6,2,'308',1.2,23630,'2019-01-02','2018-10-18'),(7,3,'Mégane',1.3,26740,'2019-01-02','2018-10-18'),(8,1,'Picasso',1.2,29100,'2019-01-02','2018-10-18'),(9,3,'Kadjar',1.2,26950,'2019-01-02','2018-10-18'),(10,3,'Koléos',1.5,34900,'2019-01-02','2018-10-18');
>>>>>>> 0da64853af6ba85569fdda00f1791068c00ddb71
/*!40000 ALTER TABLE `modeles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modeles_options`
--

DROP TABLE IF EXISTS `modeles_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modeles_options` (
  `om_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `om_mod_id` int(11) unsigned NOT NULL COMMENT 'Clé de la table modeles',
  `om_opt_id` int(11) unsigned NOT NULL COMMENT 'Clé de la table options',
  PRIMARY KEY (`om_id`),
  KEY `om_mod_id` (`om_mod_id`),
  KEY `om_opt_id` (`om_opt_id`),
  CONSTRAINT `modeles_options_ibfk_1` FOREIGN KEY (`om_mod_id`) REFERENCES `modeles` (`mod_id`),
<<<<<<< HEAD
  CONSTRAINT `modeles_options_ibfk_2` FOREIGN KEY (`om_opt_id`) REFERENCES `options` (`opt_id`)
=======
  CONSTRAINT `modeles_options_ibfk_2` FOREIGN KEY (`om_opt_id`) REFERENCES `options` (`optid`)
>>>>>>> 0da64853af6ba85569fdda00f1791068c00ddb71
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modeles_options`
--

LOCK TABLES `modeles_options` WRITE;
/*!40000 ALTER TABLE `modeles_options` DISABLE KEYS */;
INSERT INTO `modeles_options` VALUES (1,6,2),(2,6,4),(3,5,1),(4,5,3),(5,5,4),(6,5,2);
/*!40000 ALTER TABLE `modeles_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `options` (
<<<<<<< HEAD
  `opt_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `opt_libelle` varchar(50) NOT NULL,
  `opt_prix` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`opt_id`)
=======
  `optid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `optlibelle` varchar(50) NOT NULL,
  `optprix` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`optid`)
>>>>>>> 0da64853af6ba85569fdda00f1791068c00ddb71
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,'Jantes alu',600),(2,'GPS',450),(3,'Toit ouvrant',870),(4,'Peinture métallisée',275);
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;
<<<<<<< HEAD

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
  `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `adresseMail` varchar(50) NOT NULL,
  `motDePasse` varchar(50) NOT NULL,
  `role` int(11) NOT NULL COMMENT '2 Admin 1 User',
  PRIMARY KEY (`idUtilisateur`),
  UNIQUE KEY `adresseMail` (`adresseMail`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateurs`
--

LOCK TABLES `utilisateurs` WRITE;
/*!40000 ALTER TABLE `utilisateurs` DISABLE KEYS */;
INSERT INTO `utilisateurs` VALUES (1,'moktar','moktar','moktar.terki@gmail.com','1039c5bba2f583c93c62dc41a3cb365f',1);
/*!40000 ALTER TABLE `utilisateurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `voitures`
--

USE `voitures`;

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
/*!50001 VIEW `mavue` AS select `modeles`.`mod_id` AS `mod_id`,`modeles`.`mod_mar_id` AS `mod_mar_id`,`modeles`.`mod_nom` AS `mod_nom`,`modeles`.`mod_cylindree` AS `mod_cylindree`,`modeles`.`mod_prix` AS `mod_prix`,`modeles`.`mod_date_dispo` AS `mod_date_dispo`,`modeles`.`mod_date_ajout` AS `mod_date_ajout`,`marques`.`mar_nom` AS `mar_nom` from (`modeles` join `marques` on((`modeles`.`mod_mar_id` = `marques`.`mar_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
=======
>>>>>>> 0da64853af6ba85569fdda00f1791068c00ddb71
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

<<<<<<< HEAD
-- Dump completed on 2022-02-03 17:30:23
=======
-- Dump completed on 2022-02-03 17:20:36
>>>>>>> 0da64853af6ba85569fdda00f1791068c00ddb71
