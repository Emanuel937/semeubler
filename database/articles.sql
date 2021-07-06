-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mar. 06 juil. 2021 à 13:24
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `semeubler_yds2000`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `famille` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sous_famille` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sous_sous_famille` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `famille`, `sous_famille`, `sous_sous_famille`) VALUES
(1, 'Meuble', 'Chambre / Literie', 'Armoire'),
(2, 'Meuble', 'Chambre / Literie', 'Commode'),
(3, 'Meuble', 'Chambre / Literie', 'Lit'),
(4, 'Meuble', 'Chambre / Literie', 'Matelas'),
(5, 'Meuble', 'Chambre / Literie', 'Sommier'),
(6, 'Meuble', 'Cuisine - salle à manger', 'Cuisine conviviale'),
(7, 'Meuble', 'Cuisine - salle à manger', 'Vaisselle'),
(8, 'Meuble', 'Cuisine - salle à manger', 'Linge de table'),
(9, 'Meuble', 'Cuisine - salle à manger', 'Bouilloire'),
(10, 'Multimédia', 'Image et son', 'Télévision'),
(11, 'Multimédia', 'Image et son', 'Support TV'),
(12, 'Multimédia', 'Image et son', 'Décodeur TNT'),
(13, 'Multimédia', 'Image et son', 'Vidéo projecteur'),
(14, 'Multimédia', 'Image et son', 'Enceinte'),
(15, 'Multimédia', 'Informatique', 'Imprimante'),
(16, 'Multimédia', 'Informatique', 'Tablette'),
(17, 'Multimédia', 'Jeux vidéo', 'Console de jeux'),
(18, 'Multimédia', 'Jeux vidéo', 'Manette'),
(19, 'Meuble', 'Salon', 'Canapé'),
(20, 'Meuble', 'Salon', 'Fauteuil'),
(21, 'Meuble', 'Salon', 'Pouf / repose-pieds'),
(22, 'Meuble', 'Salon', 'Table basse'),
(23, 'Meuble', 'Salon', 'Pouf / Meuble TV'),
(24, 'Meuble', 'Salon', 'Console'),
(25, 'Electroménager', 'Gros électroménager', 'Cuisinière'),
(26, 'Electroménager', 'Gros électroménager', 'Four'),
(27, 'Electroménager', 'Gros électroménager', 'Réfrigérateur'),
(28, 'Electroménager', 'Gros électroménager', 'Cave à vin'),
(29, 'Electroménager', 'Gros électroménager', 'Congélateur'),
(30, 'Electroménager', 'Gros électroménager', 'Lave vaisselle'),
(31, 'Electroménager', 'Gros électroménager', 'Lave linge'),
(32, 'Electroménager', 'Gros électroménager', 'Sèche-linge'),
(33, 'Electroménager', 'Petit électroménager', 'Four - Micro ondes'),
(34, 'Electroménager', 'Plaque électrique', 'Plaque électrique'),
(35, 'Electroménager', 'Petit électroménager', 'Robot culinaire'),
(36, 'Electroménager', 'Petit électroménager', 'Friteuse'),
(37, 'Equipement', 'Entretien', 'Accessoire de ménage'),
(38, 'Equipement', 'Entretien', 'Planche à repasser'),
(39, 'Equipement', 'Matériel de jardin', 'Tondeuse'),
(40, 'Equipement', 'Loisirs', 'Baby Foot'),
(41, 'Equipement', 'Matériel de sport', 'Banc de musculation'),
(42, 'Equipement', 'Matériel de sport', 'Haltères'),
(43, 'Equipement', 'Matériel de sport', 'Tapis de sport'),
(44, 'Equipement', 'Matériel de sport', 'Vélo elliptique'),
(45, 'Equipement', 'Matériel de sport', 'Rameur'),
(46, 'Equipement', 'Matériel de sport', 'Plateforme vibrante'),
(47, 'Equipement', 'Matériel de sport', 'Tapis de course'),
(48, 'Equipement', 'Matériel de sport', 'Matériel de fitness'),
(49, 'Equipement', 'Puériculture', 'Poussette'),
(50, 'Equipement', 'Puériculture', 'Chaise haute bébé'),
(51, 'Equipement', 'Puériculture', 'Siège auto'),
(52, 'Equipement', 'Puériculture', 'Coffre à jouet');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
