-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 20 avr. 2021 à 07:22
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `test`
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
  `etataccident` varchar(20) DEFAULT NULL,
  `lataccident` varchar(255) DEFAULT NULL,
  `longaccident` varchar(250) DEFAULT NULL,
  `dateaccident` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `telephoneagent` int(11) DEFAULT NULL,
  `quartieragent` varchar(40) DEFAULT NULL,
  `villeagent` varchar(40) DEFAULT NULL,
  `latagent` varchar(255) DEFAULT NULL,
  `longagent` varchar(255) DEFAULT NULL,
  `dateagent` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(9, 'zapp', 'abal', NULL, NULL, NULL, NULL, NULL, '$2b$10$eV842tmIWq8GwsEXEjWVHug8yjcjQNWGoQVWINegcWTbzUO5.U6/6', NULL, NULL, NULL, '2021-04-19 11:51:34'),
(10, 'zappabalo', 'abalaime', NULL, NULL, NULL, NULL, NULL, '$2b$10$Nb/VClf4DgGjOy/lAO4d3ejHbi7lrI/2plI87xxjldhg9Pf6ltlrG', NULL, NULL, NULL, '2021-04-19 11:53:53'),
(11, 'bal', 'abalaime', '0255565585', 'bp 221 lome', 'cool@email.com', NULL, NULL, '$2b$10$bBnE8e/IEegynmm1LxDeWexEglEVO9PEfmoiJ0FrSQ/fCRp/6UNRC', NULL, NULL, NULL, '2021-04-19 12:18:32');

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
  MODIFY `idaccident` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `agent`
--
ALTER TABLE `agent`
  MODIFY `idagent` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `centrepompier`
--
ALTER TABLE `centrepompier`
  MODIFY `idcentrepompier` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `centresante`
--
ALTER TABLE `centresante`
  MODIFY `idcentresante` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `iduser` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
