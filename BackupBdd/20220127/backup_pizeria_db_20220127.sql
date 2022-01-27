-- MySQL dump 10.13  Distrib 5.7.28, for Win32 (AMD64)
--
-- Host: localhost    Database: pizeria_db
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
-- Current Database: `pizeria_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `pizeria_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `pizeria_db`;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `img_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Pizza','pizzas','..\\assets\\img\\tartufo.jpg'),(2,'Boissons','boissons ','..\\assets\\img\\coca.jpg'),(3,'Dessert','glaces','..\\assets\\img\\tiramisu.jpg');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commande` (
  `Id_commande` int(11) NOT NULL AUTO_INCREMENT,
  `date_de_date` datetime DEFAULT NULL,
  `date_de_livraison` datetime DEFAULT NULL,
  `statut` varchar(255) DEFAULT NULL,
  `Id_users` int(11) NOT NULL,
  PRIMARY KEY (`Id_commande`),
  KEY `Id_users` (`Id_users`),
  CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`Id_users`) REFERENCES `users` (`Id_users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horaire`
--

DROP TABLE IF EXISTS `horaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horaire` (
  `Id_horaire` int(11) NOT NULL AUTO_INCREMENT,
  `jours` varchar(255) DEFAULT NULL,
  `close_hour` time DEFAULT NULL,
  `open_hour` time DEFAULT NULL,
  PRIMARY KEY (`Id_horaire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horaire`
--

LOCK TABLES `horaire` WRITE;
/*!40000 ALTER TABLE `horaire` DISABLE KEYS */;
/*!40000 ALTER TABLE `horaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id_category` (`category_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'tiramisu','xxl',6,'cookies chocolat','..\\assets\\img\\tiramisu.jpg',3),(3,'schweppes','33cl',2,'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.','..\\assets\\img\\schweppes-agrumes.jpg',2),(5,'tonno','xxl',2,'Sauce tomate, mozzarella, chèvre, emmental, Fourme d’Ambert A.O.P.thon','..\\assets\\img\\tonno.jpg',1),(6,'schweppse agrumes','xxl',2,'schweppes agrumes','..\\assets\\img\\schweppes-agrumes.jpg',2),(7,'ventricina','xl',6,'tomate salade ','..\\assets\\img\\ventricina.jpg',1),(8,'coca_cola','xl',2,'Nulla ut erat id mauris vulputate elementum.','..\\assets\\img\\coca.jpg',2),(9,'tartufo','xxl',11,'Sauce tomate, mozzarella, poulet rôti, ananas','..\\assets\\img\\tartufo.jpg',1),(11,'maria-carolina','xxl',13,'Sauce tomate, mozzarella, champignons de Paris, merguez, poulet rôti, crème fraîche légère française','..\\assets\\img\\maria-carolina.jpg',1),(12,'gargonzola','xxl',8,'Sauce tomate, mozzarella, pepperoni halal, duo de poivrons, oignons, piments jalapeños','..\\assets\\img\\gorgonzola.jpg',1),(13,'carciofo','xl',4,'Sauce tomate, mozzarella, jambon halal, champignons de Paris','..\\assets\\img\\carciofo.jpg',1),(14,'tree top pomme','xxl',2,'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.','..\\assets\\img\\jus-de-pomme.jpg',2),(16,'eau gazeuse','xxl',6,'eau','..\\assets\\img\\eau-gazeuse.jpg',2),(20,'tree top','xl',2,'Nunc rhoncus dui vel sem.','..\\assets\\img\\jus-multi-fruits.jpg',2),(22,'capra miele','xl',3,'Sauce tomate, mozzarella, champignons de Paris, oignons, duo de poivrons, olives noires, tomates fraîches françaises, origan','..\\assets\\img\\capra-miele.jpg',1),(25,'proscuitto','xxl',6,'salade jambon de dinde halal tomate poivron','..\\assets\\img\\prosciutto.jpg',1),(27,'carciofo','xl',2,' Sauce tomate, râpé vegan, champignons, oignons, duo de poivrons mélangés, olives noires, tomates fraîches françaises, origan','..\\assets\\img\\carciofo.jpg',1),(28,'eau plate','xl',2,'In hac habitasse platea dictumst.','..\\assets\\img\\eau-plate.jpg',2),(29,'ventricina','xxl',6,'tomate jambon de dinde pivrons','..\\assets\\img\\ventricina.jpg',1),(30,'orangina','xxl',2,'orangina ','..\\assets\\img\\orangina.jpg',2),(31,'tonno salade','xl',6,'salade thon olive tomate cerise fromage','..\\assets\\img\\tonno (1).jpg',1),(33,'orangina','xl',2,'In est risus, auctor sed, tristique in, tempus sit amet, sem.','..\\assets\\img\\orangina.jpg',2),(36,'delphine ','xxl',5,'Crème fraîche légère française, mozzarella, lardons fumés halal, pommes de terre françaises sautées, Reblochon A.O.P. de Savoie, origan\r\n','..\\assets\\img\\delphine.jpg',1),(37,'coca sans sucre','xl',6,'coca','..\\assets\\img\\coca-zero.jpg',2),(38,'napoletana','xxl',2,'Donec posuere metus vitae ipsum. Aliquam non mauris.','..\\assets\\img\\napoletana.jpg',1),(40,'lipton','xxl',2,'Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.','..\\assets\\img\\lipton-ice-tea.jpg',2),(43,'verdura','xxl',6,'\r\nCrème fraîche légère française, mozzarella, poulet rôti, oignons, bacon halal, sauce barbecue\r\n','..\\assets\\img\\verdura.jpg',1),(51,'panna-cotta','xl',6,'chocolate salted caramel','..\\assets\\img\\panna-cotta.jpg',3),(56,'speck','xxl',14,'Crème fraîche légère française, mozzarella, oignons, poulet rôti, champignons de Paris, emmental','..\\assets\\img\\speck.jpg',1),(57,'salmone','xl',3,'\r\nSauce tomate, mozzarella, saumon\r\n','..\\assets\\img\\salmone.jpg',1),(61,'picorini','xl',7,'Sauce barbecue, mozzarella, poulet rôti, merguez, boulettes de bœuf assaisonnées*\r\n','..\\assets\\img\\pecorino.jpg',1),(63,' parma','xxl',13,'Crème fraîche légère française, mozzarella, lardons fumés halal, oignons, jambon halal, champignons de Paris, origan','..\\assets\\img\\parma.jpg',1),(66,'gorgonzola','xxl',6,'Sauce tomate, mozzarella, viande kebab, merguez, oignons, sauce blanche kebab\r\n','..\\assets\\img\\gorgonzola.jpg',1),(70,'buffala salad','xxl',13,'salade tomate mozzarella oignon ','../assets/img/bufala (1).jpg',1),(71,'buffala ','xxl',1,'Crème fraîche légère française, mozzarella, chèvre, miel français\r\n','..\\assets\\img\\bufala.jpg',1),(72,'parma salad','xl',6,'jambon dinde halal tomate salade parmeson,','..\\assets\\img\\parma (1).jpg',1),(74,'calzone-luigi','xl',15,'Sauce tomate, mozzarella, pepperoni halal, jambon halal, champignons de Paris, oignons, duo de poivrons, olives noires, boulettes de bœuf assaisonnées*','..\\assets\\img\\calzone-luigi.jpg',1),(77,'pizza nutella ','xxl',6,'Integer a nibh.','..\\assets\\img\\pizza-nutella.jpg',3),(81,'calzone','xl',10,'Sauce tomate, mozzarella, boulettes de bœuf assaisonnées*, duo de poivrons, oignons, piments jalapeños\r\n','../assets/img/calzone.jpg',1),(93,'antipasti','xl',3,'salade cahampignon courgette tomate oignon piments rouge','..\\assets\\img\\antipasti.jpg',1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_commande`
--

DROP TABLE IF EXISTS `product_commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_commande` (
  `Id_commande` int(11) DEFAULT NULL,
  `Id_product` int(11) DEFAULT NULL,
  `Id_product_commande` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_product_commande`),
  KEY `Id_commande` (`Id_commande`),
  KEY `Id_product` (`Id_product`),
  CONSTRAINT `product_commande_ibfk_1` FOREIGN KEY (`Id_commande`) REFERENCES `commande` (`Id_commande`),
  CONSTRAINT `product_commande_ibfk_2` FOREIGN KEY (`Id_product`) REFERENCES `product` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_commande`
--

LOCK TABLES `product_commande` WRITE;
/*!40000 ALTER TABLE `product_commande` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_price`
--

DROP TABLE IF EXISTS `product_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_size_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_price_product` (`product_id`),
  KEY `fk_product_price_size` (`product_size_id`),
  CONSTRAINT `fk_product_price_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`Id`),
  CONSTRAINT `fk_product_price_size` FOREIGN KEY (`product_size_id`) REFERENCES `product_price` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_price`
--

LOCK TABLES `product_price` WRITE;
/*!40000 ALTER TABLE `product_price` DISABLE KEYS */;
INSERT INTO `product_price` VALUES (1,11.5,5,1),(2,15,5,2),(3,8,5,3),(60,11.5,56,1),(61,15,56,2),(62,8,56,3),(63,11.5,36,1),(64,15,36,2),(65,8,36,3),(69,11.5,71,1),(70,15,71,2),(71,8,71,3),(72,11.5,9,1),(73,15,9,2),(74,8,9,3),(75,11.5,43,1),(76,15,43,2),(77,8,43,3),(78,11.5,11,1),(79,15,11,2),(80,8,11,3),(81,11.5,12,1),(82,15,12,2),(83,8,12,3),(85,15,13,2),(86,8,13,3),(87,11.5,61,1),(88,15,61,2),(89,8,61,3),(90,12,70,1),(91,16,70,2),(92,9,70,3),(94,12,74,1),(95,15,74,2),(96,9,74,3),(97,11.5,93,1),(98,15,93,2),(99,8.5,93,3),(100,11.5,13,1),(101,11.5,22,1),(102,15,22,2),(103,8,22,3),(104,11.5,63,1),(105,15,63,2),(106,8,63,3),(107,11.5,81,1),(108,15,81,2),(109,8,81,3),(110,11.5,27,1),(111,15,27,2),(112,8,27,3),(113,11.5,66,1),(114,15,66,2),(115,8,66,3);
/*!40000 ALTER TABLE `product_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_size`
--

DROP TABLE IF EXISTS `product_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_size`
--

LOCK TABLES `product_size` WRITE;
/*!40000 ALTER TABLE `product_size` DISABLE KEYS */;
INSERT INTO `product_size` VALUES (1,'XL (26cm)'),(2,'XXL (31cm)'),(3,'L (22cm)');
/*!40000 ALTER TABLE `product_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `Id_users` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id_users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-27 17:30:19
