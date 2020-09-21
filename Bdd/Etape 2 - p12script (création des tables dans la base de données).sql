-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  lun. 21 sep. 2020 à 13:55
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `association`
--


--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id_article` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(70) NOT NULL,
  `message` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` date NOT NULL,
  `User_id_user` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_article`,`User_id_user`),
  KEY `fk_Article_User1_idx` (`User_id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(70) NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `category_has_article`
--

DROP TABLE IF EXISTS `category_has_article`;
CREATE TABLE IF NOT EXISTS `category_has_article` (
  `Category_id_category` int(11) NOT NULL,
  `Article_id_article` int(11) NOT NULL,
  PRIMARY KEY (`Category_id_category`,`Article_id_article`),
  KEY `fk_Category_has_Article_Article1_idx` (`Article_id_article`),
  KEY `fk_Category_has_Article_Category1_idx` (`Category_id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `category_has_topic`
--

DROP TABLE IF EXISTS `category_has_topic`;
CREATE TABLE IF NOT EXISTS `category_has_topic` (
  `Category_id_category` int(11) NOT NULL,
  `Topic_id_topic` int(11) NOT NULL,
  PRIMARY KEY (`Category_id_category`,`Topic_id_topic`),
  KEY `fk_Category_has_Topic_Topic1_idx` (`Topic_id_topic`),
  KEY `fk_Category_has_Topic_Category1_idx` (`Category_id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id_post` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `Topic_id_topic` int(11) NOT NULL,
  `User_id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_post`,`Topic_id_topic`,`User_id_user`),
  KEY `fk_Post_Topic1_idx` (`Topic_id_topic`),
  KEY `fk_Post_User1_idx` (`User_id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(70) NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `topic`
--

DROP TABLE IF EXISTS `topic`;
CREATE TABLE IF NOT EXISTS `topic` (
  `id_topic` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(70) NOT NULL,
  `User_id_user` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_topic`,`User_id_user`),
  KEY `fk_Topic_User1_idx` (`User_id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(70) NOT NULL,
  `lastname` varchar(70) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user_has_role`
--

DROP TABLE IF EXISTS `user_has_role`;
CREATE TABLE IF NOT EXISTS `user_has_role` (
  `User_id_user` int(11) NOT NULL,
  `Role_id_role` int(11) NOT NULL,
  PRIMARY KEY (`User_id_user`,`Role_id_role`),
  KEY `fk_User_has_Role_Role1_idx` (`Role_id_role`),
  KEY `fk_User_has_Role_User1_idx` (`User_id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_Article_User1` FOREIGN KEY (`User_id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `category_has_article`
--
ALTER TABLE `category_has_article`
  ADD CONSTRAINT `fk_Category_has_Article_Article1` FOREIGN KEY (`Article_id_article`) REFERENCES `article` (`id_article`),
  ADD CONSTRAINT `fk_Category_has_Article_Category1` FOREIGN KEY (`Category_id_category`) REFERENCES `category` (`id_category`);

--
-- Contraintes pour la table `category_has_topic`
--
ALTER TABLE `category_has_topic`
  ADD CONSTRAINT `fk_Category_has_Topic_Category1` FOREIGN KEY (`Category_id_category`) REFERENCES `category` (`id_category`),
  ADD CONSTRAINT `fk_Category_has_Topic_Topic1` FOREIGN KEY (`Topic_id_topic`) REFERENCES `topic` (`id_topic`);

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `fk_Post_Topic1` FOREIGN KEY (`Topic_id_topic`) REFERENCES `topic` (`id_topic`),
  ADD CONSTRAINT `fk_Post_User1` FOREIGN KEY (`User_id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `fk_Topic_User1` FOREIGN KEY (`User_id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `user_has_role`
--
ALTER TABLE `user_has_role`
  ADD CONSTRAINT `fk_User_has_Role_Role1` FOREIGN KEY (`Role_id_role`) REFERENCES `role` (`id_role`),
  ADD CONSTRAINT `fk_User_has_Role_User1` FOREIGN KEY (`User_id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
