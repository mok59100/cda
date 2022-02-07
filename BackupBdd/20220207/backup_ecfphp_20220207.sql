-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: ecfphp
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
-- Current Database: `ecfphp`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ecfphp` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ecfphp`;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `IdArticle` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleArticle` varchar(20) DEFAULT NULL,
  `DescriptionArticle` varchar(200) DEFAULT NULL,
  `PrixArticle` double DEFAULT NULL,
  `Photos` varchar(100) DEFAULT NULL,
  `IdTypeArticle` int(11) NOT NULL,
  PRIMARY KEY (`IdArticle`),
  KEY `IdTypeArticle` (`IdTypeArticle`),
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`IdTypeArticle`) REFERENCES `typesarticles` (`IdTypeArticle`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'gomme','gomme',3,'jpg_61f26b02c735c.jpg',2),(2,'eau','bouteille eau 1l',2,'jpg_61f01bbb44d73.jpg',1),(3,'coca','Coca 50cl',2,'jpg_61f01bc85f949.jpg',1),(4,'papier','rame de papier imprimante',2,'jpg_61f01bb34ef8b.jpg',2);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lignespaniers`
--

DROP TABLE IF EXISTS `lignespaniers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lignespaniers` (
  `IdLignePanier` int(11) NOT NULL AUTO_INCREMENT,
  `IdArticle` int(11) DEFAULT NULL,
  `IdPanier` int(11) DEFAULT NULL,
  `Quantite` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdLignePanier`),
  KEY `IdArticle` (`IdArticle`),
  KEY `IdPanier` (`IdPanier`),
  CONSTRAINT `lignespaniers_ibfk_1` FOREIGN KEY (`IdArticle`) REFERENCES `articles` (`IdArticle`),
  CONSTRAINT `lignespaniers_ibfk_2` FOREIGN KEY (`IdPanier`) REFERENCES `paniers` (`IdPanier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lignespaniers`
--

LOCK TABLES `lignespaniers` WRITE;
/*!40000 ALTER TABLE `lignespaniers` DISABLE KEYS */;
/*!40000 ALTER TABLE `lignespaniers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paniers`
--

DROP TABLE IF EXISTS `paniers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paniers` (
  `IdPanier` int(11) NOT NULL AUTO_INCREMENT,
  `IdClient` int(11) DEFAULT NULL,
  `DatePanier` date DEFAULT NULL,
  `AdresseLivraison` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdPanier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paniers`
--

LOCK TABLES `paniers` WRITE;
/*!40000 ALTER TABLE `paniers` DISABLE KEYS */;
/*!40000 ALTER TABLE `paniers` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `textes`
--

LOCK TABLES `textes` WRITE;
/*!40000 ALTER TABLE `textes` DISABLE KEYS */;
INSERT INTO `textes` VALUES (1,'Identification','Identification','Identification'),(2,'MotDePasse','Mot de Passe','Password'),(3,'ConfirmationMotDePasse','Confirmation du mot de passe','Confirm password'),(4,'Role','Role(1: user - 2: admin)','Role(1: user - 2: admin)'),(5,'Produits','Produits','Product'),(6,'Categories','Catégories','Category'),(7,'TexteMenu','Choisissez entre Produits et catégories','Choose between Product and Category'),(8,'Ajouter','Ajouter','Add'),(9,'Editer','Afficher','Show'),(10,'Modifier','Modifier','Modify'),(11,'Supprimer','Supprimer','Delete'),(12,'Libelle','Libelle','Description'),(13,'Prix','Prix','Price'),(14,'DatePeremption','Date de peremption','Expiry date'),(15,'CrudProduit',' un produit',' a product'),(16,'CrudCategorie',' une categorie',' a category'),(17,'Deconnecter','Deconnecter','Disconnect'),(18,'Pseudo','Pseudo','Alias'),(19,'Annuler','Annuler','Cancel'),(20,'ListeProduits','Liste de produits','List product'),(21,'GestionProduit','Gestion des produits','Product management'),(22,'ListeCategories','Liste des Catégories','List Category'),(23,'GestionCategories','Gestion des catégories','Category management'),(24,'Inconnue','418: je suis une théière !','418 I\'m a teapot'),(25,'erreurAjouter','L\'ajout a échoué','Add failed'),(26,'erreurModifier','La modification a échoué','Update failed'),(27,'erreurSupprimer','La suppression a échoué','Delete failed'),(28,'Confirm','La confirmation ne correspond pas au mot de passe','Confirmation not match'),(29,'DoublePseudo','Le pseudo existe deja','Nickname already exists '),(30,'MdpIncorrect','Le mot de passe est incorrect','incorrect password'),(31,'MailUnkn','L\'adresse mail  n\'existe pas','mail unknown'),(32,'titreErreur','Une erreur est survenue','An error occurred');
/*!40000 ALTER TABLE `textes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typesarticles`
--

DROP TABLE IF EXISTS `typesarticles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typesarticles` (
  `IdTypeArticle` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleTypeArticle` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdTypeArticle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typesarticles`
--

LOCK TABLES `typesarticles` WRITE;
/*!40000 ALTER TABLE `typesarticles` DISABLE KEYS */;
INSERT INTO `typesarticles` VALUES (1,'Alimentaire'),(2,'Bureautique');
/*!40000 ALTER TABLE `typesarticles` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateurs`
--

LOCK TABLES `utilisateurs` WRITE;
/*!40000 ALTER TABLE `utilisateurs` DISABLE KEYS */;
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

-- Dump completed on 2022-02-07 17:20:34
