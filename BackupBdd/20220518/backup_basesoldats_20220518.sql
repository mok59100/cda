-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: basesoldats
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
-- Current Database: `basesoldats`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `basesoldats` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `basesoldats`;

--
-- Table structure for table `affectation`
--

DROP TABLE IF EXISTS `affectation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affectation` (
  `idAffectation` int(11) NOT NULL AUTO_INCREMENT,
  `idUnite` int(11) NOT NULL,
  `idSoldat` int(11) NOT NULL,
  `date_affectation` date NOT NULL,
  PRIMARY KEY (`idAffectation`),
  KEY `fk_affectation_unites` (`idUnite`),
  KEY `fk_affectation_soldats` (`idSoldat`),
  CONSTRAINT `fk_affectation_soldats` FOREIGN KEY (`idSoldat`) REFERENCES `soldats` (`idSoldat`),
  CONSTRAINT `fk_affectation_unites` FOREIGN KEY (`idUnite`) REFERENCES `unites` (`idUnite`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affectation`
--

LOCK TABLES `affectation` WRITE;
/*!40000 ALTER TABLE `affectation` DISABLE KEYS */;
INSERT INTO `affectation` VALUES (1,8,24,'1948-09-26'),(3,3,44,'1954-07-18'),(5,5,69,'1941-02-23'),(6,8,20,'1924-12-23'),(7,8,32,'1960-04-17'),(9,8,56,'1953-10-17'),(10,5,35,'1956-08-18'),(13,8,15,'1932-08-24'),(17,10,32,'1960-03-04'),(21,2,55,'1950-01-07'),(23,6,63,'1945-10-14'),(25,6,8,'1928-10-16'),(27,3,9,'1945-01-27'),(28,2,15,'1927-01-20'),(32,7,23,'1936-11-05'),(33,3,19,'1932-03-15'),(34,3,59,'1959-01-20'),(39,9,57,'1932-06-19'),(44,10,42,'1930-12-23'),(45,4,49,'1922-05-08'),(48,5,24,'1947-06-29'),(49,2,15,'1940-12-27'),(52,7,44,'1946-05-01'),(53,6,25,'1955-07-10'),(54,3,65,'1936-04-08'),(55,9,17,'1937-01-30'),(56,9,64,'1944-08-03'),(57,9,34,'1944-10-17'),(58,7,5,'1940-09-12'),(59,9,2,'1940-10-23'),(60,8,47,'1943-04-24'),(61,10,36,'1944-03-10'),(62,3,52,'1950-10-06'),(63,6,32,'1950-03-01'),(64,4,19,'1927-08-04'),(65,5,35,'1953-04-05'),(66,2,43,'1947-02-03'),(67,6,19,'1932-10-30'),(68,4,69,'1926-04-08'),(69,4,34,'1932-03-09'),(70,6,30,'1952-12-07'),(71,2,60,'1925-12-10'),(72,3,36,'1922-03-01'),(73,6,24,'1959-06-18'),(74,2,67,'1945-08-26'),(75,2,18,'1950-01-13'),(76,4,31,'1944-02-07'),(77,2,69,'1957-08-19'),(78,7,67,'1950-10-27'),(79,1,66,'1956-12-28'),(80,7,38,'1932-09-26'),(81,3,29,'1934-07-17'),(82,5,33,'1925-12-26'),(83,1,65,'1924-09-06'),(84,7,59,'1944-01-05'),(85,7,13,'1933-02-02'),(86,8,19,'1933-03-05');
/*!40000 ALTER TABLE `affectation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batailles`
--

DROP TABLE IF EXISTS `batailles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batailles` (
  `idBataille` int(11) NOT NULL AUTO_INCREMENT,
  `lieu_bataille` varchar(50) NOT NULL,
  `date_debut_bataille` date NOT NULL,
  `date_fin_bataille` date NOT NULL,
  PRIMARY KEY (`idBataille`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batailles`
--

LOCK TABLES `batailles` WRITE;
/*!40000 ALTER TABLE `batailles` DISABLE KEYS */;
INSERT INTO `batailles` VALUES (1,'Pepingen','1939-11-21','1940-06-20'),(2,'Auburn','1916-06-16','1970-08-31'),(3,'Piringen','1913-11-25','1964-12-29'),(4,'Crécy-en-Ponthieu','1934-02-14','1962-09-11'),(5,'Castelseprio','1932-12-04','1986-08-02'),(6,'Hines Creek','1905-03-07','1940-09-18'),(7,'Brampton','1917-06-10','1960-06-07'),(8,'Gosnells','1929-01-19','1966-07-04'),(9,'Orvault','1923-07-29','1974-06-18'),(10,'Schönebeck','1911-08-04','1955-02-28');
/*!40000 ALTER TABLE `batailles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blesses`
--

DROP TABLE IF EXISTS `blesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blesses` (
  `idBlesse` int(11) NOT NULL AUTO_INCREMENT,
  `idblessure` int(11) NOT NULL,
  `idBataille` int(11) NOT NULL,
  `idSoldat` int(11) NOT NULL,
  `date_Blessure` date NOT NULL,
  PRIMARY KEY (`idBlesse`),
  KEY `fk_blesses_blessures` (`idblessure`),
  KEY `fk_blesses_batailles` (`idBataille`),
  KEY `fk_blesses_soldats` (`idSoldat`),
  CONSTRAINT `fk_blesses_batailles` FOREIGN KEY (`idBataille`) REFERENCES `batailles` (`idBataille`),
  CONSTRAINT `fk_blesses_blessures` FOREIGN KEY (`idblessure`) REFERENCES `blessures` (`idblessure`),
  CONSTRAINT `fk_blesses_soldats` FOREIGN KEY (`idSoldat`) REFERENCES `soldats` (`idSoldat`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blesses`
--

LOCK TABLES `blesses` WRITE;
/*!40000 ALTER TABLE `blesses` DISABLE KEYS */;
INSERT INTO `blesses` VALUES (3,2,1,3,'1941-07-24'),(4,4,3,91,'1957-07-22'),(5,2,10,11,'1938-05-20'),(6,2,1,14,'1943-12-23'),(7,2,6,90,'1949-08-23'),(8,1,7,59,'1923-11-23'),(9,2,6,70,'1948-12-05'),(10,3,2,3,'1949-12-13'),(11,4,10,71,'1943-12-22'),(12,3,1,44,'1957-05-21'),(13,3,6,17,'1956-10-21'),(14,1,4,60,'1934-11-03'),(15,3,2,94,'1953-04-18'),(16,1,8,92,'1937-10-22'),(17,1,7,45,'1958-10-20'),(19,1,7,56,'1927-04-07'),(20,1,6,95,'1926-01-04'),(21,2,1,77,'1950-06-29'),(22,2,9,3,'1960-04-19'),(23,2,5,99,'1954-07-12'),(24,4,1,5,'1937-05-18'),(25,4,1,76,'1937-04-12'),(26,2,6,37,'1929-09-01'),(27,2,4,50,'1931-07-31'),(28,3,7,60,'1933-09-30'),(29,3,6,15,'1953-10-22'),(30,4,4,30,'1946-11-13'),(31,2,2,84,'1941-10-05'),(32,4,1,17,'1938-06-04'),(33,2,4,11,'1957-04-26'),(34,2,5,81,'1960-08-23'),(35,2,6,51,'1935-06-22'),(36,2,7,88,'1955-10-29'),(37,3,7,57,'1957-08-11'),(38,2,7,27,'1931-07-05'),(39,3,5,26,'1931-04-22'),(40,3,10,7,'1925-06-13'),(41,1,3,80,'1949-10-27'),(42,2,8,73,'1936-04-25'),(43,2,8,95,'1957-12-13'),(44,3,8,40,'1920-08-18'),(45,1,8,59,'1935-06-26'),(46,1,3,14,'1923-06-09'),(47,3,4,17,'1950-10-12'),(48,2,10,9,'1956-02-18'),(49,2,10,64,'1947-02-23'),(50,3,9,3,'1944-04-14'),(51,4,8,62,'1946-03-15'),(52,2,5,79,'1940-08-20'),(53,2,6,66,'1920-05-10'),(54,2,10,16,'1926-09-05'),(55,1,6,33,'1940-01-15'),(56,2,8,87,'1933-06-13'),(57,3,2,23,'1950-06-11'),(58,1,5,95,'1920-09-30'),(59,3,6,2,'1920-11-24'),(60,3,9,99,'1930-03-31'),(61,3,9,97,'1955-10-20'),(62,3,6,36,'1951-11-15'),(63,2,3,26,'1959-07-06'),(64,2,6,22,'1925-08-21'),(65,2,8,85,'1931-03-28'),(66,3,7,54,'1960-01-06'),(67,3,9,46,'1955-02-14'),(68,3,2,36,'1930-02-15'),(69,3,5,50,'1922-12-20'),(70,1,8,93,'1952-03-05'),(71,3,4,69,'1949-10-12'),(72,2,6,75,'1947-02-15'),(73,3,7,94,'1946-10-26'),(74,2,5,52,'1940-05-05'),(75,1,10,41,'1923-02-11'),(76,2,4,75,'1947-03-14'),(77,2,7,94,'1954-11-29'),(78,1,5,92,'1952-10-15'),(79,4,8,47,'1921-07-27'),(80,3,5,54,'1958-08-13'),(81,2,8,22,'1959-04-24'),(82,3,7,10,'1947-04-24'),(83,3,6,82,'1920-02-11'),(84,1,9,13,'1948-05-23'),(85,3,7,16,'1924-07-16'),(86,1,6,83,'1920-07-07'),(87,3,8,97,'1928-07-11'),(88,4,9,60,'1928-02-19'),(89,1,2,50,'1951-09-20'),(90,2,7,48,'1923-10-03'),(91,2,5,43,'1954-10-14'),(92,1,4,44,'1959-03-04'),(93,3,9,11,'1950-01-28'),(94,3,5,29,'1948-01-21'),(95,3,1,50,'1957-11-07'),(96,2,8,95,'1928-09-21'),(97,1,8,11,'1955-06-10'),(98,2,3,82,'1956-10-19'),(99,1,9,28,'1941-01-16'),(100,4,2,26,'1936-04-18'),(101,3,3,67,'1945-04-30'),(102,3,8,22,'1944-03-10'),(103,2,8,60,'1922-04-21'),(104,3,9,68,'1943-11-03'),(105,2,3,86,'1950-03-29'),(106,3,2,9,'1931-12-30'),(107,3,3,98,'1921-05-05'),(108,3,4,94,'1921-09-23'),(109,1,2,31,'1954-06-12'),(110,2,5,50,'1922-06-14'),(111,1,8,17,'1950-03-20'),(112,2,4,51,'1933-08-01'),(113,1,3,63,'1929-10-01'),(114,3,3,14,'1936-06-14'),(115,2,3,80,'1953-05-16'),(116,3,2,81,'1954-08-24'),(117,3,9,66,'1929-07-02'),(118,2,4,62,'1926-06-13'),(119,2,9,45,'1927-11-21');
/*!40000 ALTER TABLE `blesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blessures`
--

DROP TABLE IF EXISTS `blessures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blessures` (
  `idblessure` int(11) NOT NULL AUTO_INCREMENT,
  `type_blessure` varchar(50) NOT NULL,
  `code_blessure` varchar(50) NOT NULL,
  PRIMARY KEY (`idblessure`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blessures`
--

LOCK TABLES `blessures` WRITE;
/*!40000 ALTER TABLE `blessures` DISABLE KEYS */;
INSERT INTO `blessures` VALUES (1,'fracture','frac'),(2,'coupure','coup'),(3,'brulure','brul'),(4,'par balle','balle');
/*!40000 ALTER TABLE `blessures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grades` (
  `idGrade` int(11) NOT NULL AUTO_INCREMENT,
  `libelle_grade` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idGrade`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,' Aspirant '),(2,' Sous-lieutenant '),(3,' Lieutenant '),(4,' Captaine '),(5,' Commandant '),(6,' Lieutenant-colonel '),(7,'Colonel'),(8,'Général'),(9,'général d\'armée');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotions` (
  `idPromotion` int(11) NOT NULL AUTO_INCREMENT,
  `idSoldat` int(11) NOT NULL,
  `idGrade` int(11) NOT NULL,
  `date_promotion` date NOT NULL,
  PRIMARY KEY (`idPromotion`),
  KEY `fk_promotions_soldats` (`idSoldat`),
  KEY `fk_promotions_grades` (`idGrade`),
  CONSTRAINT `fk_promotions_grades` FOREIGN KEY (`idGrade`) REFERENCES `grades` (`idGrade`),
  CONSTRAINT `fk_promotions_soldats` FOREIGN KEY (`idSoldat`) REFERENCES `soldats` (`idSoldat`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES (1,72,4,'1918-01-01'),(2,98,8,'1916-07-13'),(3,96,6,'1914-10-26'),(4,24,6,'1917-04-20'),(5,30,8,'1917-12-03'),(6,10,4,'1917-01-29'),(7,29,4,'1916-09-19'),(8,60,7,'1915-02-09'),(9,38,2,'1915-11-09'),(10,93,7,'1915-10-12'),(11,22,1,'1914-05-11'),(12,80,6,'1915-10-14'),(13,74,2,'1916-08-21'),(14,85,4,'1915-09-30'),(15,71,4,'1916-04-23'),(16,5,4,'1916-11-27'),(17,52,2,'1915-01-03'),(18,6,8,'1917-01-18'),(19,94,7,'1917-10-28'),(20,39,4,'1915-01-17'),(21,39,8,'1914-12-03'),(22,8,2,'1914-05-03'),(23,61,2,'1916-05-01'),(24,50,8,'1914-04-28'),(25,39,1,'1917-06-20'),(26,13,2,'1916-08-28'),(27,27,5,'1914-04-04'),(28,39,7,'1915-01-05'),(29,38,6,'1915-07-23'),(30,10,8,'1914-07-21'),(31,48,1,'1914-11-09'),(32,89,8,'1917-11-08'),(33,22,2,'1916-09-03'),(34,28,6,'1917-09-17'),(35,61,8,'1917-05-20'),(36,11,8,'1916-05-11'),(37,8,1,'1914-06-05'),(38,63,4,'1916-01-27'),(39,37,7,'1914-03-10'),(40,86,5,'1917-01-18'),(41,97,2,'1917-07-08'),(42,52,5,'1914-09-03'),(43,75,8,'1917-10-01'),(44,38,5,'1916-01-28'),(45,73,6,'1917-06-29'),(46,85,4,'1916-05-03'),(47,66,5,'1916-05-25'),(48,79,1,'1915-07-29'),(49,4,5,'1914-02-25'),(50,28,4,'1915-06-23'),(51,55,6,'1916-01-27'),(52,90,1,'1916-05-09'),(53,91,3,'1916-04-10'),(54,39,2,'1917-10-03'),(55,35,7,'1917-02-23'),(56,48,4,'1916-10-13'),(57,21,4,'1917-05-17'),(58,17,3,'1917-03-13'),(59,42,8,'1916-08-12'),(60,101,9,'2020-01-09');
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soldats`
--

DROP TABLE IF EXISTS `soldats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soldats` (
  `idSoldat` int(11) NOT NULL AUTO_INCREMENT,
  `nom_soldat` varchar(50) CHARACTER SET utf8 NOT NULL,
  `prenom_soldat` varchar(50) NOT NULL,
  `date_naissance_soldat` date NOT NULL,
  `date_deces_soldat` date DEFAULT NULL,
  PRIMARY KEY (`idSoldat`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soldats`
--

LOCK TABLES `soldats` WRITE;
/*!40000 ALTER TABLE `soldats` DISABLE KEYS */;
INSERT INTO `soldats` VALUES (1,'D\'artagnan','Charles','1878-03-11','1673-06-25'),(2,' Johns ',' Camille ','1878-10-04','1919-04-28'),(3,' Conley ',' Karen ','1895-11-03','1936-04-04'),(4,' Nolan ',' Brennan ','1877-11-09','1944-02-02'),(5,' Oconnor ',' Adam ','1875-06-16','1910-04-03'),(6,' Mills ',' Gannon ','1888-06-19','1929-09-06'),(7,' Cabrera ',' Hakeem ','1893-04-18','1915-11-05'),(8,' Silva ',' Charlotte ','1890-01-28',NULL),(9,' Guthrie ',' Leilani ','1870-08-29','1914-02-10'),(10,' Gonzales ',' Keith ','1891-03-05','1940-02-27'),(11,' Baldwin ',' Macy ','1873-10-11','1911-08-06'),(12,' Woodard ',' Whitney ','1889-08-11','1917-06-11'),(13,' Ayala ',' Zelda ','1879-05-14',NULL),(14,' Sykes ',' Ezekiel ','1895-08-28','1925-08-30'),(15,' Caldwell ',' Basil ','1891-11-21','1945-08-31'),(16,' Mills ',' Tanya ','1876-06-14','1940-08-11'),(17,' Benjamin ',' Charde ','1894-09-16','1910-06-19'),(18,' Chase ',' Quynn ','1870-05-13','1926-08-19'),(19,' Mcdowell ',' Germaine ','1894-04-14','1933-02-01'),(20,' Patton ',' Akeem ','1889-08-23','1937-02-11'),(21,' Pollard ',' August ','1893-07-02',NULL),(22,' Olsen ',' Lucas ','1876-12-27',NULL),(23,' Conner ',' Brennan ','1872-02-25','1914-09-12'),(24,' Skinner ',' Lillian ','1872-04-07','1942-09-21'),(25,' Kinney ',' Athena ','1894-03-25',NULL),(26,' Craft ',' Ocean ','1874-10-08','1933-12-12'),(27,' Sherman ',' Rafael ','1885-09-25','1921-05-11'),(28,' Watkins ',' Lenore ','1883-10-07','1942-09-24'),(29,' Logan ',' Judah ','1890-10-03','1944-07-09'),(30,' Hendrix ',' Hanna ','1893-03-26',NULL),(31,' Cross ',' Noah ','1878-12-08','1911-03-08'),(32,' Bullock ',' Chadwick ','1891-11-06','1912-10-31'),(33,' Buckner ',' Dara ','1898-10-20','1946-03-05'),(34,' Myers ',' Arsenio ','1884-05-04','1920-02-23'),(35,' Sweet ',' Cecilia ','1891-06-23','1942-06-13'),(36,' Chavez ',' Joshua ','1896-08-14','1946-09-30'),(37,' Pearson ',' Hall ','1893-06-14','1910-01-01'),(38,' Snow ',' Mark ','1891-09-13',NULL),(39,' Cameron ',' Felicia ','1887-03-05','1947-04-26'),(40,' Holman ',' Marsden ','1877-11-03','1919-05-06'),(41,' Charles ',' Brandon ','1885-01-01','1928-10-12'),(42,' Beasley ',' Joseph ','1895-07-07','1912-10-14'),(43,' Wood ',' Ethan ','1886-09-18','1935-11-12'),(44,' Preston ',' Rylee ','1876-02-15','1927-08-24'),(45,' Knox ',' Knox ','1892-10-22','1944-10-03'),(46,' Rocha ',' Palmer ','1871-11-27','1947-01-25'),(47,' Berger ',' Salvador ','1898-10-30',NULL),(48,' Head ',' Matthew ','1892-01-02','1913-08-16'),(49,' Payne ',' Hanae ','1881-11-01',NULL),(50,' Baker ',' Noelle ','1876-12-14','1923-09-08'),(51,' Patrick ',' Nicholas ','1884-12-20','1912-10-14'),(52,' Huff ',' Duncan ','1899-05-26',NULL),(53,' Perkins ',' Drake ','1887-01-30','1945-02-16'),(54,' Barr ',' Declan ','1884-10-26','1939-01-09'),(55,' Cohen ',' Hayley ','1892-02-03','1911-11-26'),(56,' Bennett ',' Alan ','1875-07-11','1940-10-05'),(57,' Valentine ',' Ann ','1899-05-16','1929-11-24'),(58,' Huff ',' Castor ','1884-05-31',NULL),(59,' Ewing ',' Clayton ','1879-09-08','1944-12-03'),(60,' Hobbs ',' Hiram ','1887-10-05','1923-05-17'),(61,' Conway ',' Keelie ','1894-04-13','1937-03-18'),(62,' Mccray ',' Ian ','1899-10-16','1937-06-26'),(63,' Guthrie ',' Grant ','1894-06-25','1919-01-14'),(64,' Carter ',' Joan ','1893-01-25','1941-11-25'),(65,' Bird ',' Risa ','1872-10-06','1918-01-25'),(66,' Conrad ',' Allistair ','1885-01-02','1931-04-23'),(67,' Mayo ',' Marny ','1897-12-07','1919-10-04'),(68,' Barton ',' Kelly ','1889-04-22','1931-09-21'),(69,' Garrett ',' Jenna ','1885-10-03','1924-04-27'),(70,' Adams ',' Lane ','1893-04-08',NULL),(71,' Hayes ',' Jamal ','1880-05-04','1940-07-07'),(72,' Aguirre ',' Marsden ','1893-12-23',NULL),(73,' Ortiz ',' Bruno ','1895-09-17','1933-03-31'),(74,' Schwartz ',' Kasper ','1887-08-18','1916-11-01'),(75,' Rollins ',' Anastasia ','1872-09-02','1927-01-20'),(76,' Newman ',' Emily ','1893-02-12',NULL),(77,' Nolan ',' Slade ','1884-01-28','1924-01-29'),(78,' Carroll ',' Adena ','1874-07-29','1910-10-23'),(79,' Horn ',' Kylan ','1899-09-15','1920-11-25'),(80,' Barnett ',' Renee ','1886-12-03','1921-04-21'),(81,' Barry ',' Addison ','1879-01-27',NULL),(82,' Gregory ',' Anthony ','1873-01-20','1929-01-10'),(83,' Sharp ',' Evangeline ','1886-03-12','1922-02-10'),(84,' Hendrix ',' Chastity ','1873-11-07','1936-06-10'),(85,' Wynn ',' Nevada ','1871-11-12','1944-03-11'),(86,' Wagner ',' Zelenia ','1884-01-25','1925-12-30'),(87,' Justice ',' Nelle ','1874-10-09','1940-03-31'),(88,' Christian ',' Althea ','1886-04-11','1920-12-06'),(89,' Mueller ',' Hector ','1882-05-23',NULL),(90,' Aguirre ',' Dakota ','1880-08-20','1913-11-26'),(91,' Black ',' Blaine ','1873-09-10','1930-03-11'),(92,' Daniel ',' Zachary ','1877-11-23','1921-05-06'),(93,' Page ',' Regina ','1891-08-14','1916-03-01'),(94,' Herman ',' Harlan ','1878-06-25','1922-04-20'),(95,' Frost ',' Richard ','1896-03-15','1942-05-26'),(96,' Mckenzie ',' Ferris ','1876-07-08',NULL),(97,' Tucker ',' Connor ','1893-12-18','1934-01-06'),(98,' Castaneda ',' Yoshio ','1899-10-30','1941-03-18'),(99,' Church ',' Reuben ','1887-03-04','1916-07-29'),(100,' Kane ',' Donna ','1874-06-18','1914-09-30'),(101,'Charpentier','Hervé','1955-09-19',NULL);
/*!40000 ALTER TABLE `soldats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unites`
--

DROP TABLE IF EXISTS `unites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unites` (
  `idUnite` int(11) NOT NULL AUTO_INCREMENT,
  `libelle_unite` varchar(50) NOT NULL,
  PRIMARY KEY (`idUnite`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unites`
--

LOCK TABLES `unites` WRITE;
/*!40000 ALTER TABLE `unites` DISABLE KEYS */;
INSERT INTO `unites` VALUES (1,'Unité 1'),(2,'Unité 2'),(3,'Unité 3'),(4,'Unité 4'),(5,'Unité 5'),(6,'Unité 6'),(7,'Unité 7'),(8,'Unité 8'),(9,'Unité 9'),(10,'Unité 10');
/*!40000 ALTER TABLE `unites` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-18 17:20:33
