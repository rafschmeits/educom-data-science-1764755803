-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 15 dec 2025 om 15:19
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
('amsterdamse Fruithandel', 'jan van Galenstraat', '14', '1051KM'),
('astein drankengroothandel', 'floreffestraat', '10', '5711AD'),
('van Doorn horeca groothandel', 'voltaweg', '22', '4338PS'),
('schiava horecagroothandel', 'bieslookstraat', '21', '9731HH'),
('te Riele groothandel', 'ambachtstraat', '2', '7609RA'),
('broekhuyzen horecagroothandel', 'walserij', '44', '2211SL'),
('brouwer horecagroothandel', 'dieselstraat', '1', '8263AE'),
('buffing drankengroothandel', 'venserweg', '21', '1112AR'),
('busa kip groothandel', 'food center d5', '29a', '1051KL'),
('W. de Graaf Kasregisterhandel', 'utrechtsestraat', '71', '1017VJ'),
('de Kok horecagroothandel', 'insulindestraat', '23', '5013BA'),
('de Kreij horecagroothandel', 'simon stevinweg', '1', '3241MD'),
('dirk de Jager vis- en garnalenhandel', 'driehuizerkerkweg', '95', '1985HA'),
('emmer groothandel', 'nijverheidsweg', '27c', '2031CN'),
('g. Geertsen vleesgroothandel', 'kaldenkerkerweg', '5', '5932CS'),
('hamak groothandel', 'zeggeveld', '17', '4705RP'),
('List horecagroothandel', 'heesweg', '38', '8102NB'),
('janssen horeca groothandel', 'pauvreweg', '60', '4879NH'),
('MAM groothandel', 'asterweg', '13-a', '1031HL'),
('mevlana groot- en detailhandel', 'jan van galenstraat', '4 - 104', '1051KM'),
('mulder horeca groothandel', 'motorkade ', '1', '1021JP'),
('nadort vishandel', 'jan van galenstraat', '4', '1051KM'),
('keijzers horecagroothandel', 'weeresteinstraat', '117', '2182GT'),
('kop v/d Haven zeevishandel', 'halkade', '34', '1976DC'),
('PASA groothandel', 'jan van Galenstraat', '4', '1051KM'),
('pelleboer diepvriesgroothandel', 'oude wetering ', '139', '8293PE'),
('rubo vleesgroothandel', 'tongelresestraat', '441a', '5641AV'),
('rustenburg groothandel', 'jan van galenstraat', '4 pier e', '1051KM'),
('schellens groothandel', 'vlierdensdk', '', '5705CK'),
('scholten horecagroothandel', 'bergerweg', '125', '1862PR'),
('scholtze horecagroothandel', 'vollerstraat', '22-27', '5051JV'),
('smit vishandel', 'de amert', '712', '5462GH'),
('tabara horeca groothandel', 'waalhaven noord', '45-47', '3087BJ'),
('wicor horecagroothandel', 'gildeweg ', '2', '2632BA'),
('wijngaarden zeevisgroothandel', 'halkade', '58', '1976DC'),
('van Slooten zeevisgroothandel', 'vissershavenstraat', '35', '1976DB'),
('zijdenbos groothandel', 'van heekstraat', '10', '3125BN'),
('verenigde Nederlandse Zeevisgroothandel', 'halkade', '2', '1976DC'),
('vita drinks groothandel', 'hogeweg ', '28f-11', '2042GH'),
('jeruzalem groothandel', 'de Giem', '3', '2031CR'),
('w. Franken horecagroothandel', 'melkrijder', '17d', '3861SG'),
('euro groothandel', 'vredeweg', '1', '1505HH'),
('h. Knijft horeca groothandel', 'hekendorpstraat', '48', '3079DX'),
('Den Hoed horecagroothandel', 'zaagmolen', '4 hal 3', '4751VL'),
('t.C. snacks en vleeshandel', 'grotestraat', '51-b', '5141JN'),
('versteeg groothandel', 'saenredamstraat', '4', '5643RR'),
('jesmina horecagroothandel', 'moesdijk', '20', '6004AX'),
('akar horeca groothandel', 'ninaberlaan', '67', '7447AC'),
('heisterkamp drankenhandel', 'eerste stegge', '2', '7631AE'),
('bessee horeca groothandel', 'wattstraat', '13', '2723RA'),
('lekker Sapje wijnhandel', 'herengracht', '11', '2312LA'),
('erco drankenhandel', 'voltastraat', '14', '6372CK'),
('van Blanken drankengroothandel', '', '', NULL),
('boxley drankenhandel', 'van hornstraat', '1', '5282NA'),
('texgro groothandel', '', '', NULL),
('th. Godschalx drankengroothandel', 'kroonakker', '23', '5595HA'),
('meulendijks Drankenhandel', 'middendijk', '36', '5705CC'),
('nelissen drankengroothandel', 'delst', '5', '5388EG'),
('kilic horeca groothandel', 'isaac hubertstraat', '81', '3034CR'),
('de Graaf horeca groothandel', 'meidoornlaan', '59', '3881EN'),
('ates horeca groothandel', 'het Ambacht', '34', '6931EZ'),
('Derks vleeshandel', 'De hork', '5', '5431NS'),
('ivar van den Berg drankenhandel', 'rietdekkersweg', '1', '3449JC'),
('de Edese Drankenhandel', 'nieuwe maanderbuurtweg', '40', '6717AS'),
('elsco drankenhandel', 'molenvliet', '11', '3335LH'),
('van Kooten vleesgroothandel', 'oeverweg', '3', '3417XK'),
('striek vleesgroothandel', '', '', NULL),
('a. van Wijnen Zeevishandel', 'ridderhof', '27-a', '2981ET'),
('boer kaashandel', 'geestdorp', '22', '3444BD'),
('van Ham groothandel', '', '', NULL),
('CVAH Centrale Vereniging voor de Ambulante Handel', 'stevinweg', '2', '3890AA'),
('HBD hoofdbedrijfschap detailhandel', 'nieuwe parklaan', '72-74', '2509LS'),
('HAGU horeca-groothandel', 'zandstraat', '16', '5683PL'),
('komans vishandel', '', '', NULL),
('baumgarten wijnhandel', 'tuinweg', '70', '7944AE'),
('arentz wijnhandel', 'hertogstraat', '82', '6511SE'),
('cremers wijnhandel', 'veeladingstraat', '7-c', '6041HW'),
('blok zuivelgroothandel', 'leigraafseweg', '13-a', '6983BR'),
('esdeka drankenhandel', 'amstellaan', '5', '5215GA'),
('al-Goe olijfolie- en wijnhandel', 'watermunt', '5', '4533RC'),
('casa Arminho import & groothandel', 'hermelijn', '42', '7423EJ'),
('J.P. Alsem wijnhandel', 'loosduinseweg', '693', '2571AM'),
('kraakman\'s wijnhandel', 'van ostadelaan', '272', '1816JH'),
('uelingsheide wijnhandel', 'ulingsheide', '1-a', '5932NA'),
('brunger drankengroothandel', 'de Ossenboer', '42', '7547SJ'),
('deunk viskwekerij en zeevisgroothandel', 'wooldseweg', '62', '7108AB'),
('verhoecxk groothandel', 'hoorzik', '25', '5331KJ'),
('MEKO Horecagroothandel', 'voltastraat', '10', '6372CK'),
('jasmina Horeca Groothandel', 'moesdijk', '20', '6004AX'),
('rogro Horecagroothandel', 'maasstraat', '63', '5944CB'),
('tuyl Horeca Groothandel', 'oranjeboomstraat', '2', '4424AG'),
('hilal Horeca Groothandel', 'hastelweg', '230', '5652CL'),
('edgar Meerwijk Biljarthandel', 'ligusterstraat', '1', '1783EE'),
('brinkman Groothandel', 'europalaan', '45', '3526KN'),
('ULV Trading Horeca Groothandel', 'strijkviertel', '38', '3454PM'),
('pyramiden Groothandel', 'geerdinksweg', '269', '7555DZ'),
('Bijvri Horeca Groothandel', 'egypte', '15', '9286EX'),
('vermaning groothandel', 'appelhof', '5', '8465RX'),
('palm Groothandel', 'graafstroomstraat', '3', '3044AN');

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
