-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 16 dec 2025 om 14:46
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
-- Structuur voor de view `verzendlijst`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `verzendlijst`  AS SELECT `s`.`id` AS `id`, CASE WHEN `s`.`p_address` is not null AND trim(`s`.`p_address`) <> '' THEN `s`.`p_address` ELSE concat(trim(`s`.`straat`),' ',trim(`s`.`huisnr`)) END AS `adres`, CASE WHEN `s`.`p_address` is not null AND trim(`s`.`p_address`) <> '' THEN `s`.`p_postcode` ELSE `s`.`postcode` END AS `postcode`, CASE WHEN `s`.`p_address` is not null AND trim(`s`.`p_address`) <> '' THEN `d`.`name` ELSE `c`.`name` END AS `stad` FROM ((`mhl_suppliers` `s` join `mhl_cities` `c` on(`s`.`city_ID` = `c`.`id`)) left join `mhl_cities` `d` on(`s`.`p_city_ID` = `d`.`id`)) ;

--
-- VIEW `verzendlijst`
-- Gegevens: Geen
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
