-- MySQL dump 10.13  Distrib 5.7.28, for Win32 (AMD64)
--
-- Host: localhost    Database: filrougebdd
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
-- Current Database: `filrougebdd`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `filrougebdd` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `filrougebdd`;

--
-- Table structure for table `adresses`
--

DROP TABLE IF EXISTS `adresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adresses` (
  `IdAdresse` int(11) NOT NULL AUTO_INCREMENT,
  `emailAdresse` varchar(150) NOT NULL,
  `telMobile` varchar(12) NOT NULL,
  `telFixe` varchar(12) DEFAULT NULL,
  `adressePostale` varchar(50) NOT NULL,
  `province` varchar(50) DEFAULT NULL,
  `complementAdresse` varchar(50) DEFAULT NULL,
  `IdVille` int(11) NOT NULL,
  PRIMARY KEY (`IdAdresse`),
  KEY `FK_Adresses_Villes` (`IdVille`),
  CONSTRAINT `FK_Adresses_Villes` FOREIGN KEY (`IdVille`) REFERENCES `villes` (`IdVille`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresses`
--

LOCK TABLES `adresses` WRITE;
/*!40000 ALTER TABLE `adresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `adresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `approvisionnements`
--

DROP TABLE IF EXISTS `approvisionnements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `approvisionnements` (
  `IdApprovisionnement` int(11) NOT NULL AUTO_INCREMENT,
  `IdProduit` int(11) NOT NULL,
  `IdFournisseur` int(11) NOT NULL,
  `refFournisseur` varchar(5) NOT NULL,
  PRIMARY KEY (`IdApprovisionnement`),
  KEY `FK_Approvisionnements_Produits` (`IdProduit`),
  KEY `FK_Approvisionnements_Fournisseurs` (`IdFournisseur`),
  CONSTRAINT `FK_Approvisionnements_Fournisseurs` FOREIGN KEY (`IdFournisseur`) REFERENCES `fournisseurs` (`IdFournisseur`),
  CONSTRAINT `FK_Approvisionnements_Produits` FOREIGN KEY (`IdProduit`) REFERENCES `produits` (`IdProduit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approvisionnements`
--

LOCK TABLES `approvisionnements` WRITE;
/*!40000 ALTER TABLE `approvisionnements` DISABLE KEYS */;
/*!40000 ALTER TABLE `approvisionnements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoriesclient`
--

DROP TABLE IF EXISTS `categoriesclient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoriesclient` (
  `IdCategorieClient` int(11) NOT NULL AUTO_INCREMENT,
  `libelleCategClient` varchar(150) NOT NULL,
  `infoReglement` varchar(50) NOT NULL,
  `coefCategClient` int(11) NOT NULL,
  PRIMARY KEY (`IdCategorieClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoriesclient`
--

LOCK TABLES `categoriesclient` WRITE;
/*!40000 ALTER TABLE `categoriesclient` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoriesclient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `IdUser` int(11) NOT NULL,
  `refClient` varchar(5) NOT NULL,
  `coefClient` int(11) NOT NULL,
  `IdCategorieClient` int(11) NOT NULL,
  PRIMARY KEY (`IdUser`),
  UNIQUE KEY `refClient` (`refClient`),
  KEY `FK_Clients_CategoriesClient` (`IdCategorieClient`),
  CONSTRAINT `FK_Clients_CategoriesClient` FOREIGN KEY (`IdCategorieClient`) REFERENCES `categoriesclient` (`IdCategorieClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commandes` (
  `IdCommande` int(11) NOT NULL AUTO_INCREMENT,
  `NumeroCommande` varchar(10) NOT NULL,
  `dateCommande` date NOT NULL,
  `IdUser` int(11) NOT NULL,
  `IdAdresse` int(11) NOT NULL,
  PRIMARY KEY (`IdCommande`),
  UNIQUE KEY `NumeroCommande` (`NumeroCommande`),
  KEY `FK_Commandes_Clients` (`IdUser`),
  KEY `FK_Commandes_Adresses` (`IdAdresse`),
  CONSTRAINT `FK_Commandes_Adresses` FOREIGN KEY (`IdAdresse`) REFERENCES `adresses` (`IdAdresse`),
  CONSTRAINT `FK_Commandes_Clients` FOREIGN KEY (`IdUser`) REFERENCES `clients` (`IdUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commandes`
--

LOCK TABLES `commandes` WRITE;
/*!40000 ALTER TABLE `commandes` DISABLE KEYS */;
/*!40000 ALTER TABLE `commandes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etatscommande`
--

DROP TABLE IF EXISTS `etatscommande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etatscommande` (
  `IdEtatCommande` int(11) NOT NULL AUTO_INCREMENT,
  `libelleEtatCommande` varchar(50) NOT NULL,
  PRIMARY KEY (`IdEtatCommande`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etatscommande`
--

LOCK TABLES `etatscommande` WRITE;
/*!40000 ALTER TABLE `etatscommande` DISABLE KEYS */;
/*!40000 ALTER TABLE `etatscommande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factures`
--

DROP TABLE IF EXISTS `factures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factures` (
  `IdFacture` int(11) NOT NULL AUTO_INCREMENT,
  `IdReglement` int(11) NOT NULL,
  `IdCommande` int(11) NOT NULL,
  `datePaiement` date NOT NULL,
  `montantPaiement` decimal(19,4) NOT NULL,
  PRIMARY KEY (`IdFacture`),
  KEY `FK_Factures_Reglements` (`IdReglement`),
  KEY `FK_Factures_Commandes` (`IdCommande`),
  CONSTRAINT `FK_Factures_Commandes` FOREIGN KEY (`IdCommande`) REFERENCES `commandes` (`IdCommande`),
  CONSTRAINT `FK_Factures_Reglements` FOREIGN KEY (`IdReglement`) REFERENCES `reglements` (`IdReglement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factures`
--

LOCK TABLES `factures` WRITE;
/*!40000 ALTER TABLE `factures` DISABLE KEYS */;
/*!40000 ALTER TABLE `factures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournisseurs`
--

DROP TABLE IF EXISTS `fournisseurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fournisseurs` (
  `IdFournisseur` int(11) NOT NULL AUTO_INCREMENT,
  `nomFournisseur` varchar(150) NOT NULL,
  PRIMARY KEY (`IdFournisseur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournisseurs`
--

LOCK TABLES `fournisseurs` WRITE;
/*!40000 ALTER TABLE `fournisseurs` DISABLE KEYS */;
/*!40000 ALTER TABLE `fournisseurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historiquetva`
--

DROP TABLE IF EXISTS `historiquetva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historiquetva` (
  `IdHistoriqueTVA` int(11) NOT NULL AUTO_INCREMENT,
  `IdProduit` int(11) NOT NULL,
  `IdTVA` int(11) NOT NULL,
  `dateTVA` date NOT NULL,
  PRIMARY KEY (`IdHistoriqueTVA`),
  KEY `FK_HistoriqueTVA_Produits` (`IdProduit`),
  KEY `FK_HistoriqueTVA_TVA` (`IdTVA`),
  CONSTRAINT `FK_HistoriqueTVA_Produits` FOREIGN KEY (`IdProduit`) REFERENCES `produits` (`IdProduit`),
  CONSTRAINT `FK_HistoriqueTVA_TVA` FOREIGN KEY (`IdTVA`) REFERENCES `tva` (`IdTVA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historiquetva`
--

LOCK TABLES `historiquetva` WRITE;
/*!40000 ALTER TABLE `historiquetva` DISABLE KEYS */;
/*!40000 ALTER TABLE `historiquetva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lignescommande`
--

DROP TABLE IF EXISTS `lignescommande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lignescommande` (
  `IdLigneCommande` int(11) NOT NULL AUTO_INCREMENT,
  `IdProduit` int(11) NOT NULL,
  `IdCommande` int(11) NOT NULL,
  `quantiteProduit` int(11) NOT NULL,
  PRIMARY KEY (`IdLigneCommande`),
  KEY `FK_LigneCommande_Produits` (`IdProduit`),
  KEY `FK_LignesCommande_Commandes` (`IdCommande`),
  CONSTRAINT `FK_LigneCommande_Produits` FOREIGN KEY (`IdProduit`) REFERENCES `produits` (`IdProduit`),
  CONSTRAINT `FK_LignesCommande_Commandes` FOREIGN KEY (`IdCommande`) REFERENCES `commandes` (`IdCommande`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lignescommande`
--

LOCK TABLES `lignescommande` WRITE;
/*!40000 ALTER TABLE `lignescommande` DISABLE KEYS */;
/*!40000 ALTER TABLE `lignescommande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livraisons`
--

DROP TABLE IF EXISTS `livraisons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livraisons` (
  `IdLivraison` int(11) NOT NULL AUTO_INCREMENT,
  `IdCommande` int(11) NOT NULL,
  `IdAdresse` int(11) NOT NULL,
  `dateLivraison` date NOT NULL,
  `quantiteLivraison` int(11) NOT NULL,
  PRIMARY KEY (`IdLivraison`),
  KEY `FK_Livraisons_Commandes` (`IdCommande`),
  KEY `FK_Livraisons_Adresses` (`IdAdresse`),
  CONSTRAINT `FK_Livraisons_Adresses` FOREIGN KEY (`IdAdresse`) REFERENCES `adresses` (`IdAdresse`),
  CONSTRAINT `FK_Livraisons_Commandes` FOREIGN KEY (`IdCommande`) REFERENCES `commandes` (`IdCommande`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livraisons`
--

LOCK TABLES `livraisons` WRITE;
/*!40000 ALTER TABLE `livraisons` DISABLE KEYS */;
/*!40000 ALTER TABLE `livraisons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pays`
--

DROP TABLE IF EXISTS `pays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pays` (
  `IdPays` int(11) NOT NULL AUTO_INCREMENT,
  `nomPays` varchar(50) NOT NULL,
  PRIMARY KEY (`IdPays`),
  UNIQUE KEY `nomPays` (`nomPays`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pays`
--

LOCK TABLES `pays` WRITE;
/*!40000 ALTER TABLE `pays` DISABLE KEYS */;
/*!40000 ALTER TABLE `pays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produits`
--

DROP TABLE IF EXISTS `produits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produits` (
  `IdProduit` int(11) NOT NULL AUTO_INCREMENT,
  `libelleProduit` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `refProduit` varchar(5) NOT NULL,
  `prixHorsTaxe` decimal(19,4) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `stock` int(11) NOT NULL,
  `IdRubrique` int(11) NOT NULL,
  PRIMARY KEY (`IdProduit`),
  UNIQUE KEY `refProduit` (`refProduit`),
  KEY `FK_Produits_Rubriques` (`IdRubrique`),
  CONSTRAINT `FK_Produits_Rubriques` FOREIGN KEY (`IdRubrique`) REFERENCES `rubriques` (`IdRubrique`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produits`
--

LOCK TABLES `produits` WRITE;
/*!40000 ALTER TABLE `produits` DISABLE KEYS */;
/*!40000 ALTER TABLE `produits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `progressionscommande`
--

DROP TABLE IF EXISTS `progressionscommande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `progressionscommande` (
  `IdProgressionsCommande` int(11) NOT NULL AUTO_INCREMENT,
  `IdCommande` int(11) NOT NULL,
  `IdEtatCommande` int(11) NOT NULL,
  `dateEtatCommande` date NOT NULL,
  PRIMARY KEY (`IdProgressionsCommande`),
  KEY `FK_ProgressionsCommande_commandes` (`IdCommande`),
  KEY `FK_ProgressionsCommande_EtatsCommande` (`IdEtatCommande`),
  CONSTRAINT `FK_ProgressionsCommande_EtatsCommande` FOREIGN KEY (`IdEtatCommande`) REFERENCES `etatscommande` (`IdEtatCommande`),
  CONSTRAINT `FK_ProgressionsCommande_commandes` FOREIGN KEY (`IdCommande`) REFERENCES `commandes` (`IdCommande`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progressionscommande`
--

LOCK TABLES `progressionscommande` WRITE;
/*!40000 ALTER TABLE `progressionscommande` DISABLE KEYS */;
/*!40000 ALTER TABLE `progressionscommande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reglements`
--

DROP TABLE IF EXISTS `reglements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reglements` (
  `IdReglement` int(11) NOT NULL AUTO_INCREMENT,
  `typePaiement` varchar(50) NOT NULL,
  PRIMARY KEY (`IdReglement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reglements`
--

LOCK TABLES `reglements` WRITE;
/*!40000 ALTER TABLE `reglements` DISABLE KEYS */;
/*!40000 ALTER TABLE `reglements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `IdRole` int(11) NOT NULL AUTO_INCREMENT,
  `libelleRole` varchar(50) NOT NULL,
  PRIMARY KEY (`IdRole`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubriques`
--

DROP TABLE IF EXISTS `rubriques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rubriques` (
  `IdRubrique` int(11) NOT NULL AUTO_INCREMENT,
  `libelleRubrique` varchar(150) NOT NULL,
  `IdRubriqueMere` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdRubrique`),
  KEY `FK_Rubriques_RubriqueMere` (`IdRubriqueMere`),
  CONSTRAINT `FK_Rubriques_RubriqueMere` FOREIGN KEY (`IdRubriqueMere`) REFERENCES `rubriques` (`IdRubrique`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubriques`
--

LOCK TABLES `rubriques` WRITE;
/*!40000 ALTER TABLE `rubriques` DISABLE KEYS */;
/*!40000 ALTER TABLE `rubriques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tva`
--

DROP TABLE IF EXISTS `tva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tva` (
  `IdTVA` int(11) NOT NULL AUTO_INCREMENT,
  `tauxTVA` int(11) NOT NULL,
  PRIMARY KEY (`IdTVA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tva`
--

LOCK TABLES `tva` WRITE;
/*!40000 ALTER TABLE `tva` DISABLE KEYS */;
/*!40000 ALTER TABLE `tva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `IdUser` int(11) NOT NULL AUTO_INCREMENT,
  `nomUser` varchar(150) NOT NULL,
  `prenomUser` varchar(150) NOT NULL,
  `EmailUser` varchar(150) NOT NULL,
  `mdpUser` varchar(50) NOT NULL,
  `IdRole` int(11) NOT NULL,
  PRIMARY KEY (`IdUser`),
  UNIQUE KEY `EmailUser` (`EmailUser`),
  KEY `FK_Users_Roles` (`IdRole`),
  CONSTRAINT `FK_Users_Roles` FOREIGN KEY (`IdRole`) REFERENCES `roles` (`IdRole`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `villes`
--

DROP TABLE IF EXISTS `villes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `villes` (
  `IdVille` int(11) NOT NULL AUTO_INCREMENT,
  `libelleVIlle` varchar(150) NOT NULL,
  `codePostal` varchar(6) NOT NULL,
  `IdPays` int(11) NOT NULL,
  PRIMARY KEY (`IdVille`),
  KEY `FK_Villes_Pays` (`IdPays`),
  CONSTRAINT `FK_Villes_Pays` FOREIGN KEY (`IdPays`) REFERENCES `pays` (`IdPays`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `villes`
--

LOCK TABLES `villes` WRITE;
/*!40000 ALTER TABLE `villes` DISABLE KEYS */;
/*!40000 ALTER TABLE `villes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-10 20:00:10
