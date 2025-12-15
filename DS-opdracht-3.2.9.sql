-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 15 dec 2025 om 15:24
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
('astein drankengroothandel', 'floreffestraat', '10', '5711AD'),
('van Doorn horeca groothandel', 'voltaweg', '22', '4338PS'),
('horeca groothandel Fourama', 'galliershof', '30', '5349BV'),
('marSchee groothandel voor de horeca', 'duizeldonksestraat', '26', '5705CA'),
('schiava horecagroothandel', 'bieslookstraat', '21', '9731HH'),
('drankengroothandel de Boer', 'koematen', '26', '8331TK'),
('FOOX groothandel Bergsma - Hoogeveen', 'stephensonstraat', '66', '7903AW'),
('te Riele groothandel', 'ambachtstraat', '2', '7609RA'),
('groothandel van der Wal', 'van nassauweg', '10', '2921LX'),
('groothandel Zuid-Nederland', 'willem barentszweg', '22', '5928LM'),
('broekhuyzen horecagroothandel', 'walserij', '44', '2211SL'),
('brouwer horecagroothandel', 'dieselstraat', '1', '8263AE'),
('buffing drankengroothandel', 'venserweg', '21', '1112AR'),
('busa kip groothandel', 'food center d5', '29a', '1051KL'),
('c.J. Langbroek zeevisgroothandel transport', 'breelstraat', '7', '1976CR'),
('de Kok horecagroothandel', 'insulindestraat', '23', '5013BA'),
('de Kreij horecagroothandel', 'simon stevinweg', '1', '3241MD'),
('dranken- en horecagroothandel Harry de Louw', 'energieweg', '16', '5145NW'),
('drankengroothandel Boonekamp', 'amphoraweg', '12', '2332EE'),
('emmer groothandel', 'nijverheidsweg', '27c', '2031CN'),
('g. Geertsen vleesgroothandel', 'kaldenkerkerweg', '5', '5932CS'),
('groothandel de Leede', 'edisonstraat', '14', '2809PB'),
('groothandel Louter', 'witte paal', '214', '1742LA'),
('groothandel Tijssens', 'broekhovenseweg', '130i', '5021LJ'),
('hamak groothandel', 'zeggeveld', '17', '4705RP'),
('List horecagroothandel', 'heesweg', '38', '8102NB'),
('horeca groothandel Brigida', 'dorpstraat', '25', '6441CB'),
('j.B. groothandel in vlees', 'nijverheidsweg', '7', '7671DA'),
('janssen horeca groothandel', 'pauvreweg', '60', '4879NH'),
('MAM groothandel', 'asterweg', '13-a', '1031HL'),
('mulder horeca groothandel', 'motorkade ', '1', '1021JP'),
('keijzers horecagroothandel', 'weeresteinstraat', '117', '2182GT'),
('kruidenier - Rotterdam (bezorggroothandel)', 'sluisjesdijk', '111', '3008PE'),
('JP Horeca - Amsterdam (bezorggroothandel)', 'kombuisweg', '1-3', '1041AV'),
('kruidenier - Nieuwegein (bezorggroothandel)', 'industrieweg', '1', '3433NL'),
('kruidenier - Oosterblokker (bezorggroothandel)', 'veilingweg', '1', '1696AJ'),
('kruidenier - Waddinxveen (bezorggroothandel)', 'coenecoop', '550', '2741PT'),
('kruidenier - Nijmegen (bezorggroothandel)', 'bijsterhuizen', '1126', '6546AS'),
('PASA groothandel', 'jan van Galenstraat', '4', '1051KM'),
('pelleboer diepvriesgroothandel', 'oude wetering ', '139', '8293PE'),
('pinar D&ouml;ner horeca-groothandel - Dordrecht', 'einsteinstraat', '67-B10', '3316GG'),
('rubo vleesgroothandel', 'tongelresestraat', '441a', '5641AV'),
('groothandel F. Ruijken', 'jan van galenstraat', '4 pier d, loods', '1051KM'),
('rustenburg groothandel', 'jan van galenstraat', '4 pier e', '1051KM'),
('schellens groothandel', 'vlierdensdk', '', '5705CK'),
('scholten horecagroothandel', 'bergerweg', '125', '1862PR'),
('scholtze horecagroothandel', 'vollerstraat', '22-27', '5051JV'),
('horeca Groothandel Tilburg', 'polluxstraat', '6', '5047RB'),
('tabara horeca groothandel', 'waalhaven noord', '45-47', '3087BJ'),
('wicor horecagroothandel', 'gildeweg ', '2', '2632BA'),
('wijngaarden zeevisgroothandel', 'halkade', '58', '1976DC'),
('zeevisgroothandel Dick Bakker', 'ronde zonnedauw', '38', '1991HV'),
('zeevisgroothandel gebr. Bakker', 'vlaardingenstraat', '18', '1976AS'),
('zeevisgroothandel Hugo Bijl', 'halkade', '44', '1976DC'),
('zeevisgroothandel Jan Krab', 'breesaapstraat', '102', '1975CC'),
('zeevisgroothandel Johan Dekker', 'james wattstraat', '3 n beneden', '1976BA'),
('zeevisgroothandel N. Visser', 'halkade', '50', '1976DC'),
('van Slooten zeevisgroothandel', 'vissershavenstraat', '35', '1976DB'),
('zeevisgroothandel Wijngaarden', 'halkade', '58', '1976DC'),
('zijdenbos groothandel', 'van heekstraat', '10', '3125BN'),
('valkenswaardse drankengroothandel Claes', 'dragonder', '45', '5555XZ'),
('ven groothandelcentrum', 'weesperstraat ', '124', '1112AP'),
('verenigde Nederlandse Zeevisgroothandel', 'halkade', '2', '1976DC'),
('vita drinks groothandel', 'hogeweg ', '28f-11', '2042GH'),
('horecagroothandel Piet', 'oosterpark', '73 hs', '1092AT'),
('jeruzalem groothandel', 'de Giem', '3', '2031CR'),
('pinar D&ouml;ner horeca groothandel - Breda', 'prinsenhil', '21', '4825AX'),
('w. Franken horecagroothandel', 'melkrijder', '17d', '3861SG'),
('groothandelscentrum Feyen', 'data', '7', '7741MG'),
('euro groothandel', 'vredeweg', '1', '1505HH'),
('groothandel Korsius', 'j van aemstelstraat', '49', '3411XK'),
('h. Knijft horeca groothandel', 'hekendorpstraat', '48', '3079DX'),
('Den Hoed horecagroothandel', 'zaagmolen', '4 hal 3', '4751VL'),
('versteeg groothandel', 'saenredamstraat', '4', '5643RR'),
('horecagroothandel Ermert Albers', 'raadhuisstraat', '80', '5241BM'),
('horecagroothandel H.M.M. van Daal', 'burg geradtstraat', '1', '6061GM'),
('jesmina horecagroothandel', 'moesdijk', '20', '6004AX'),
('horeca groothandel Jeruzalem', 'ir e.l.c. schiffstraat', '35', '7547RE'),
('akar horeca groothandel', 'ninaberlaan', '67', '7447AC'),
('bessee horeca groothandel', 'wattstraat', '13', '2723RA'),
('groothandel Intervries', 'industrieweg', '15', '6673DE'),
('zeevisgroothandel Klaas Schilder', 'jan van galenstraat', '4 ruimte 64-c', '1051KM'),
('de Vlag - Rotterdam (zelfbedieningsgroothandel)', 'sluisjesdijk', '97', '3087AD'),
('drankengroothandel Scheerder', 'textielweg', '20', '3812RV'),
('drankengroothandel Henk Smit bv', 'ankerweg', '2', '1041AT'),
('drankengroothandel van Gool - Rijnmond', 'groothandelsweg', '5', '2645EH'),
('bier- en wijngroothandel Diroy', 'jousterweg', '47', '8465PA'),
('van Blanken drankengroothandel', '', '', NULL),
('texgro groothandel', '', '', NULL),
('drankengroothandel de Git', 'tongelresestraat', '375', '5642NC'),
('th. Godschalx drankengroothandel', 'kroonakker', '23', '5595HA'),
('drankengroothandel Huybregts', 'halsterweg', '110', '4601ZA'),
('nelissen drankengroothandel', 'delst', '5', '5388EG'),
('drankengroothandel Winters Liessel', 'hoofdstraat', '51', '5757ZG'),
('kilic horeca groothandel', 'isaac hubertstraat', '81', '3034CR'),
('de Graaf horeca groothandel', 'meidoornlaan', '59', '3881EN'),
('ates horeca groothandel', 'het Ambacht', '34', '6931EZ'),
('horeca groothandel van Tuijl', 'de gagelaar', '1', '4421GS'),
('kaasgroothandel van de Beek', 'torenakkerweg', '4-a', '5735BG'),
('horecagroothandel B. Drenth', 'kottestraat', '33', '7615PC'),
('vereniging van de Nederlandse groothandel in dranken en horecabenodigdheden', 'dagelijkse groenmarkt', '3-5', '2513AL'),
('isis groothandel shoarma', 'p karel drossaartstraat', '70-74', '3131PG'),
('van Kooten vleesgroothandel', 'oeverweg', '3', '3417XK'),
('striek vleesgroothandel', '', '', NULL),
('van Ham groothandel', '', '', NULL),
('h. Liefting groothandel agf', 'ypesteinerlaan', '128', '1851ZT'),
('HAGU horeca-groothandel', 'zandstraat', '16', '5683PL'),
('groothandel Claessens', 'kielsbroek', '4', NULL),
('drankengroothandel Amicitia', 'marssumerstraat', '11', '8913AE'),
('drankengroothandel de Drie', 'vlasakker', '12', '7761RC'),
('koninklijke wijnhandel-slijterij-groothandel Dikkers', 'brinkstraat', '22', '7901LA'),
('drankengroothandel Rosink', 'stationsstraat', '18', '7468AR'),
('drankengroothandel Ellerkamp', 'tolstraat', '1', '7482DC'),
('drankengroothandel Echtermeijer', 'anemoonstraat', '2', '7555CA'),
('slijterij-drankengroothandel het Melkmeisje', 'voorthuizerstraat', '202', '3881SM'),
('groothandel Peter Dautzemberg', 'heerstraat-noord', '80', '6171CK'),
('groothandel den Oetel', 'hinthamerstraat', '93', '5211MG'),
('wijn- en drankengroothandel G. Verkerk', 'dianadreef', '105', '3561AA'),
('blok zuivelgroothandel', 'leigraafseweg', '13-a', '6983BR'),
('wijngroothandel Lentilles', 'forsythiastraat', '5', '6163MD'),
('casa Arminho import & groothandel', 'hermelijn', '42', '7423EJ'),
('brunger drankengroothandel', 'de Ossenboer', '42', '7547SJ'),
('deunk viskwekerij en zeevisgroothandel', 'wooldseweg', '62', '7108AB'),
('verhoecxk groothandel', 'hoorzik', '25', '5331KJ'),
('MEKO Horecagroothandel', 'voltastraat', '10', '6372CK'),
('jasmina Horeca Groothandel', 'moesdijk', '20', '6004AX'),
('rogro Horecagroothandel', 'maasstraat', '63', '5944CB'),
('Horecagroothandel Co van Hoof', 'randweg-Zuid', '7', '6021PW'),
('tuyl Horeca Groothandel', 'oranjeboomstraat', '2', '4424AG'),
('hilal Horeca Groothandel', 'hastelweg', '230', '5652CL'),
('brinkman Groothandel', 'europalaan', '45', '3526KN'),
('ULV Trading Horeca Groothandel', 'strijkviertel', '38', '3454PM'),
('de Vlag - Haarlem (zelfbedieningsgroothandel)', 'oudeweg', '30-c', '2031CC'),
('pyramiden Groothandel', 'geerdinksweg', '269', '7555DZ'),
('Bijvri Horeca Groothandel', 'egypte', '15', '9286EX'),
('horecagroothandel Edes', 'achterdijken', '22', '9163JV'),
('vermaning groothandel', 'appelhof', '5', '8465RX'),
('kipgroothandel De Gouden Haan', 'anthonetta Kuijlstraat', '91', '3066GS'),
('kaasgroothandel G. van Herk Az', 'groothandelsmarkt', '128131', '3044HD'),
('palm Groothandel', 'graafstroomstraat', '3', '3044AN'),
('FOOX groothandelsorganisatie - Veenendaal', 'landjuweel', '11', '3905PE'),
('FOOX groothandel Bergsma - Franeker', 'edisonstraat', '14', '8801PN'),
('FOOX groothandel van der Wal - Krimpen aan den IJssel', 'van Nassauweg', '10', '2921LX'),
('FOOX groothandel te Riele - Almelo', 'ambachtstraat', '2', '7609AA'),
('FOOX groothandel Zuid-Nederland - Venlo', 'willem Baretszweg', '22', '5928LM'),
('FOOX groothandel de Vries - Zevenhuizen', 'knibbelweg', '18-c', '2761JE'),
('FOOX groothandel de Smet - Oostburg', 'industrieweg', '15', '4501PM'),
('groothandel van Dijk', 'woudenbergseweg', '19 C-5', '3707HW'),
('groothandel GeeBee', 'looier', '6', '5253RA'),
('zuivelgroothandel Marinissen', 'handelsweg', '50-54', '4387PC'),
('de Rooij - groothandel in levensmiddelen', 'coenecoop', '385', '2741PN'),
('JP Horeca - Weert (bezorggroothandel)', 'fahrenheitstraat', '21', '6003DC'),
('kruidenier - Meppel (bezorggroothandel)', 'industrieweg', '8', '7944HS'),
('groothandel van Wees', 'heliumweg', '5', '3812RD');

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
