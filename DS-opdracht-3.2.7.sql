-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 15 dec 2025 om 15:11
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
-- Tabelstructuur voor tabel `mhl_suppliers`
--

CREATE TABLE `mhl_suppliers` (
  `id` int(11) NOT NULL,
  `membertype` int(11) NOT NULL DEFAULT 0,
  `company` int(11) DEFAULT 0,
  `name` varchar(75) DEFAULT NULL,
  `straat` varchar(50) DEFAULT NULL,
  `huisnr` varchar(25) DEFAULT NULL,
  `postcode` varchar(7) DEFAULT NULL,
  `city_ID` int(11) DEFAULT NULL,
  `p_address` varchar(30) DEFAULT NULL,
  `p_postcode` varchar(7) DEFAULT NULL,
  `p_city_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Leveranciers basis info';

--
-- Gegevens worden geëxporteerd voor tabel `mhl_suppliers`
--

INSERT INTO `mhl_suppliers` (`name`, `straat`, `huisnr`, `postcode`) VALUES
('\'t ARENDJE', 'industrieweg', '7-a', '5151RV'),
('\'t Beijerlands kaashuys', 'molendijk', '21', '3263AH'),
('\'t Hekeltje', 'robbenkoog', '29', '1822BA'),
('\'t Pakhuis', 'pakhuisweg', '1a', '6745XA'),
('\'t Strijkschuurtje', 'noordstraat', '6', '4503AJ'),
('\'t VAKKLEDINGHUIS', 'rijksweg Noord', '63', '6131CJ'),
('\'t Washuis', 'kalsdonksestraat', '153', '4702ZD'),
('\'t Wijnblad', '', '', NULL),
('\'t Wijnhoekske', 'tilburgseweg', '58', '4902TM'),
('\'t Wijnwinkeltje', 'de Ticht', '35', '1981AS');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `mhl_suppliers`
--
ALTER TABLE `mhl_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `fk_suppliers_city` (`city_ID`),
  ADD KEY `fk_suppliers_pcity` (`p_city_ID`),
  ADD KEY `fk_suppliers_membertype` (`membertype`),
  ADD KEY `fk_suppliers_company` (`company`),
  ADD KEY `fk_postcode` (`postcode`),
  ADD KEY `fk_p_postcode` (`p_postcode`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `mhl_suppliers`
--
ALTER TABLE `mhl_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9621;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `mhl_suppliers`
--
ALTER TABLE `mhl_suppliers`
  ADD CONSTRAINT `fk_p_postcode` FOREIGN KEY (`p_postcode`) REFERENCES `pc_lat_long` (`pc6`),
  ADD CONSTRAINT `fk_postcode` FOREIGN KEY (`postcode`) REFERENCES `pc_lat_long` (`pc6`),
  ADD CONSTRAINT `fk_suppliers_city` FOREIGN KEY (`city_ID`) REFERENCES `mhl_cities` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_suppliers_company` FOREIGN KEY (`company`) REFERENCES `mhl_companies` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_suppliers_membertype` FOREIGN KEY (`membertype`) REFERENCES `mhl_membertypes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_suppliers_pcity` FOREIGN KEY (`p_city_ID`) REFERENCES `mhl_cities` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
