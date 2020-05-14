-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 09 Mai 2020 à 17:59
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `coursjava`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(200) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `prenom` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id`, `numero`, `nom`, `prenom`) VALUES
(1, 'xxr', 'xxx', 'xxx'),
(2, 'xx', 'xx', 'xx'),
(3, 'yyyy', 'yyy', 'yyy'),
(4, 'DAO', 'DAO', 'Hamadou'),
(5, 'CCH01', 'DAO', 'DAO');

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE IF NOT EXISTS `compte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(50) NOT NULL,
  `solde` double NOT NULL,
  `createAt` date DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `frais` int(11) DEFAULT NULL,
  `taux` int(11) DEFAULT NULL,
  `dateDeblocage` date DEFAULT NULL,
  `idClient` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `compte`
--

INSERT INTO `compte` (`id`, `numero`, `solde`, `createAt`, `type`, `frais`, `taux`, `dateDeblocage`, `idClient`) VALUES
(1, 'xx', 233, '2020-04-06', 'xx', NULL, NULL, NULL, 1),
(2, 'CCH01', 500000, NULL, 'Cheque', 200, 0, NULL, 1),
(3, 'CE01', 500000, NULL, 'Epargne', 0, 5, NULL, 1),
(4, 'CE02', 500000, NULL, 'Epargne', 0, 5, NULL, 3),
(5, 'CCH01', 5000000, NULL, 'Cheque', 200, 0, NULL, 3),
(6, 'CCH06', 600000, NULL, 'Cheque', 200, 0, NULL, 3),
(7, 'CCH07', 1000, NULL, 'Cheque', 200, 0, NULL, 4),
(8, 'CCH08', 15, NULL, 'Cheque', 200, 0, NULL, 5),
(9, 'CE09', 120, NULL, 'Epargne', 0, 50, NULL, 4);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `login` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
