
--
-- Base de données :  `ecf2`
--
CREATE DATABASE IF NOT EXISTS `gestionHotel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gestionHotel`;

-- --------------------------------------------------------

--
-- Structure de la table `chambres`
--

DROP TABLE IF EXISTS `chambres`;
CREATE TABLE IF NOT EXISTS `chambres` (
  `idChambre` int(11) NOT NULL AUTO_INCREMENT,
  `typeChambre` int(11) NOT NULL,
  `capaciteChambre` int(11) NOT NULL,
  `numChambre` int(11) NOT NULL,
  `idHotel` int(11) NOT NULL,
  PRIMARY KEY (`idChambre`),
  KEY `FK_chambres_hotels` (`idHotel`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chambres`
--

INSERT INTO `chambres` (`idChambre`, `typeChambre`, `capaciteChambre`, `numChambre`, `idHotel`) VALUES
(1, 1, 1, 101, 1),
(2, 1, 2, 102, 1),
(3, 1, 1, 103, 1),
(4, 1, 2, 104, 2),
(5, 1, 2, 105, 2),
(6, 1, 1, 106, 2),
(7, 1, 3, 107, 3),
(8, 1, 1, 108, 3),
(9, 1, 3, 109, 2);

-- --------------------------------------------------------
DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `motDePasse` varchar(50) NOT NULL,
  `adresseMail` varchar(50) NOT NULL,
  `role` int(11) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  PRIMARY KEY (`idHotel`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
--
-- Structure de la table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
CREATE TABLE IF NOT EXISTS `hotels` (
  `idHotel` int(11) NOT NULL AUTO_INCREMENT,
  `nomHotel` varchar(50) NOT NULL,
  `categorieHotel` int(11) NOT NULL,
  `adresseHotel` varchar(50) NOT NULL,
  `villeHotel` varchar(50) NOT NULL,
  PRIMARY KEY (`idHotel`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `hotels`
--

INSERT INTO `hotels` (`idHotel`, `nomHotel`, `categorieHotel`, `adresseHotel`, `villeHotel`) VALUES
(1, 'Le Magnifique', 3, 'rue du bas', 'Pralo'),
(2, 'Hotel du haut', 1, 'rue du haut', 'Pralo'),
(3, 'Le Narval', 3, 'place de la liberation', 'Vonten'),
(4, 'Les Pissenlis', 4, 'place du 14 juillet', 'Bretou');



--
-- Contraintes pour la table `chambres`
--
ALTER TABLE `chambres`
  ADD CONSTRAINT `FK_chambres_hotels` FOREIGN KEY (`idHotel`) REFERENCES `hotels` (`idHotel`);
