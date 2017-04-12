-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 12 Avril 2017 à 07:16
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cdtheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `cd_album`
--

CREATE TABLE `cd_album` (
  `album_id` int(11) NOT NULL,
  `album_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `cd_album`
--

INSERT INTO `cd_album` (`album_id`, `album_name`) VALUES
(1, 'La paix du soir'),
(2, 'Paix du matin'),
(8, ''),
(9, ''),
(10, 'zefzef'),
(11, 'zefzef'),
(12, 'zef'),
(13, 'zef'),
(14, 'zef'),
(15, 'zef'),
(16, 'zef'),
(17, 'ef'),
(18, 'ef'),
(19, 'ef'),
(20, 'zef'),
(21, 'zef'),
(22, 'zef'),
(23, 'guillaume sur son fixi'),
(24, 'efzef'),
(25, 'manu'),
(26, 'manu2'),
(27, 'zef'),
(28, 'zef'),
(29, 'zef'),
(30, 'zef'),
(31, 'zef'),
(32, 'zef'),
(33, 't\''),
(34, 'dddd'),
(35, 'dddd2'),
(36, 'azd'),
(37, 'zef'),
(38, 'efezf'),
(39, 'efezf'),
(40, 'efezf'),
(41, 'efezf'),
(42, 'efezf'),
(43, 'zef'),
(44, 'rtyrty'),
(45, 'rtyrty'),
(46, 'rtyrty'),
(47, 'rtyrty'),
(48, 'rtyrty'),
(49, 'rtyrty'),
(50, 'rtyrty'),
(51, 'rtyrty'),
(52, ''),
(53, ''),
(54, ''),
(55, ''),
(56, ''),
(57, ''),
(58, ''),
(59, ''),
(60, ''),
(61, ''),
(62, ''),
(63, ''),
(64, ''),
(65, 'khf'),
(66, 'khf'),
(67, 'khf'),
(68, 'zef'),
(69, 'zef'),
(70, 'zef'),
(71, 'ez'),
(72, 'ez'),
(73, 'ez'),
(74, 'ez'),
(75, 'ez'),
(76, 'ez'),
(77, 'ez');

-- --------------------------------------------------------

--
-- Structure de la table `cd_album_has_categ`
--

CREATE TABLE `cd_album_has_categ` (
  `categ_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cd_categ`
--

CREATE TABLE `cd_categ` (
  `categ_id` int(11) NOT NULL,
  `categ_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `cd_categ`
--

INSERT INTO `cd_categ` (`categ_id`, `categ_name`) VALUES
(1, 'HIP HOP'),
(2, 'Techno Transe'),
(3, 'Metal'),
(4, 'Reggae');

-- --------------------------------------------------------

--
-- Structure de la table `cd_piste`
--

CREATE TABLE `cd_piste` (
  `piste_id` int(11) NOT NULL,
  `piste_ref` varchar(4) NOT NULL,
  `piste_name` varchar(250) NOT NULL,
  `piste_duration` varchar(50) NOT NULL,
  `album_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `cd_piste`
--

INSERT INTO `cd_piste` (`piste_id`, `piste_ref`, `piste_name`, `piste_duration`, `album_id`) VALUES
(1, '01', 'Chant du Merle', '55 min', 1),
(2, '02', 'Chant du dauphin', '5 min', 1),
(3, '01', 'Les voix de L\'IMIE', '50 min', 2);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `cd_album`
--
ALTER TABLE `cd_album`
  ADD PRIMARY KEY (`album_id`);

--
-- Index pour la table `cd_album_has_categ`
--
ALTER TABLE `cd_album_has_categ`
  ADD PRIMARY KEY (`categ_id`,`album_id`),
  ADD KEY `album_id` (`album_id`);

--
-- Index pour la table `cd_categ`
--
ALTER TABLE `cd_categ`
  ADD PRIMARY KEY (`categ_id`);

--
-- Index pour la table `cd_piste`
--
ALTER TABLE `cd_piste`
  ADD PRIMARY KEY (`piste_id`),
  ADD KEY `album_id` (`album_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `cd_album`
--
ALTER TABLE `cd_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT pour la table `cd_categ`
--
ALTER TABLE `cd_categ`
  MODIFY `categ_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `cd_piste`
--
ALTER TABLE `cd_piste`
  MODIFY `piste_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `cd_album_has_categ`
--
ALTER TABLE `cd_album_has_categ`
  ADD CONSTRAINT `cd_album_has_categ_ibfk_1` FOREIGN KEY (`categ_id`) REFERENCES `cd_categ` (`categ_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cd_album_has_categ_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `cd_album` (`album_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `cd_piste`
--
ALTER TABLE `cd_piste`
  ADD CONSTRAINT `cd_piste_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `cd_album` (`album_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
