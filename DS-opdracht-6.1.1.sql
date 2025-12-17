-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 17 dec 2025 om 09:29
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

INSERT INTO `mhl_hitcount` (`year`, `maand`, `COUNT(supplier_ID)`, `SUM(hitcount)`) VALUES
(2016, 'Januari', 4205, 11005),
(2015, 'December', 4669, 16084),
(2015, 'November', 5327, 13089),
(2015, 'Oktober', 7124, 18549),
(2015, 'September', 7469, 19087),
(2015, 'Augustus', 8170, 26142),
(2015, 'Juli', 8241, 18436),
(2015, 'Juni', 6163, 15422),
(2015, 'Mei', 7840, 16622),
(2015, 'April', 7202, 14031),
(2015, 'Maart', 7715, 21017),
(2015, 'Februari', 6462, 13063),
(2015, 'Januari', 8063, 20050),
(2014, 'December', 7869, 19182),
(2014, 'November', 6791, 16542),
(2014, 'Oktober', 7869, 19922),
(2014, 'September', 7869, 19112),
(2014, 'Augustus', 8069, 20856),
(2014, 'Juli', 8193, 27305),
(2014, 'Juni', 8155, 23833),
(2014, 'Mei', 8023, 23568),
(2014, 'April', 6099, 12696),
(2014, 'Maart', 2682, 4990),
(2014, 'Februari', 3658, 6426),
(2014, 'Januari', 5436, 8270),
(2013, 'December', 8420, 14588),
(2013, 'November', 2155, 3256),
(2013, 'Oktober', 6591, 8584),
(2013, 'September', 4424, 6283),
(2013, 'Augustus', 7879, 15910),
(2013, 'Juli', 8328, 12499),
(2013, 'Juni', 492, 979);

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
