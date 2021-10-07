-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 06 sep. 2021 à 15:49
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cda`
--
CREATE DATABASE IF NOT EXISTS `cda` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cda`;

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

DROP TABLE IF EXISTS `ville`;
CREATE TABLE IF NOT EXISTS `ville` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `departement` decimal(10,0) NOT NULL,
  `code postale` decimal(10,0) NOT NULL,
  `mise_a_jour` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id`, `nom`, `departement`, `code postale`, `mise_a_jour`) VALUES
(1, 'paris', '75', '75000', '2021-09-06'),
(2, 'lille', '59', '59000', '2021-09-06'),
(3, 'nante', '44', '44000', '2021-09-06'),
(5, 'lens', '62', '62000', '2021-09-06'),
(7, 'halluin', '59', '59250', '2021-09-06');
--
-- Base de données : `exercice1`
--
CREATE DATABASE IF NOT EXISTS `exercice1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `exercice1`;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `idArticle` int(11) NOT NULL AUTO_INCREMENT,
  `descriptionArticle` varchar(50) DEFAULT NULL,
  `prixArticle` int(11) DEFAULT NULL,
  PRIMARY KEY (`idArticle`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`idArticle`, `descriptionArticle`, `prixArticle`) VALUES
(1, 'ciseaux', 6),
(2, 'règle 30 cm', 4),
(3, 'règle 20 cm', 3),
(4, 'stylo plume', 12),
(5, 'feutre tableau blanc', 4),
(6, 'feuille', 2);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `nomClient` varchar(50) DEFAULT NULL,
  `prenomClient` varchar(50) DEFAULT NULL,
  `dateEntreeClient` date DEFAULT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`idClient`, `nomClient`, `prenomClient`, `dateEntreeClient`) VALUES
(1, 'talon', 'marc', '1999-10-22'),
(2, 'talon', 'sophie', '2004-11-16'),
(3, 'talleux', 'vincent', '2005-06-21'),
(4, 'durand', 'sophie', '2006-12-21'),
(5, 'durant', 'serge', '2005-04-05'),
(6, 'dupond', 'yves', '2005-12-04');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
CREATE TABLE IF NOT EXISTS `commandes` (
  `idCommande` int(11) NOT NULL AUTO_INCREMENT,
  `idClient` int(11) DEFAULT NULL,
  `idArticle` int(11) DEFAULT NULL,
  `dateCommande` date DEFAULT NULL,
  `quantiteCommande` int(11) DEFAULT NULL,
  `cde_total` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCommande`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`idCommande`, `idClient`, `idArticle`, `dateCommande`, `quantiteCommande`, `cde_total`) VALUES
(1, 2, 6, '2014-07-07', 9, 18),
(2, 2, 5, '2014-07-08', 1, 4),
(3, 3, 1, '2014-07-09', 12, 72),
(4, 4, 5, '2014-07-08', 2, 8),
(5, 5, 1, '2014-07-07', 5, 30),
(6, 5, 2, '2014-07-07', 1, 4);
--
-- Base de données : `exercice3`
--
CREATE DATABASE IF NOT EXISTS `exercice3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `exercice3`;

-- --------------------------------------------------------

--
-- Structure de la table `avoir_note`
--

DROP TABLE IF EXISTS `avoir_note`;
CREATE TABLE IF NOT EXISTS `avoir_note` (
  `idAvoirNote` int(11) NOT NULL AUTO_INCREMENT,
  `idEtudiant` int(11) DEFAULT NULL,
  `idEpreuve` int(11) DEFAULT NULL,
  `note` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAvoirNote`),
  KEY `FK_AvoirNote_Epreuves` (`idEpreuve`),
  KEY `FK_AvoirNote_Etudiants` (`idEtudiant`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `avoir_note`
--

INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES
(1, 1, 1, 15),
(2, 2, 1, 8),
(3, 3, 1, 7),
(4, 4, 1, 11),
(5, 5, 1, 15),
(6, 6, 1, 16),
(7, 7, 1, 1),
(8, 17, 1, 6),
(9, 18, 1, 11),
(10, 1, 2, 12),
(11, 2, 2, 12),
(12, 3, 2, 3),
(13, 4, 2, 15),
(14, 5, 2, 9),
(15, 6, 2, 11),
(16, 7, 2, 13),
(17, 17, 2, 19),
(18, 18, 2, 6),
(19, 8, 3, 8),
(20, 9, 3, 14),
(21, 10, 3, 14),
(22, 11, 3, 11),
(23, 12, 3, 6),
(24, 13, 3, 3),
(25, 14, 3, 20),
(26, 15, 3, 12),
(27, 16, 3, 11),
(28, 8, 4, 7),
(29, 9, 4, 11),
(30, 10, 4, 12),
(31, 11, 4, 3),
(32, 12, 4, 20),
(33, 13, 4, 12),
(34, 14, 4, 10),
(35, 15, 4, 8),
(36, 16, 4, 10),
(37, 17, 4, 8),
(38, 1, 7, 10),
(39, 2, 7, 8),
(40, 3, 7, 5),
(41, 4, 7, 9),
(42, 17, 3, 15);

-- --------------------------------------------------------

--
-- Structure de la table `enseignants`
--

DROP TABLE IF EXISTS `enseignants`;
CREATE TABLE IF NOT EXISTS `enseignants` (
  `idEnseignant` int(11) NOT NULL AUTO_INCREMENT,
  `nomEnseignant` varchar(20) NOT NULL,
  `prenomEnseignant` varchar(20) DEFAULT NULL,
  `fonctionEnseignant` varchar(25) DEFAULT NULL,
  `adresseEnseignant` varchar(40) DEFAULT NULL,
  `villeEnseignant` varchar(10) DEFAULT NULL,
  `codePostalEnseignant` int(11) DEFAULT NULL,
  `telephoneEnseignant` varchar(14) DEFAULT NULL,
  `dateNaissanceEnseignant` date DEFAULT NULL,
  `dateEmbaucheEnseignant` date DEFAULT NULL,
  PRIMARY KEY (`idEnseignant`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `enseignants`
--

INSERT INTO `enseignants` (`idEnseignant`, `nomEnseignant`, `prenomEnseignant`, `fonctionEnseignant`, `adresseEnseignant`, `villeEnseignant`, `codePostalEnseignant`, `telephoneEnseignant`, `dateNaissanceEnseignant`, `dateEmbaucheEnseignant`) VALUES
(1, 'talon', 'isabelle', 'MAITRE DE CONFERENCES', '12,rue des lilas', 'marseille', 13000, '29-89-76-30', '1965-05-30', '1991-10-01'),
(2, 'pelletier', 'séverine', 'CERTIFIE', '213,avenue de londres', 'calais', 62100, '21-54-87-61', '1975-04-21', '2014-09-01'),
(3, 'roseau', 'alain', 'AGREGE', '12,allee des mimosas', 'calais', 62100, '21-65-87-43', '1960-01-02', '1991-10-01'),
(4, 'preux', 'erick', 'CERTIFIE', '76,rue charles de gaulle', 'lyon', 69000, '30-87-21-54', '1969-11-09', '1995-10-01'),
(5, 'roussel', 'philippe', 'MAITRE DE CONFERENCES', '43,rue des cogognes', 'lille', 59000, '28-90-86-64', '1966-01-21', '1990-10-12'),
(6, 'renaud', 'leon', 'MAITRE DE CONFERENCES', '34,allee luoia', 'lille', 59000, '28-29-30-31', '1968-12-12', '1994-10-10'),
(7, 'delignieres', 'benedicte', 'MAITRE DE CONFERENCES', '124,allee rouids', 'lyon', 69000, '45-87-91-03', '1964-10-13', '1991-10-01'),
(8, 'robillard', 'marcel', 'AGREGE', '12,route de paris', 'lille', 59000, '28-28-39-39', '1965-12-12', '1995-10-01'),
(9, 'savasta', 'sophie', 'CERTIFIE', '32,rue luois david', 'calais', 62100, '21-78-64-54', '1959-10-09', '1996-10-01'),
(10, 'cayron', 'isabelle', 'AGREGE', '56,rue de majorettes', 'lille', 59000, '28-98-59-01', '1965-09-09', '1993-10-01'),
(11, 'pacou', 'alain', 'AGREGE', '34,rue monsigny', 'saint omer', 62300, '21-94-63-20', '1978-12-01', '1998-10-01');

-- --------------------------------------------------------

--
-- Structure de la table `epreuves`
--

DROP TABLE IF EXISTS `epreuves`;
CREATE TABLE IF NOT EXISTS `epreuves` (
  `idEpreuve` int(11) NOT NULL AUTO_INCREMENT,
  `libelleEpreuve` varchar(20) DEFAULT NULL,
  `idEnseignantEpreuve` int(11) NOT NULL,
  `idMatiereEpreuve` int(11) NOT NULL,
  `dateEpreuve` date DEFAULT NULL,
  `CoefficientEpreuve` int(11) NOT NULL,
  `anneeEpreuve` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEpreuve`),
  KEY `FK_epreuves_enseignants` (`idEnseignantEpreuve`),
  KEY `FK_epreuves_matieres` (`idMatiereEpreuve`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `epreuves`
--

INSERT INTO `epreuves` (`idEpreuve`, `libelleEpreuve`, `idEnseignantEpreuve`, `idMatiereEpreuve`, `dateEpreuve`, `CoefficientEpreuve`, `anneeEpreuve`) VALUES
(1, 'interro anglais', 9, 1, '2014-09-12', 1, 1),
(2, 'partiel maths', 3, 8, '2014-09-13', 3, 1),
(3, 'partiel BD', 1, 2, '2014-09-18', 4, 2),
(4, 'partiel UNIX', 7, 3, '2014-10-01', 3, 2),
(5, 'interro BD', 1, 2, '2014-10-12', 1, 2),
(6, 'interro maths', 3, 8, '2014-10-12', 4, 1),
(7, 'interro écrite', 9, 1, '1996-10-21', 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

DROP TABLE IF EXISTS `etudiants`;
CREATE TABLE IF NOT EXISTS `etudiants` (
  `idEtudiant` int(11) NOT NULL AUTO_INCREMENT,
  `nomEtudiant` varchar(20) NOT NULL,
  `prenomEtudiant` varchar(50) NOT NULL,
  `adresseEtudiant` varchar(40) DEFAULT NULL,
  `villeEtudiant` varchar(10) DEFAULT NULL,
  `codePostalEtudiant` int(11) DEFAULT NULL,
  `telephoneEtudiant` varchar(14) DEFAULT NULL,
  `dateEntreeEtudiant` date DEFAULT NULL,
  `anneeEtudiant` int(11) DEFAULT NULL,
  `remarqueEtudiant` varchar(40) DEFAULT NULL,
  `sexeEtudiant` char(1) DEFAULT NULL,
  `dateNaissanceEtudiant` date DEFAULT NULL,
  `HOBBY` varchar(20) DEFAULT 'Sport',
  PRIMARY KEY (`idEtudiant`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`idEtudiant`, `nomEtudiant`, `prenomEtudiant`, `adresseEtudiant`, `villeEtudiant`, `codePostalEtudiant`, `telephoneEtudiant`, `dateEntreeEtudiant`, `anneeEtudiant`, `remarqueEtudiant`, `sexeEtudiant`, `dateNaissanceEtudiant`, `HOBBY`) VALUES
(1, 'roblin', 'lea', '12,bd de la liberte', 'calais', 62100, '21345678', '2014-09-01', 1, '', 'F', '1995-01-14', 'Sport'),
(2, 'macarthur', 'leon', '121,bd gambetta', 'calais', 62100, '21-30-65-09', '2014-09-01', 1, '', 'M', '1994-04-12', 'Sport'),
(3, 'minol', 'luc', '9,rue des prairies', 'boulogne', 62200, '21-30-20-10', '2014-09-01', 1, '', 'M', '1997-03-12', 'Sport'),
(4, 'bagnole', 'sophie', '12,rue des capucines', 'wimereux', 62930, '21-89-04-30', '2014-09-01', 1, '', 'F', '1996-03-21', 'Sport'),
(5, 'bury', 'marc', '67,allee ronde', 'marcq', 62300, '21-90-87-65', '2014-09-01', 1, '', 'M', '1993-02-05', 'Sport'),
(6, 'vendraux', 'marc', '5,rue de marseille', 'calais', 62100, '21-96-00-09', '2013-09-01', 1, 'a redouble sa premiere annee', 'M', '1996-01-21', 'Sport'),
(7, 'vendermaele', 'helene', '456,rue de paris', 'boulogne', 62200, '21-45-45-60', '2014-09-01', 1, '', 'F', '1995-03-30', 'Sport'),
(8, 'besson', 'loic', '3,allee carpentier', 'dunkerque', 59300, '28-90-89-78', '2014-09-01', 2, '', 'M', '1994-05-21', 'Sport'),
(9, 'godart', 'jean-paul', '123,rue de lens', 'marck', 59870, '28-09-87-65', '2013-09-01', 2, 'a double sa seconde annee', 'M', '1993-01-12', 'Sport'),
(10, 'beaux', 'marie', '1,allee des cygnes', 'dunkerque', 59100, '21-30-87-90', '2014-09-01', 2, NULL, 'F', '1996-04-12', 'Sport'),
(11, 'turini', 'elsa', '12,route de paris', 'boulogne', 62200, '21-32-47-97', '2014-09-01', 2, NULL, 'F', '1996-07-17', 'Sport'),
(12, 'torelle', 'elise', '123,vallee du denacre', 'boulogne', 62200, '21-67-86-90', '2014-09-01', 2, NULL, 'F', '1997-04-16', 'Sport'),
(13, 'pharis', 'pierre', '12,avenue foch', 'calais', 62100, '21-21-85-90', '2014-09-01', 2, NULL, 'M', '1996-03-18', 'Sport'),
(14, 'ephyre', 'luc', '12,rue de lyon', 'calais', 62100, '21-35-32-90', '2014-09-01', 2, NULL, 'M', '1995-01-21', 'Sport'),
(15, 'leclercq', 'jules', '12,allee des ravins', 'boulogne', 62200, '21-36-71-92', '2014-09-01', 2, NULL, 'M', '1994-05-19', 'Sport'),
(16, 'dupont', 'luc', '21,avenue monsigny', 'calais', 62200, '21-21-34-99', '2014-09-01', 2, NULL, 'M', '1996-11-02', 'Sport'),
(17, 'marke', 'loic', '312,route de paris', 'wimereux', 62930, '21-87-87-71', '2014-09-01', 2, NULL, 'M', '1996-11-12', 'Sport'),
(18, 'dewa', 'leon', '121,allee des eglantines', 'dunkerque', 59100, '28-30-87-90', '2014-09-01', 2, NULL, 'M', '1997-04-03', 'Sport');

-- --------------------------------------------------------

--
-- Structure de la table `faire_cours`
--

DROP TABLE IF EXISTS `faire_cours`;
CREATE TABLE IF NOT EXISTS `faire_cours` (
  `idFaireCours` int(11) NOT NULL AUTO_INCREMENT,
  `idEnseignant` int(11) DEFAULT NULL,
  `idMatiere` int(11) DEFAULT NULL,
  `annee` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFaireCours`),
  KEY `FK_FaireCours_Enseignants` (`idEnseignant`),
  KEY `FK_FaireCours_Matieres` (`idMatiere`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `faire_cours`
--

INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES
(1, 1, 2, 2),
(2, 1, 10, 2),
(3, 2, 4, 1),
(4, 2, 5, 1),
(5, 2, 11, 1),
(6, 2, 11, 2),
(7, 3, 8, 2),
(8, 3, 13, 1),
(9, 4, 14, 1),
(10, 5, 12, 1),
(11, 5, 12, 2),
(12, 6, 3, 2),
(13, 6, 3, 1),
(14, 6, 6, 2),
(15, 7, 13, 1),
(16, 7, 7, 2),
(17, 7, 3, 2),
(18, 8, 10, 1),
(19, 8, 13, 1),
(20, 9, 1, 1),
(21, 9, 1, 2),
(22, 10, 9, 1),
(23, 10, 9, 2),
(24, 11, 8, 1);

-- --------------------------------------------------------

--
-- Structure de la table `matieres`
--

DROP TABLE IF EXISTS `matieres`;
CREATE TABLE IF NOT EXISTS `matieres` (
  `idMatiere` int(11) NOT NULL AUTO_INCREMENT,
  `nomMatiere` varchar(15) NOT NULL,
  `idModule` int(11) DEFAULT NULL,
  `coefficientMatiere` int(11) DEFAULT NULL,
  PRIMARY KEY (`idMatiere`),
  KEY `FK_matieres_modules` (`idModule`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `matieres`
--

INSERT INTO `matieres` (`idMatiere`, `nomMatiere`, `idModule`, `coefficientMatiere`) VALUES
(1, 'anglais', 4, 2),
(2, 'BD', 1, 5),
(3, 'UNIX', 1, 5),
(4, 'access', 1, 1),
(5, 'bureautique', 1, 2),
(6, 'C', 1, 5),
(7, 'Prog avancee', 1, 3),
(8, 'mathematiques', 2, 1),
(9, 'expression', 4, 2),
(10, 'ACSI', 1, 7),
(11, 'economie', 3, 2),
(12, 'gestion', 3, 2),
(13, 'algorithmique', 1, 5),
(14, 'architecture', 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `idModule` int(11) NOT NULL AUTO_INCREMENT,
  `nomModule` varchar(15) NOT NULL,
  `coefficientModule` int(11) DEFAULT NULL,
  PRIMARY KEY (`idModule`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `modules`
--

INSERT INTO `modules` (`idModule`, `nomModule`, `coefficientModule`) VALUES
(1, 'informatique', 15),
(2, 'mathematiques', 5),
(3, 'EOG', 5),
(4, 'LEC', 5);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `avoir_note`
--
ALTER TABLE `avoir_note`
  ADD CONSTRAINT `FK_AvoirNote_Epreuves` FOREIGN KEY (`idEpreuve`) REFERENCES `epreuves` (`idEpreuve`),
  ADD CONSTRAINT `FK_AvoirNote_Etudiants` FOREIGN KEY (`idEtudiant`) REFERENCES `etudiants` (`idEtudiant`);

--
-- Contraintes pour la table `epreuves`
--
ALTER TABLE `epreuves`
  ADD CONSTRAINT `FK_epreuves_enseignants` FOREIGN KEY (`idEnseignantEpreuve`) REFERENCES `enseignants` (`idEnseignant`),
  ADD CONSTRAINT `FK_epreuves_matieres` FOREIGN KEY (`idMatiereEpreuve`) REFERENCES `matieres` (`idMatiere`);

--
-- Contraintes pour la table `faire_cours`
--
ALTER TABLE `faire_cours`
  ADD CONSTRAINT `FK_FaireCours_Enseignants` FOREIGN KEY (`idEnseignant`) REFERENCES `enseignants` (`idEnseignant`),
  ADD CONSTRAINT `FK_FaireCours_Matieres` FOREIGN KEY (`idMatiere`) REFERENCES `matieres` (`idMatiere`);

--
-- Contraintes pour la table `matieres`
--
ALTER TABLE `matieres`
  ADD CONSTRAINT `FK_matieres_modules` FOREIGN KEY (`idModule`) REFERENCES `modules` (`idModule`);
--
-- Base de données : `gestion_hotels`
--
CREATE DATABASE IF NOT EXISTS `gestion_hotels` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `gestion_hotels`;

-- --------------------------------------------------------

--
-- Structure de la table `chambres`
--

DROP TABLE IF EXISTS `chambres`;
CREATE TABLE IF NOT EXISTS `chambres` (
  `IdChambre` int(11) NOT NULL,
  `numChambre` int(11) NOT NULL,
  `typeChambre` int(11) NOT NULL,
  `capaciteChambre` int(11) NOT NULL,
  `idHotel` int(11) NOT NULL,
  PRIMARY KEY (`IdChambre`),
  KEY `FK_Chambres_idHotel` (`idHotel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `chambres`
--

INSERT INTO `chambres` (`IdChambre`, `numChambre`, `typeChambre`, `capaciteChambre`, `idHotel`) VALUES
(1, 101, 1, 1, 1),
(2, 102, 1, 2, 1),
(3, 103, 1, 1, 1),
(4, 104, 1, 2, 2),
(5, 105, 1, 2, 2),
(6, 106, 1, 1, 2),
(7, 107, 1, 3, 3),
(8, 108, 1, 1, 3),
(9, 109, 1, 2, 3),
(10, 235, 1, 1, 4),
(11, 157, 1, 1, 4),
(12, 874, 1, 1, 7),
(13, 125, 1, 5, 7),
(14, 101, 1, 3, 6),
(15, 102, 1, 3, 6),
(16, 103, 1, 2, 10),
(17, 104, 1, 3, 15),
(18, 105, 1, 3, 6),
(19, 106, 1, 1, 15),
(20, 107, 1, 1, 11),
(21, 108, 1, 2, 13),
(22, 109, 1, 2, 10),
(23, 235, 1, 3, 12),
(24, 157, 1, 1, 11),
(25, 874, 1, 2, 7),
(26, 125, 1, 1, 9),
(27, 101, 1, 3, 8),
(28, 102, 1, 3, 15),
(29, 103, 1, 1, 11),
(30, 104, 1, 1, 11),
(31, 105, 1, 1, 13),
(32, 106, 1, 2, 15),
(33, 107, 1, 2, 12),
(34, 108, 1, 1, 9),
(35, 109, 1, 3, 13),
(36, 235, 1, 3, 8),
(37, 157, 1, 3, 14),
(38, 874, 1, 1, 8),
(39, 125, 1, 2, 10);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `nomClient` varchar(25) NOT NULL,
  `prenomClient` varchar(25) NOT NULL,
  `adresseClient` varchar(250) NOT NULL,
  `villeClient` varchar(25) NOT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`idClient`, `nomClient`, `prenomClient`, `adresseClient`, `villeClient`) VALUES
(1, 'DOE', 'John', 'Rue Du General Leclerc', 'Chatenay Malabry'),
(2, 'HOMME', 'Josh', 'Rue Danton', 'Palm Desert'),
(3, 'PAUL', 'Weller', 'Rue Hoche', 'Londres'),
(4, 'WHITE', 'Jack', 'Allee Gustave Eiffel', 'Detroit'),
(5, 'CLAYPOOL', 'Les', 'Rue Jean Pierre Timbaud', 'San Francisco'),
(6, 'SQUIRE', 'Chris', 'Place Paul Vaillant Couturier', 'Londres'),
(7, 'WOOD', 'Ronnie', 'Rue Erevan', 'Londres'),
(8, 'THUNDERS', 'Johnny', 'Rue Du General Leclerc', 'New York'),
(9, 'JEUNEMAITRE', 'Eric', 'Rue Du General Leclerc', 'Chaville'),
(10, 'KARAM', 'Patrick', 'Rue Danton', 'Courbevoie'),
(11, 'RUFET', 'Corinne', 'Rue Hoche', 'Le Plessis Robinson'),
(12, 'SAINT JUST ', 'Wallerand', 'Allee Gustave Eiffel', 'Marnes La Coquette'),
(13, 'SANTINI', 'Jean-Luc', 'Rue Jean Pierre Timbaud', 'Chatenay Malabry'),
(14, 'AIT', 'Eddie', 'Place Paul Vaillant Couturier', 'Le Plessis Robinson'),
(15, 'BARBOTIN', 'Eddie', 'Rue Erevan', 'Chatenay Malabry'),
(16, 'BERESSI', 'Isabelle', 'Rue Du General Leclerc', 'Londres'),
(17, 'CAMARA', 'Lamine', 'Rue Ernest Renan', 'Antony'),
(18, 'CECCONI', 'Frank', 'Rue Georges Marie', 'Chatenay Malabry'),
(19, 'CHEVRON', 'Eric', 'Boulevard Gallieni', 'Suresnes'),
(20, 'CIUNTU', 'Marie-Carole', 'Esplanade Du Belvedere', 'Meudon');

-- --------------------------------------------------------

--
-- Structure de la table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
CREATE TABLE IF NOT EXISTS `hotels` (
  `idHotel` int(11) NOT NULL AUTO_INCREMENT,
  `nomHotel` varchar(25) NOT NULL,
  `categorieHotel` int(11) NOT NULL,
  `adresseHotel` varchar(25) NOT NULL,
  `villeHotel` varchar(25) NOT NULL,
  `idStation` int(11) NOT NULL,
  PRIMARY KEY (`idHotel`),
  KEY `FK_Hotels_idStation` (`idStation`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `hotels`
--

INSERT INTO `hotels` (`idHotel`, `nomHotel`, `categorieHotel`, `adresseHotel`, `villeHotel`, `idStation`) VALUES
(1, 'Le Magnifique', 3, 'rue du bas', 'Pralo', 1),
(2, 'Hotel du haut', 1, 'rue du haut', 'Pralo', 1),
(3, 'Le Narval', 3, 'place de la liberation', 'Vonten', 2),
(4, 'Les Pissenlis', 4, 'place du 14 juillet', 'Bretou', 2),
(5, 'RR Hotel', 5, 'place du bas', 'Bretou', 2),
(6, 'La Brique', 2, 'place du haut', 'Bretou', 2),
(7, 'Le Beau Rivage', 3, 'place du centre', 'Toras', 3),
(8, 'Résidence les marmottes', 1, '1 Chemin des randonneurs', 'Alpe d Huez', 6),
(9, 'Résidence les edelweiss', 5, '2 Rue des sapins', 'Areches', 2),
(10, 'Résidence les panoramas', 4, '7 Avenue de la neige', 'Beaufort', 2),
(11, 'Résidence les sapins', 5, '8 Chemin des pissenlits', 'Aussois', 4),
(12, 'Chalets les marmottes', 3, '10 Rue des etables', 'Avoriaz', 3),
(13, 'Chalets les edelweiss', 3, '8 Avenue des sapins', 'Alpe d Huez', 8),
(14, 'Chalets les panoramas', 2, '3 Chemin de la neige', 'Areches', 6),
(15, 'Chalets les sapins', 5, '3 Rue des pissenlits', 'Beaufort', 8);

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE IF NOT EXISTS `reservations` (
  `idReservation` int(11) NOT NULL AUTO_INCREMENT,
  `dateReservationSejour` date NOT NULL,
  `dateDebutSejour` date NOT NULL,
  `dateFinSejour` date NOT NULL,
  `prixSejour` int(11) NOT NULL,
  `arrhesSejour` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `IdChambre` int(11) NOT NULL,
  PRIMARY KEY (`idReservation`),
  KEY `FK_reservation_idClient` (`idClient`),
  KEY `FK_reservation_IdChambre` (`IdChambre`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`idReservation`, `dateReservationSejour`, `dateDebutSejour`, `dateFinSejour`, `prixSejour`, `arrhesSejour`, `idClient`, `IdChambre`) VALUES
(3, '2019-04-20', '2019-05-07', '2019-05-09', 2400, 800, 1, 1),
(4, '2019-11-04', '2019-11-13', '2019-11-17', 400, 50, 3, 1),
(5, '2020-01-11', '2020-02-12', '2020-02-18', 3400, 100, 2, 2),
(6, '2019-06-19', '2019-08-05', '2019-08-18', 7200, 180, 4, 2),
(7, '2019-04-02', '2019-04-29', '2019-05-03', 1400, 450, 5, 3),
(8, '2019-10-20', '2019-12-01', '2019-12-15', 2400, 780, 6, 4),
(9, '2019-02-27', '2019-03-31', '2019-04-04', 500, 80, 6, 4),
(10, '2019-07-21', '2019-08-16', '2019-08-16', 40, 0, 8, 4),
(11, '2019-10-12', '2019-11-23', '2019-11-29', 580, 58, 15, 8),
(12, '2019-12-22', '2020-01-27', '2020-01-30', 140, 14, 17, 9),
(13, '2019-07-21', '2019-08-18', '2019-08-21', 360, 36, 15, 8),
(14, '2019-01-10', '2019-02-20', '2019-03-01', 1380, 138, 20, 4),
(15, '2019-04-09', '2019-04-17', '2019-05-02', 420, 42, 16, 13),
(16, '2019-05-21', '2019-06-13', '2019-06-26', 360, 36, 16, 13),
(17, '2019-07-26', '2019-08-09', '2019-08-20', 680, 68, 1, 12),
(18, '2019-11-29', '2019-11-30', '2019-12-14', 1280, 128, 15, 21),
(19, '2019-03-12', '2019-04-06', '2019-04-09', 420, 42, 19, 14),
(20, '2019-01-17', '2019-01-24', '2019-01-28', 260, 26, 12, 24),
(21, '2020-01-02', '2020-02-15', '2020-02-24', 1380, 138, 9, 12),
(22, '2019-09-10', '2019-09-24', '2019-10-01', 1430, 143, 12, 4),
(23, '2019-05-11', '2019-06-10', '2019-06-14', 820, 82, 1, 23),
(24, '2019-10-21', '2019-10-24', '2019-10-31', 650, 65, 11, 10),
(25, '2020-01-12', '2020-03-04', '2020-03-09', 1290, 129, 14, 20),
(26, '2019-04-02', '2019-05-02', '2019-05-09', 1030, 103, 19, 15),
(27, '2019-01-04', '2019-02-15', '2019-02-25', 470, 47, 17, 17),
(28, '2019-05-17', '2019-05-31', '2019-06-03', 1460, 146, 16, 14),
(29, '2019-04-12', '2019-05-23', '2019-05-28', 1310, 131, 6, 21),
(30, '2019-06-26', '2019-07-15', '2019-07-21', 460, 46, 9, 20),
(31, '2019-04-09', '2019-05-23', '2019-05-27', 350, 35, 17, 18),
(32, '2019-06-14', '2019-08-02', '2019-08-04', 890, 89, 14, 23),
(33, '2019-03-06', '2019-03-23', '2019-03-31', 1440, 144, 14, 12),
(34, '2019-03-27', '2019-04-29', '2019-05-07', 1010, 101, 17, 19),
(35, '2019-02-11', '2019-03-08', '2019-03-22', 790, 79, 13, 16),
(36, '2019-04-15', '2019-04-23', '2019-05-04', 270, 27, 5, 2),
(37, '2019-03-25', '2019-05-02', '2019-05-16', 660, 66, 19, 19),
(38, '2019-05-01', '2019-06-14', '2019-06-18', 140, 14, 13, 4),
(39, '2020-01-10', '2020-02-24', '2020-02-29', 1460, 146, 14, 19),
(40, '2019-11-24', '2019-11-30', '2019-12-01', 790, 79, 6, 4),
(41, '2020-01-13', '2020-01-30', '2020-02-14', 390, 39, 15, 20);

-- --------------------------------------------------------

--
-- Structure de la table `stations`
--

DROP TABLE IF EXISTS `stations`;
CREATE TABLE IF NOT EXISTS `stations` (
  `idStation` int(11) NOT NULL AUTO_INCREMENT,
  `nomStation` varchar(25) NOT NULL,
  `altitudeStation` int(11) NOT NULL,
  PRIMARY KEY (`idStation`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `stations`
--

INSERT INTO `stations` (`idStation`, `nomStation`, `altitudeStation`) VALUES
(1, 'La Montagne', 2500),
(2, 'Le Sud', 200),
(3, 'La Plage', 10),
(4, 'Alpe d Huez', 1860),
(5, 'Areches', 1200),
(6, 'Beaufort', 1200),
(7, 'Aussois', 1500),
(8, 'Avoriaz', 1800);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chambres`
--
ALTER TABLE `chambres`
  ADD CONSTRAINT `FK_Chambres_idHotel` FOREIGN KEY (`idHotel`) REFERENCES `hotels` (`idHotel`);

--
-- Contraintes pour la table `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `FK_Hotels_idStation` FOREIGN KEY (`idStation`) REFERENCES `stations` (`idStation`);

--
-- Contraintes pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `FK_reservation_IdChambre` FOREIGN KEY (`IdChambre`) REFERENCES `chambres` (`IdChambre`),
  ADD CONSTRAINT `FK_reservation_idClient` FOREIGN KEY (`idClient`) REFERENCES `clients` (`idClient`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
