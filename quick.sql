-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 02 juil. 2021 à 16:22
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `quick`
--

-- --------------------------------------------------------

--
-- Structure de la table `accident`
--

CREATE TABLE `accident` (
  `idaccident` bigint(20) NOT NULL,
  `iduser` bigint(20) NOT NULL,
  `graviteaccident` int(11) DEFAULT NULL,
  `nombredengins` int(11) DEFAULT NULL,
  `ville` varchar(100) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `rue` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `etataccident` varchar(20) DEFAULT NULL,
  `lataccident` varchar(255) DEFAULT NULL,
  `longaccident` varchar(250) DEFAULT NULL,
  `dateaccident` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `accident`
--

INSERT INTO `accident` (`idaccident`, `iduser`, `graviteaccident`, `nombredengins`, `ville`, `region`, `rue`, `name`, `etataccident`, `lataccident`, `longaccident`, `dateaccident`) VALUES
(3, 9, 5, 2, 'lomé', 'kara', 't612', 'anfamé', NULL, NULL, NULL, '2021-06-17 03:24:36'),
(4, 10, 5, 1, 'kara', 'kara', 'juyhy56', 'jili', NULL, NULL, NULL, '2021-06-17 03:26:18'),
(5, 10, 7, 2, 'baguida', 'maritime', 'fyg235', 'kégé', NULL, NULL, NULL, '2021-06-17 03:27:32'),
(6, 12, 7, 9, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1589026', '1.2594781', '2021-06-18 03:44:06'),
(7, 12, 6, 3, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581127', '1.2591634', '2021-06-18 04:06:12'),
(9, 13, 10, 8, '', '', '', '', NULL, '6.1585168', '1.2600003', '2021-06-18 04:48:38'),
(10, 12, 8, 9, '', '', '', '', NULL, '6.1581032', '1.259202', '2021-06-18 04:49:17'),
(11, 12, 6, 7, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1587817', '1.2590738', '2021-06-19 03:47:28'),
(12, 12, 8, 2, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581195', '1.2593187', '2021-06-19 04:06:37'),
(13, 12, 7, 8, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1577181', '1.2593299', '2021-06-19 04:08:03'),
(14, 12, 6, 7, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1577181', '1.2593299', '2021-06-19 04:16:15'),
(15, 12, 8, 8, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1577181', '1.2593299', '2021-06-19 04:37:18'),
(16, 12, 7, 7, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.153269', '1.2763372', '2021-06-25 12:53:19'),
(17, 13, 7, 9, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1582667', '1.2592302', '2021-07-01 03:44:17'),
(18, 13, 5, 8, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1582667', '1.2592302', '2021-07-01 04:41:50'),
(19, 13, 9, 10, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.158233', '1.2591881', '2021-07-01 04:52:06'),
(20, 13, 6, 2, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.158233', '1.2591881', '2021-07-01 05:24:50'),
(21, 13, 8, 8, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1582029', '1.2590422', '2021-07-01 05:29:56'),
(22, 12, 6, 7, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581891', '1.2591207', '2021-07-02 00:37:10'),
(23, 12, 8, 10, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581891', '1.2591207', '2021-07-02 01:01:41'),
(24, 12, 10, 4, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581891', '1.2591207', '2021-07-02 01:04:12'),
(25, 12, 5, 8, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581891', '1.2591207', '2021-07-02 03:48:21'),
(26, 12, 9, 9, 'Lomé', 'Région maritime', 'Rue Bidenga', 'Rue Bidenga', NULL, '6.1574776', '1.2591552', '2021-07-02 03:53:09'),
(27, 12, 2, 10, 'Lomé', 'Région maritime', 'Rue Bidenga', 'Rue Bidenga', NULL, '6.1574776', '1.2591552', '2021-07-02 04:06:34'),
(28, 12, 9, 3, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1580651', '1.2591948', '2021-07-02 04:20:37'),
(29, 12, 3, 9, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581321', '1.259156', '2021-07-02 04:24:11'),
(30, 12, 8, 3, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581321', '1.259156', '2021-07-02 05:00:35'),
(31, 12, 5, 8, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581321', '1.259156', '2021-07-02 05:01:40'),
(32, 12, 9, 2, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581321', '1.259156', '2021-07-02 05:04:02'),
(33, 12, 9, 8, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581321', '1.259156', '2021-07-02 05:04:56'),
(34, 12, 8, 9, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581321', '1.259156', '2021-07-02 05:09:04'),
(35, 12, 8, 2, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581321', '1.259156', '2021-07-02 05:11:38'),
(36, 12, 7, 1, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581321', '1.259156', '2021-07-02 05:11:55'),
(37, 12, 7, 4, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581321', '1.259156', '2021-07-02 05:13:01'),
(38, 12, 7, 10, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581321', '1.259156', '2021-07-02 05:13:17'),
(39, 12, 8, 9, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581321', '1.259156', '2021-07-02 05:17:46'),
(40, 12, 8, 3, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581321', '1.259156', '2021-07-02 05:19:17'),
(41, 12, 9, 8, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581321', '1.259156', '2021-07-02 05:21:40'),
(42, 12, 7, 4, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581321', '1.259156', '2021-07-02 05:22:27'),
(43, 12, 8, 2, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581321', '1.259156', '2021-07-02 05:22:57'),
(44, 12, 8, 8, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581321', '1.259156', '2021-07-02 05:23:50'),
(45, 12, 4, 7, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581321', '1.259156', '2021-07-02 05:49:24'),
(46, 12, 7, 3, 'Lomé', 'Région maritime', 'null', 'Lomé', NULL, '6.1581321', '1.259156', '2021-07-02 05:50:01');

-- --------------------------------------------------------

--
-- Structure de la table `agent`
--

CREATE TABLE `agent` (
  `idagent` bigint(20) NOT NULL,
  `idaccident` bigint(20) DEFAULT NULL,
  `nomagent` varchar(20) DEFAULT NULL,
  `prenomagent` varchar(20) DEFAULT NULL,
  `emailagent` varchar(30) DEFAULT NULL,
  `codeagent` varchar(50) DEFAULT NULL,
  `statusagent` varchar(10) DEFAULT NULL,
  `telephoneagent` varchar(110) DEFAULT NULL,
  `quartieragent` varchar(40) DEFAULT NULL,
  `villeagent` varchar(40) DEFAULT NULL,
  `latagent` varchar(255) DEFAULT NULL,
  `longagent` varchar(255) DEFAULT NULL,
  `dateagent` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `agent`
--

INSERT INTO `agent` (`idagent`, `idaccident`, `nomagent`, `prenomagent`, `emailagent`, `codeagent`, `statusagent`, `telephoneagent`, `quartieragent`, `villeagent`, `latagent`, `longagent`, `dateagent`) VALUES
(2, NULL, 'belo', 'bebe', 'belo@gmail.com', '123456', 'disponi', NULL, NULL, NULL, NULL, NULL, '2021-06-17 03:10:40'),
(3, NULL, 'fifi', 'fi', 'fifif@gmail.com', '12341', 'occupé', '326584154', 'adakpamé', 'lom&', '54', '45', '2021-06-17 03:12:52'),
(4, NULL, 'vada', 'vava', 'vava@gmail.com', '8456465', 'disponible', '98542315', 'gali', 'lomé', NULL, NULL, '2021-06-17 03:17:15'),
(5, NULL, 'fofo', 'fo', 'fofo@gmail.com', '4113', 'occupé', '125555444', 'fidre', 'lomé', NULL, NULL, '2021-06-17 03:18:35'),
(6, NULL, 'xevi', 'xe', 'xevi@gmail.com', '4745574', 'disponible', '544689899', 'gege', 'lomé', NULL, NULL, '2021-06-17 03:20:06');

-- --------------------------------------------------------

--
-- Structure de la table `centrepompier`
--

CREATE TABLE `centrepompier` (
  `idcentrepompier` bigint(20) NOT NULL,
  `idagent` bigint(20) DEFAULT NULL,
  `nomcentrepompier` varchar(50) DEFAULT NULL,
  `regioncentrepompier` varchar(40) DEFAULT NULL,
  `villecentrepompier` varchar(40) DEFAULT NULL,
  `quartiercentrepompier` varchar(40) DEFAULT NULL,
  `telephonecentrepompier` int(11) DEFAULT NULL,
  `emailcentrepompier` varchar(30) DEFAULT NULL,
  `latcentrepompier` varchar(255) DEFAULT NULL,
  `longcentrepompier` varchar(255) DEFAULT NULL,
  `datecentrepompier` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `centrepompier`
--

INSERT INTO `centrepompier` (`idcentrepompier`, `idagent`, `nomcentrepompier`, `regioncentrepompier`, `villecentrepompier`, `quartiercentrepompier`, `telephonecentrepompier`, `emailcentrepompier`, `latcentrepompier`, `longcentrepompier`, `datecentrepompier`) VALUES
(1, NULL, 'dada', 'maritime', 'lome', 'bé', 6598547, 'dada@gmal.com', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `centresante`
--

CREATE TABLE `centresante` (
  `idcentresante` bigint(20) NOT NULL,
  `idaccident` bigint(20) DEFAULT NULL,
  `nomcentresante` varchar(50) DEFAULT NULL,
  `regioncentresante` varchar(40) DEFAULT NULL,
  `villecentresante` varchar(40) DEFAULT NULL,
  `quartiercentresante` varchar(40) DEFAULT NULL,
  `telephonecentresante` int(11) DEFAULT NULL,
  `emailcentresante` varchar(30) DEFAULT NULL,
  `latcentresante` varchar(255) DEFAULT NULL,
  `longcentresante` varchar(255) DEFAULT NULL,
  `datecentresante` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `iduser` bigint(20) NOT NULL,
  `nomuser` varchar(200) DEFAULT NULL,
  `prenomuser` varchar(200) DEFAULT NULL,
  `telephoneuser` varchar(55) DEFAULT NULL,
  `adresseuser` varchar(100) DEFAULT NULL,
  `emailuser` varchar(255) DEFAULT NULL,
  `personeacontacter` varchar(255) DEFAULT NULL,
  `groupesanguin` varchar(3) DEFAULT NULL,
  `passworduser` varchar(255) DEFAULT NULL,
  `latuser` varchar(250) DEFAULT NULL,
  `longuser` varchar(250) DEFAULT NULL,
  `usertype` varchar(200) DEFAULT NULL,
  `dateuser` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`iduser`, `nomuser`, `prenomuser`, `telephoneuser`, `adresseuser`, `emailuser`, `personeacontacter`, `groupesanguin`, `passworduser`, `latuser`, `longuser`, `usertype`, `dateuser`) VALUES
(9, 'zapp', 'abal', NULL, NULL, 'abal@email.com', NULL, NULL, '$2b$10$eV842tmIWq8GwsEXEjWVHug8yjcjQNWGoQVWINegcWTbzUO5.U6/6', NULL, NULL, NULL, '2021-06-18 01:34:46'),
(10, 'zappabalo', 'abalaime', NULL, NULL, 'abalaime@email.com', NULL, NULL, '$2b$10$Nb/VClf4DgGjOy/lAO4d3ejHbi7lrI/2plI87xxjldhg9Pf6ltlrG', NULL, NULL, NULL, '2021-06-18 01:34:27'),
(11, 'bal', 'abalaime', '0255565585', 'bp 221 lome', 'cool@email.com', NULL, NULL, '$2b$10$bBnE8e/IEegynmm1LxDeWexEglEVO9PEfmoiJ0FrSQ/fCRp/6UNRC', NULL, NULL, NULL, '2021-04-19 12:18:32'),
(12, 'ABALO', 'Chris', '+228 96955044', 'Bp 312', 'Dodo@email.com', 'Daniel', 'O+', '$2b$10$T4ZwNN3BQJj9/MwBBmICwO3LmjhlvFYfJrHc1QyPcED0vetUYg0CW', '6.1581321', '1.259156', NULL, '2021-07-02 04:23:57'),
(13, 'GAMADO', 'Daniel', '+228 90779318', 'BP 218', 'oswaldg8@gmail.com', 'Aimé', 'O+', '$2b$10$IyuYz/LiB2SxUNjYn5s6lu2neTNNcUviM88n0U7RazzWR1PDeim.G', '6.1582029', '1.2590422', NULL, '2021-07-01 05:29:47');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accident`
--
ALTER TABLE `accident`
  ADD PRIMARY KEY (`idaccident`),
  ADD KEY `iduser` (`iduser`);

--
-- Index pour la table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`idagent`),
  ADD KEY `idaccident` (`idaccident`);

--
-- Index pour la table `centrepompier`
--
ALTER TABLE `centrepompier`
  ADD PRIMARY KEY (`idcentrepompier`),
  ADD KEY `idagent` (`idagent`);

--
-- Index pour la table `centresante`
--
ALTER TABLE `centresante`
  ADD PRIMARY KEY (`idcentresante`),
  ADD KEY `idaccident` (`idaccident`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accident`
--
ALTER TABLE `accident`
  MODIFY `idaccident` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pour la table `agent`
--
ALTER TABLE `agent`
  MODIFY `idagent` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `centrepompier`
--
ALTER TABLE `centrepompier`
  MODIFY `idcentrepompier` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `centresante`
--
ALTER TABLE `centresante`
  MODIFY `idcentresante` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `iduser` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `accident`
--
ALTER TABLE `accident`
  ADD CONSTRAINT `accident_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `utilisateur` (`iduser`);

--
-- Contraintes pour la table `agent`
--
ALTER TABLE `agent`
  ADD CONSTRAINT `agent_ibfk_1` FOREIGN KEY (`idaccident`) REFERENCES `accident` (`idaccident`);

--
-- Contraintes pour la table `centrepompier`
--
ALTER TABLE `centrepompier`
  ADD CONSTRAINT `centrepompier_ibfk_1` FOREIGN KEY (`idagent`) REFERENCES `agent` (`idagent`);

--
-- Contraintes pour la table `centresante`
--
ALTER TABLE `centresante`
  ADD CONSTRAINT `centresante_ibfk_1` FOREIGN KEY (`idaccident`) REFERENCES `accident` (`idaccident`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
