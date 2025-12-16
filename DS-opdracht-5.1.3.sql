-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 16 dec 2025 om 11:17
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mhl`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `mhl_hitcount`
--

CREATE TABLE `mhl_hitcount` (
  `supplier_ID` int(11) NOT NULL DEFAULT 0,
  `year` smallint(6) NOT NULL DEFAULT 0,
  `month` tinyint(4) NOT NULL DEFAULT 1,
  `hitcount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Hitcounter per lev/jaar/maand';

--
-- Gegevens worden geëxporteerd voor tabel `mhl_hitcount`
--

INSERT INTO `mhl_hitcount` (`year`, `month`, `COUNT(hitcount)`, `AVG(hitcount)`, `MIN(hitcount)`, `MAX(hitcount)`, `SUM(hitcount)`) VALUES
(2013, 6, 492, 1.9898, 1, 14, 979),
(2013, 7, 8328, 1.5008, 1, 117, 12499),
(2013, 8, 7879, 2.0193, 1, 168, 15910),
(2013, 9, 4424, 1.4202, 1, 55, 6283),
(2013, 10, 6591, 1.3024, 1, 74, 8584),
(2013, 11, 2155, 1.5109, 1, 37, 3256),
(2013, 12, 8420, 1.7325, 1, 141, 14588),
(2014, 1, 5436, 1.5213, 1, 78, 8270),
(2014, 2, 3658, 1.7567, 1, 35, 6426),
(2014, 3, 2682, 1.8606, 1, 75, 4990),
(2014, 4, 6099, 2.0817, 1, 59, 12696),
(2014, 5, 8023, 2.9376, 1, 51, 23568),
(2014, 6, 8155, 2.9225, 1, 405, 23833),
(2014, 7, 8193, 3.3327, 1, 882, 27305),
(2014, 8, 8069, 2.5847, 1, 707, 20856),
(2014, 9, 7869, 2.4288, 1, 713, 19112),
(2014, 10, 7869, 2.5317, 1, 801, 19922),
(2014, 11, 6791, 2.4359, 1, 595, 16542),
(2014, 12, 7869, 2.4377, 1, 40, 19182),
(2015, 1, 8063, 2.4867, 1, 30, 20050),
(2015, 2, 6462, 2.0215, 1, 387, 13063),
(2015, 3, 7715, 2.7242, 1, 607, 21017),
(2015, 4, 7202, 1.9482, 1, 251, 14031),
(2015, 5, 7840, 2.1202, 1, 33, 16622),
(2015, 6, 6163, 2.5024, 1, 39, 15422),
(2015, 7, 8241, 2.2371, 1, 29, 18436),
(2015, 8, 8170, 3.1998, 1, 380, 26142),
(2015, 9, 7469, 2.5555, 1, 110, 19087),
(2015, 10, 7124, 2.6037, 1, 48, 18549),
(2015, 11, 5327, 2.4571, 1, 28, 13089),
(2015, 12, 4669, 3.4448, 1, 33, 16084),
(2016, 1, 4205, 2.6171, 1, 60, 11005);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `mhl_hitcount`
--
ALTER TABLE `mhl_hitcount`
  ADD PRIMARY KEY (`supplier_ID`,`year`,`month`);

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `mhl_hitcount`
--
ALTER TABLE `mhl_hitcount`
  ADD CONSTRAINT `fk_hitcount_supplier` FOREIGN KEY (`supplier_ID`) REFERENCES `mhl_suppliers` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
