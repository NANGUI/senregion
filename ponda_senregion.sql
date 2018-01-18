-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 18 jan. 2018 à 14:46
-- Version du serveur :  10.1.28-MariaDB
-- Version de PHP :  7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ponda_senregion`
--

-- --------------------------------------------------------

--
-- Structure de la table `departements`
--

CREATE TABLE `departements` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `region_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `departements`
--

INSERT INTO `departements` (`id`, `nom`, `region_id`) VALUES
(1, 'Dakar', 1),
(2, 'Guédiawaye', 1),
(3, 'Pikine', 1),
(4, 'Rufisque', 1),
(5, 'Bambey', 2),
(6, 'Diourbel', 2),
(7, 'Mbacké', 2),
(8, 'Fatick', 3),
(9, 'Foundiougne', 3),
(10, 'Gossas', 3),
(11, 'Kaolack', 4),
(12, 'Guinguinéo', 4),
(13, 'Nioro du Rip', 4),
(14, 'Kolda', 5),
(15, 'Vélingara', 5),
(16, 'Médina Yoro Foulah', 5),
(17, 'Kébémer', 6),
(18, 'Linguère', 6),
(19, 'Louga', 6),
(20, 'Kanel', 7),
(21, 'Matam', 7),
(22, 'Ranérou', 7),
(23, 'Dagana', 8),
(24, 'Podor', 8),
(25, 'Saint-Louis', 8),
(26, 'Bakel', 9),
(27, 'Koumpentoum', 9),
(28, 'Tambacounda', 9),
(29, 'Goudiry', 9),
(30, 'Mbour', 10),
(31, 'Thiès', 10),
(32, 'Tivaouane', 10),
(33, 'Bignogna', 11),
(34, 'Oussouye', 11),
(35, 'Zinguichor', 11),
(36, 'Birkilane', 12),
(37, 'Kaffrine', 12),
(38, 'Malem-Hodar', 12),
(39, 'Koungheul', 12),
(40, 'Kédougou', 13),
(41, 'Salemata', 13),
(42, 'Saraya', 13),
(43, 'Bounkiling', 14),
(44, 'Goudomp', 14),
(45, 'Sédhiou', 14);

-- --------------------------------------------------------

--
-- Structure de la table `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `regions`
--

INSERT INTO `regions` (`id`, `nom`) VALUES
(1, 'Dakar'),
(2, 'Diourbel'),
(3, 'Fatick'),
(12, 'Kaffrine'),
(4, 'Kaolack'),
(13, 'Kédougou'),
(5, 'Kolda'),
(6, 'Louga'),
(7, 'Matam'),
(8, 'Saint-Louis'),
(14, 'Sédhiou'),
(9, 'Tambacounda'),
(10, 'Thiès'),
(11, 'Ziguinchor');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `departements`
--
ALTER TABLE `departements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `region_id` (`region_id`);

--
-- Index pour la table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `departements`
--
ALTER TABLE `departements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `departements`
--
ALTER TABLE `departements`
  ADD CONSTRAINT `departements_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
