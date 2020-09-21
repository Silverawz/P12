-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  lun. 21 sep. 2020 à 13:32
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

-- --------------------------------------------------------

--
-- Structure de la table `user`
--


CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(70) NOT NULL,
  `lastname` varchar(70) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `firstname`, `lastname`, `email`, `password`, `active`) VALUES
(1, 'Gerard', 'Elastique', 'aaa@aol.fr', '$2a$10$DkYOrk3CBKBiBzEDeVGUIezUGdnGyFyp5GdE1q/I41P.ksJoIKkaK', 1),
(2, 'Franck', 'Nomdsv', 'bbb@aol.fr', '$2a$10$DkYOrk3CBKBiBzEDeVGUIezUGdnGyFyp5GdE1q/I41P.ksJoIKkaK', 1),
(4, 'Paul', 'Kole', 'ccc@aol.fr', '$2a$10$6wv6o.eDbuH7UuRv3idOp.bYAoHhnHvXx4HXROrAnv1K/hIAOHJvG', 1),
(9, 'Jacob', 'Prou', 'rrr@aol.fr', '$2a$10$LaP6RYT5mOJNf3wus/iMneMu99tqRCCeHFPFGu/7w6cR.HZfA2IkW', 1),
(10, 'robin', 'william', 'vvv@aol.fr', '$2a$10$qe8aJMOfAdiJJlQA2FN7JOo8HMSp3D9czUt0OIEkZ71l5M3SW1lK2', 1);

-- --------------------------------------------------------

--
-- Structure de la table `article`
--


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

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id_article`, `title`, `message`, `date`, `User_id_user`, `active`) VALUES
(1, 'Ils  y arrivent !', 'L\'equipe a finalement remporté le tournoi. Cela faisait plus de dix ans, qu\'il n\'avait pas réussi, un tel exploit.', '2020-08-19', 1, 1),
(2, 'Demain, la reprise des matchs.', 'Qu\'est-ce que le Lorem Ipsum?\r\nLe Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', '2020-08-25', 1, 1),
(3, 'Le tournoi d\'hiver va commencer !', 'Qu\'est-ce que le Lorem Ipsum?\r\nLe Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', '2020-08-25', 1, 0),
(4, 'En route pour le national !', 'Lorem Ipsum is simply dummy text of the was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2020-08-26', 1, 1),
(5, 'Seance exceptionnelle ce jeudi.', 'Lorem Ipsum is simply dummy text of the was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem IpsumLorem Ipsum is simply dummy text of the was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem IpsumLorem Ipsum is simply dummy text of the was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem IpsumLorem Ipsum is simply dummy text of the was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2020-08-26', 1, 1),
(6, 'Le gymnase sera fermé pendant quinze jours.', 'Lorem Ipsum is simply dummy text of the was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2020-08-27', 1, 1),
(7, 'Le gymnase sera fermé pendant quelques jours.', 'Lorem Ipsum is simply dummy text of the was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2020-08-28', 2, 1),
(8, 'Le tournoi de printemps est pour bientot.', 'Qu\'est-ce que le Lorem Ipsum?\r\nLe Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', '2020-08-29', 1, 1),
(9, 'Les subventions pour le volley-ball augmenteront de 3% cette année.', 'Qu\'est-ce que le Lorem Ipsum?\r\nLe Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', '2020-08-29', 2, 1),
(26, 'Annulation des séances d\'entrainement pour la semaine du 14/02.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-09-08', 1, 1),
(27, 'Fermeture du gymnase ce mardi exceptionnelement.', 'Qu\'est-ce que le Lorem Ipsum?\r\nLe Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', '2020-09-09', 1, 1),
(28, 'Le tournoi d\'été commence !', 'Lorem Ipsum is simply dummy text of the was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2020-09-10', 1, 1),
(29, 'Le tournoi d\'automne commence!', 'Lorem Ipsum is simply dummy text of the was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2020-09-10', 2, 1),
(30, 'L\'equipe a triomphé au dernier tournoi, félicitations à eux!', 'Qu\'est-ce que le Lorem Ipsum?\r\nLe Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', '2020-09-12', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--


CREATE TABLE IF NOT EXISTS `category` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(70) NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id_category`, `description`) VALUES
(1, 'Football'),
(2, 'Basketball'),
(3, 'Volleyball');

-- --------------------------------------------------------
--
-- Structure de la table `topic`
--


CREATE TABLE IF NOT EXISTS `topic` (
  `id_topic` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(70) NOT NULL,
  `User_id_user` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_topic`,`User_id_user`),
  KEY `fk_Topic_User1_idx` (`User_id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `topic`
--

INSERT INTO `topic` (`id_topic`, `title`, `User_id_user`, `active`) VALUES
(1, 'Comment s\'inscrire ?', 1, 0),
(2, 'Regime alimentaire ?', 2, 1),
(3, 'petit soucis', 4, 1),
(4, 'reussir un tir en sautant', 1, 1),
(5, 'quand reprend le tournoi', 1, 1),
(6, 'fermeture ?!!', 1, 1),
(7, 'coach absent', 1, 1),
(8, 'besoin de renseignement', 1, 1),
(9, 'aidez moi svp ', 1, 1),
(10, 'que pensez vous de l\'equipe de creteil ?', 1, 1);



-- --------------------------------------------------------
--
-- Structure de la table `post`
--


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

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id_post`, `message`, `date`, `Topic_id_topic`, `User_id_user`) VALUES
(1, 'ceci est un message', '2020-08-19', 1, 1),
(2, 'ceci est un message', '2020-09-14', 2, 1),
(3, 'ceci est un message', '2020-09-14', 2, 1),
(4, 'ceci est un message', '2020-09-14', 3, 1),
(5, 'ceci est un message', '2020-09-14', 3, 1),
(6, 'ceci est un message', '2020-09-14', 4, 1),
(7, 'ceci est un message', '2020-09-14', 4, 1),
(8, 'ceci est un message', '2020-09-14', 5, 1),
(9, 'ceci est un message', '2020-09-14', 5, 1),
(10, 'ceci est un message', '2020-09-14', 6, 1),
(11, 'ceci est un message', '2020-09-14', 6, 1),
(12, 'ceci est un message', '2020-09-14', 7, 1),
(13, 'ceci est un message', '2020-09-14', 7, 1),
(14, 'ceci est un message', '2020-09-14', 8, 1),
(15, 'ceci est un message', '2020-09-14', 8, 1),
(16, 'ceci est un message', '2020-09-14', 9, 1),
(17, 'ceci est un message', '2020-09-14', 9, 1),
(18, 'ceci est un message', '2020-09-14', 10, 1),
(19, 'ceci est un message', '2020-09-14', 10, 1),
(20, 'ceci est un message', '2020-09-14', 2, 1);


-- --------------------------------------------------------

--
-- Structure de la table `role`
--


CREATE TABLE IF NOT EXISTS `role` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(70) NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id_role`, `description`) VALUES
(1, 'ADMIN'),
(2, 'MODERATOR'),
(3, 'USER');


-- --------------------------------------------------------



--
-- Structure de la table `category_has_article`
--


CREATE TABLE IF NOT EXISTS `category_has_article` (
  `Category_id_category` int(11) NOT NULL,
  `Article_id_article` int(11) NOT NULL,
  PRIMARY KEY (`Category_id_category`,`Article_id_article`),
  KEY `fk_Category_has_Article_Article1_idx` (`Article_id_article`),
  KEY `fk_Category_has_Article_Category1_idx` (`Category_id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `category_has_article`
--

INSERT INTO `category_has_article` (`Category_id_category`, `Article_id_article`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 3),
(3, 3),
(1, 4),
(2, 4),
(3, 4),
(1, 5),
(2, 5),
(3, 5),
(1, 6),
(2, 6),
(3, 6),
(1, 7),
(2, 7),
(3, 7),
(3, 8),
(1, 9),
(3, 26),
(1, 27),
(2, 28),
(1, 29),
(2, 29),
(2, 30);

-- --------------------------------------------------------

--
-- Structure de la table `category_has_topic`
--


CREATE TABLE IF NOT EXISTS `category_has_topic` (
  `Category_id_category` int(11) NOT NULL,
  `Topic_id_topic` int(11) NOT NULL,
  PRIMARY KEY (`Category_id_category`,`Topic_id_topic`),
  KEY `fk_Category_has_Topic_Topic1_idx` (`Topic_id_topic`),
  KEY `fk_Category_has_Topic_Category1_idx` (`Category_id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `category_has_topic`
--

INSERT INTO `category_has_topic` (`Category_id_category`, `Topic_id_topic`) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 2),
(2, 2),
(1, 3),
(3, 3),
(2, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10);

-- --------------------------------------------------------





-- --------------------------------------------------------

--
-- Structure de la table `user_has_role`
--


CREATE TABLE IF NOT EXISTS `user_has_role` (
  `User_id_user` int(11) NOT NULL,
  `Role_id_role` int(11) NOT NULL,
  PRIMARY KEY (`User_id_user`,`Role_id_role`),
  KEY `fk_User_has_Role_Role1_idx` (`Role_id_role`),
  KEY `fk_User_has_Role_User1_idx` (`User_id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user_has_role`
--

INSERT INTO `user_has_role` (`User_id_user`, `Role_id_role`) VALUES
(1, 1),
(2, 2),
(4, 3),
(9, 3),
(10, 3);


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
