-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 16 dec 2025 om 14:09
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
-- Structuur voor de view `directie`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `directie`  AS SELECT `c`.`supplier_ID` AS `supplier_ID`, `c`.`name` AS `contact`, `c`.`contacttype` AS `functie`, CASE WHEN `d`.`name` = 'Directie' THEN 'Directie' ELSE 'nvt' END AS `department` FROM (`mhl_contacts` `c` left join `mhl_departments` `d` on(`c`.`department` = `d`.`id`)) WHERE `c`.`contacttype` like '%directeur%' ;

--
-- VIEW `directie`
-- Gegevens: Geen
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
