-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: adopteunebete
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
-- Current Database: `adopteunebete`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `adopteunebete` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `adopteunebete`;

--
-- Table structure for table `alimentations`
--

DROP TABLE IF EXISTS `alimentations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alimentations` (
  `Id_alimentation` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_alimentation`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alimentations`
--

LOCK TABLES `alimentations` WRITE;
/*!40000 ALTER TABLE `alimentations` DISABLE KEYS */;
INSERT INTO `alimentations` VALUES (1,'Chocolat'),(2,'Fraises');
/*!40000 ALTER TABLE `alimentations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animaux`
--

DROP TABLE IF EXISTS `animaux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animaux` (
  `Id_Animal` int(11) NOT NULL AUTO_INCREMENT,
  `matricule` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `age` int(11) NOT NULL,
  `Id_user` int(11) DEFAULT NULL,
  `Id_Race` int(11) NOT NULL,
  PRIMARY KEY (`Id_Animal`),
  UNIQUE KEY `matricule` (`matricule`),
  KEY `FK_Animaux_users` (`Id_user`),
  KEY `FK_Animaux_Races` (`Id_Race`),
  CONSTRAINT `FK_Animaux_Races` FOREIGN KEY (`Id_Race`) REFERENCES `races` (`Id_Race`),
  CONSTRAINT `FK_Animaux_users` FOREIGN KEY (`Id_user`) REFERENCES `users` (`Id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animaux`
--

LOCK TABLES `animaux` WRITE;
/*!40000 ALTER TABLE `animaux` DISABLE KEYS */;
INSERT INTO `animaux` VALUES (1,'B2845','Rosko','labrador',3,NULL,2),(2,'C7239','Rockie','serval',2,NULL,1),(3,'C2548','Popy','corgi',4,NULL,5),(4,'F5482','Boby','carlin',2,NULL,3),(5,'F6584','Poussi','maincoon',4,NULL,8),(6,'H659','Dash','lynx',6,NULL,7),(7,'A8546','Edvige','chihuahua',1,NULL,4),(8,'H6584','Cannelle','husky',2,NULL,6),(9,'L5484','Daisy','savannah',3,NULL,9),(10,'P6594','Jade','souris',2,NULL,10),(12,'T2564','Penny','mouton',3,NULL,12),(13,'15656','Guirt','furet',2,NULL,13),(17,'123','pogo','singe',33,NULL,11);
/*!40000 ALTER TABLE `animaux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especes`
--

DROP TABLE IF EXISTS `especes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especes` (
  `Id_Espece` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Espece`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especes`
--

LOCK TABLES `especes` WRITE;
/*!40000 ALTER TABLE `especes` DISABLE KEYS */;
INSERT INTO `especes` VALUES (1,'Canis lupus'),(2,'Félin'),(3,'Mus musculus'),(4,'Homo'),(5,'Mustela putorius furo'),(6,'Mouton');
/*!40000 ALTER TABLE `especes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nutrition`
--

DROP TABLE IF EXISTS `nutrition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nutrition` (
  `Id_nutrition` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Race` int(11) DEFAULT NULL,
  `Id_alimentation` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_nutrition`),
  KEY `FK_Nutrition_Races` (`Id_Race`),
  KEY `FK_Nutrition_alimentations` (`Id_alimentation`),
  CONSTRAINT `FK_Nutrition_Races` FOREIGN KEY (`Id_Race`) REFERENCES `races` (`Id_Race`),
  CONSTRAINT `FK_Nutrition_alimentations` FOREIGN KEY (`Id_alimentation`) REFERENCES `alimentations` (`Id_alimentation`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nutrition`
--

LOCK TABLES `nutrition` WRITE;
/*!40000 ALTER TABLE `nutrition` DISABLE KEYS */;
INSERT INTO `nutrition` VALUES (1,2,1),(2,1,2);
/*!40000 ALTER TABLE `nutrition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `races`
--

DROP TABLE IF EXISTS `races`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `races` (
  `Id_Race` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  `Id_Espece` int(11) NOT NULL,
  PRIMARY KEY (`Id_Race`),
  KEY `FK_Races_Especes` (`Id_Espece`),
  CONSTRAINT `FK_Races_Especes` FOREIGN KEY (`Id_Espece`) REFERENCES `especes` (`Id_Espece`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `races`
--

LOCK TABLES `races` WRITE;
/*!40000 ALTER TABLE `races` DISABLE KEYS */;
INSERT INTO `races` VALUES (1,'Serval',2),(2,'Labrador',1),(3,'Carlin',1),(4,'Chihuahua',1),(5,'Corgi',1),(6,'Husky',1),(7,'Lynx',2),(8,'Maincoon',2),(9,'Savannah',2),(10,'Souris',3),(11,'Singe',4),(12,'Mouton',6),(13,'Furet',5);
/*!40000 ALTER TABLE `races` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `Id_user` int(11) NOT NULL AUTO_INCREMENT,
  `role` tinyint(1) DEFAULT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_user`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,0,'user1','dz97942300934ihzd79ç@'),(2,1,'user2','kjf787482346298dzihij@');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_info_animaux`
--

DROP TABLE IF EXISTS `view_info_animaux`;
/*!50001 DROP VIEW IF EXISTS `view_info_animaux`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_info_animaux` AS SELECT 
 1 AS `Id_Animal`,
 1 AS `matricule`,
 1 AS `nom`,
 1 AS `image`,
 1 AS `age`,
 1 AS `Id_Race`,
 1 AS `libelle_race`*/;
SET character_set_client = @saved_cs_client;

--
-- Current Database: `adopteunebete`
--

USE `adopteunebete`;

--
-- Final view structure for view `view_info_animaux`
--

/*!50001 DROP VIEW IF EXISTS `view_info_animaux`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_info_animaux` AS select `an`.`Id_Animal` AS `Id_Animal`,`an`.`matricule` AS `matricule`,`an`.`nom` AS `nom`,`an`.`image` AS `image`,`an`.`age` AS `age`,`an`.`Id_Race` AS `Id_Race`,`r`.`libelle` AS `libelle_race` from (`animaux` `an` left join `races` `r` on((`an`.`Id_Race` = `r`.`Id_Race`))) where isnull(`an`.`Id_user`) */;
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

-- Dump completed on 2022-06-01 17:20:33
