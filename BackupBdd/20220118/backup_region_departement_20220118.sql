-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: region_departement
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
-- Current Database: `region_departement`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `region_departement` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `region_departement`;

--
-- Table structure for table `departements`
--

DROP TABLE IF EXISTS `departements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departements` (
  `idDepartement` int(11) NOT NULL AUTO_INCREMENT,
  `numeroDepartement` varchar(3) NOT NULL,
  `libelleDepartement` varchar(50) NOT NULL,
  `idRegion` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDepartement`),
  KEY `FK_Departement_region` (`idRegion`),
  CONSTRAINT `FK_Departement_region` FOREIGN KEY (`idRegion`) REFERENCES `regions` (`idRegion`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departements`
--

LOCK TABLES `departements` WRITE;
/*!40000 ALTER TABLE `departements` DISABLE KEYS */;
INSERT INTO `departements` VALUES (1,'2','Aisne',7),(2,'3','Allier',1),(3,'4','Alpes-de-Haute-Provence',13),(4,'5','Hautes-Alpes',13),(5,'6','Alpes-Maritimes',13),(6,'7','Ardèche',1),(7,'8','Ardennes',6),(8,'9','Ariège',11),(9,'10','Aube',6),(10,'11','Aude',11),(11,'12','Aveyron',11),(12,'13','Bouches-du-Rhône',13),(13,'14','Calvados',9),(14,'15','Cantal',1),(15,'16','Charente',10),(16,'17','Charente-Maritime',10),(17,'18','Cher',4),(18,'19','Correze',10),(19,'21','Côte-d\'Or',2),(20,'22','Côtes-d\'Armor',3),(21,'23','Creuse',10),(22,'24','Dordogne',10),(23,'25','Doubs',2),(24,'26','Drôme',1),(25,'27','Eure',9),(26,'28','Eure-et-Loir',4),(27,'29','Finistère',3),(28,'2A','Corse-du-Sud',5),(29,'2B','Haute-Corse ',5),(30,'30','Gard',11),(31,'31','Haute-Garonne',11),(32,'32','Gers',11),(33,'33','Gironde',10),(34,'34','Hérault',11),(35,'35','Ille-et-Vilaine',3),(36,'36','Indre',4),(37,'37','Indre-et-Loire',4),(38,'38','Isère',1),(39,'39','Jura',2),(40,'40','Landes',10),(41,'41','Loir-et-Cher',4),(42,'42','Loire',1),(43,'43','Haute-Loire',1),(44,'44','Loire-Atlantique',12),(45,'45','Loiret',4),(46,'46','Lot',11),(47,'47','Lot-et-Garonne',10),(48,'48','Lozère',11),(49,'49','Maine-et-Loire',12),(50,'50','Manche',9),(51,'1','Ain',1),(52,'2','Aisne',7),(53,'3','Allier',1),(54,'4','Alpes-de-Haute-Provence',13),(55,'5','Hautes-Alpes',13),(56,'6','Alpes-Maritimes',13),(57,'7','Ardèche',1),(58,'8','Ardennes',6),(59,'9','Ariège',11),(60,'10','Aube',6),(61,'11','Aude',11),(62,'12','Aveyron',11),(63,'13','Bouches-du-Rhône',13),(64,'14','Calvados',9),(65,'15','Cantal',1),(66,'16','Charente',10),(67,'17','Charente-Maritime',10),(68,'18','Cher',4),(69,'19','Correze',10),(70,'21','Côte-d\'Or',2),(71,'22','Côtes-d\'Armor',3),(72,'23','Creuse',10),(73,'24','Dordogne',10),(74,'25','Doubs',2),(75,'26','Drôme',1),(76,'27','Eure',9),(77,'28','Eure-et-Loir',4),(78,'29','Finistère',3),(79,'2A','Corse-du-Sud',5),(80,'2B','Haute-Corse ',5),(81,'30','Gard',11),(82,'31','Haute-Garonne',11),(83,'32','Gers',11),(84,'33','Gironde',10),(85,'34','Hérault',11),(86,'35','Ille-et-Vilaine',3),(87,'36','Indre',4),(88,'37','Indre-et-Loire',4),(89,'38','Isère',1),(90,'39','Jura',2),(91,'40','Landes',10),(92,'41','Loir-et-Cher',4),(93,'42','Loire',1),(94,'43','Haute-Loire',1),(95,'44','Loire-Atlantique',12),(96,'45','Loiret',4),(97,'46','Lot',11),(98,'47','Lot-et-Garonne',10),(99,'48','Lozère',11),(100,'49','Maine-et-Loire',12),(101,'50','Manche',9),(102,'51','Marne',6),(103,'52','Haute-Marne',6),(104,'53','Mayenne',12),(105,'54','Meurthe-et-Moselle',6),(106,'55','Meuse',6),(107,'56','Morbihan',3),(108,'57','Moselle',6),(109,'58','Nièvre',2),(110,'59','Nord',7),(111,'60','Oise',7),(112,'61','Orne',9),(113,'62','Pas-de-Calais',7),(114,'63','Puy-de-Dôme',1),(115,'64','Pyrénées-Atlantiques',10),(116,'65','Hautes-Pyrénées',11),(117,'66','Pyrénées-Orientales',11),(118,'67','Bas-Rhin',6),(119,'68','Haut-Rhin',6),(120,'69','Rhône',1),(121,'70','Haute-Saône',2),(122,'71','Saône-et-Loire',2),(123,'72','Sarthe',12),(124,'73','Savoie',1),(125,'74','Haute-Savoie',1),(126,'75','Paris',8),(127,'76','Seine-Maritime',9),(128,'77','Seine-et-Marne',8),(129,'78','Yvelines',8),(130,'79','Deux-Sèvres',10),(131,'80','Somme',7),(132,'81','Tarn',11),(133,'82','Tarn-et-Garonne',11),(134,'83','Var',13),(135,'84','Vaucluse',13),(136,'85','Vendée',12),(137,'86','Vienne',10),(138,'87','Haute-Vienne',10),(139,'88','Vosges',6),(140,'89','Yonne',2),(141,'90','Territoire de Belfort',2),(142,'91','Essonne',8),(143,'92','Hauts-de-Seine',8),(144,'93','Seine-Saint-Denis',8),(145,'94','Val-de-Marne',8),(146,'95','Val-d\'Oise',8),(147,'971','Guadeloupe',14),(148,'972','Martinique',14),(149,'973','Guyane',14),(150,'974','La Réunion',14),(151,'975','Saint-Pierre-et-Miquelon',14),(152,'977','Saint-Barthélemy',14),(153,'978','Saint-Martin',14),(154,'984','Terres australes et antarctiques françaises',14),(155,'986','Wallis-et-Futuna',14),(156,'987','Polynésie française',14),(157,'988','Nouvelle-Calédonie',14),(158,'989','Clipperton',14),(159,'976','Mayotte',NULL);
/*!40000 ALTER TABLE `departements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regions` (
  `idRegion` int(11) NOT NULL AUTO_INCREMENT,
  `libelleRegion` varchar(50) NOT NULL,
  `numeroRegion` int(11) NOT NULL,
  `nombreDepartement` int(11) DEFAULT '1',
  PRIMARY KEY (`idRegion`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,'Auvergne-Rhône-Alpes',1,12),(2,'Bourgogne-Franche-Comté',2,8),(3,'Bretagne',3,4),(4,'Centre-Val de Loire',4,6),(5,'Corse',5,2),(6,'Grand-Est',6,10),(7,'Hauts-de-France',7,5),(8,'Ile-de-France',8,8),(9,'Normandie',9,5),(10,'Nouvelle-Aquitaine',10,12),(11,'Occitanie',11,13),(12,'Pays de la Loire',12,5),(13,'Provence-Alpes-Côte d\'Azur',13,6),(14,'DOM-TOM',14,12),(16,'test',3,NULL),(17,'test',3,NULL);
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-18 17:20:36
