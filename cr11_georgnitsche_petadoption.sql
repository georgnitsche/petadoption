-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 31. Mrz 2020 um 14:35
-- Server-Version: 10.4.11-MariaDB
-- PHP-Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr11_georgnitsche_petadoption`
--
CREATE DATABASE IF NOT EXISTS `cr11_georgnitsche_petadoption` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cr11_georgnitsche_petadoption`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `adoptiondate`
--

CREATE TABLE `adoptiondate` (
  `fk_animal_id` int(11) NOT NULL,
  `adoption date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `adoptiondate`
--

INSERT INTO `adoptiondate` (`fk_animal_id`, `adoption date`) VALUES
(9, '2020-03-02'),
(10, '2020-03-04'),
(11, '2020-01-02'),
(12, '2020-02-20');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `age`
--

CREATE TABLE `age` (
  `age` int(11) NOT NULL,
  `fk_animal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `age`
--

INSERT INTO `age` (`age`, `fk_animal_id`) VALUES
(1, 1),
(2, 2),
(2, 3),
(3, 4),
(5, 5),
(5, 6),
(6, 7),
(6, 8),
(9, 9),
(11, 10),
(15, 11),
(10, 12);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `animal`
--

CREATE TABLE `animal` (
  `fk_location_id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `sml` varchar(1) NOT NULL,
  `pk_animal_id` int(11) NOT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `animal`
--

INSERT INTO `animal` (`fk_location_id`, `name`, `description`, `sml`, `pk_animal_id`, `image`) VALUES
(1, 'Huffy', 'Hamster', 's', 1, './images/hamster.jpg'),
(2, 'Minky', 'Mouse', 's', 2, './images/mouse.jpg'),
(3, 'Rolf', 'Rat', 's', 3, './images/rat.jpg'),
(4, 'Peter', 'Parakeet', 's', 4, './images/parakeet.jpg'),
(5, 'Cindy', 'Cat', 'm', 5, './images/cat.jpg'),
(6, 'Dobby', 'Dachshund', 'm', 6, './images/dachshund.jpg'),
(7, 'Paul', 'Poodle', 'm', 7, './images/poodle.jpg'),
(8, 'Charlie', 'Chihuahua', 'm', 8, './images/chihuahua.jpg'),
(9, 'Sheila', 'Sheperd\'s Dog', 'l', 9, './images/sheperd.jpg'),
(10, 'Bill', 'Border Collie', 'l', 10, './images/bordercollie.jpg'),
(11, 'Herbert', 'Horse', 'l', 11, './images/horse.jpg'),
(12, 'Bernie', 'St. Bernard Dog', 'l', 12, './images/bernhardiner.jpg'),
(2, 'Test', 'Test', 's', 15, './images/hamster.jpg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `hobbies`
--

CREATE TABLE `hobbies` (
  `fk_animal_id` int(11) NOT NULL,
  `hobby` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `hobbies`
--

INSERT INTO `hobbies` (`fk_animal_id`, `hobby`) VALUES
(9, 'swim'),
(10, 'dig holes'),
(11, 'gallop'),
(12, 'retrieve'),
(5, 'play with toy mouses'),
(6, 'chew buffalo skin bones'),
(7, 'bark at mailmen'),
(8, 'chase birds');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `location`
--

CREATE TABLE `location` (
  `city` varchar(50) NOT NULL,
  `zip` int(6) NOT NULL,
  `address` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pk_location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `location`
--

INSERT INTO `location` (`city`, `zip`, `address`, `name`, `pk_location_id`) VALUES
('Wien', 1140, 'Heustraße 4', 'Maier', 1),
('Wien', 1110, 'Markstraße 5', 'Huber', 2),
('Wien', 1100, 'Werksgasse 5', 'Schmidt', 3),
('Wien', 1200, 'Augustgasse 7', 'Herzog', 4),
('Wien', 1110, 'Heimgasse 1', 'Schuster', 5),
('Wien', 1140, 'Mühlweg 7', 'Bauer', 6),
('Wien', 1110, 'Hauffgasse 3', 'Wojcek', 7),
('Salzburg', 5020, 'Mozartgasse 2', 'Herber', 8),
('Graz', 8010, 'Herrengasse 2', 'Müller', 9),
('Graz', 8010, 'Schubertstraße 3', 'Korber', 10),
('Klagenfurt', 9020, 'Maigasse 4', 'Wieland', 11),
('Klagenfurt', 9020, 'Bäckerweg 4', 'Bach', 12);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `website`
--

CREATE TABLE `website` (
  `fk_animal_id` int(11) NOT NULL,
  `website` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `website`
--

INSERT INTO `website` (`fk_animal_id`, `website`) VALUES
(1, 'http://www.hamsterhuffy.at'),
(2, 'http://www.mouseminky.at'),
(3, 'http://www.ratrolf.at'),
(4, 'http://www.parakeetpeter.at');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `adoptiondate`
--
ALTER TABLE `adoptiondate`
  ADD KEY `fk_animal_id` (`fk_animal_id`);

--
-- Indizes für die Tabelle `age`
--
ALTER TABLE `age`
  ADD KEY `fk_animal_id` (`fk_animal_id`);

--
-- Indizes für die Tabelle `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`pk_animal_id`),
  ADD KEY `fk_location_id` (`fk_location_id`);

--
-- Indizes für die Tabelle `hobbies`
--
ALTER TABLE `hobbies`
  ADD KEY `fk_animal_id` (`fk_animal_id`);

--
-- Indizes für die Tabelle `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`pk_location_id`);

--
-- Indizes für die Tabelle `website`
--
ALTER TABLE `website`
  ADD KEY `fk_animal_id` (`fk_animal_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `animal`
--
ALTER TABLE `animal`
  MODIFY `pk_animal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT für Tabelle `location`
--
ALTER TABLE `location`
  MODIFY `pk_location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `adoptiondate`
--
ALTER TABLE `adoptiondate`
  ADD CONSTRAINT `adoptiondate_ibfk_1` FOREIGN KEY (`fk_animal_id`) REFERENCES `animal` (`pk_animal_id`);

--
-- Constraints der Tabelle `age`
--
ALTER TABLE `age`
  ADD CONSTRAINT `age_ibfk_1` FOREIGN KEY (`fk_animal_id`) REFERENCES `animal` (`pk_animal_id`);

--
-- Constraints der Tabelle `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`fk_location_id`) REFERENCES `location` (`pk_location_id`);

--
-- Constraints der Tabelle `hobbies`
--
ALTER TABLE `hobbies`
  ADD CONSTRAINT `hobbies_ibfk_1` FOREIGN KEY (`fk_animal_id`) REFERENCES `animal` (`pk_animal_id`);

--
-- Constraints der Tabelle `website`
--
ALTER TABLE `website`
  ADD CONSTRAINT `website_ibfk_1` FOREIGN KEY (`fk_animal_id`) REFERENCES `animal` (`pk_animal_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
