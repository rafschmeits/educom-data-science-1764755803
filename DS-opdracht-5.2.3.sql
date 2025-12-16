-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 16 dec 2025 om 13:21
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

INSERT INTO `mhl_hitcount` (`year`, `Eerste_kwartaal`, `Tweede_kwartaal`, `Derde_kwartaal`, `vierde_kwartaal`, `Totaal`) VALUES
(2013, 0, 979, 34692, 26428, 62099),
(2014, 19686, 60097, 67273, 55646, 202702),
(2015, 54130, 46075, 63665, 47722, 211592),
(2016, 11005, 0, 0, 0, 11005);

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
