-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 16 dec 2025 om 09:03
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
-- Tabelstructuur voor tabel `mhl_cities`
--

CREATE TABLE `mhl_cities` (
  `id` int(11) NOT NULL,
  `commune_ID` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Plaatsnamen per gemeente';

--
-- Gegevens worden geëxporteerd voor tabel `mhl_cities`
--

INSERT INTO `mhl_cities` (`name`, `commune_ID`) VALUES
('bonheiden (B)', 0),
('hin', 0),
('ter heij', 0),
('spaar', 0),
('wird', 0),
('hoek', 0),
('oudega-smallingerlind', 0),
('hengelo', 0),
('geesteren gld', 0),
('beek (lb)', 0),
('hoorn nh', 0),
('alteveer gn', 0),
('rossum ov', 0),
('spijk gld', 0),
('horn', 0),
('einighausen', 0),
('wouwse plantage', 0),
('geulle', 0),
('t harde', 0),
('s heerenberg', 0),
('botlek rotterdam', 0),
('buren fr', 0),
('hoenderloo', 0),
('grorinchem', 0),
('amstenrade', 0),
('winterswijl-huppel', 0),
('goude', 0),
('oostwold gem leek', 0),
('sloten fr', 0),
('europoort rotterdam', 0),
('sint geertruid', 0),
('etten gld', 0),
('tienhoven ut', 0),
('katwijk aan zee', 0),
('hedikhuizen', 0),
('striep', 0),
('rietmolen', 0),
('veenoord', 0),
('kolderwolde', 0),
('suwald', 0),
('blitterswijck', 0),
('hoedekenskerke', 0),
('wytgaard', 0),
('hilaard', 0),
('merselo', 0),
('onna', 0),
('oudendijk', 0),
('uitwellingerga', 0),
('winneweer', 0),
('nieuwdorp', 0),
('abbenbroek', 0),
('mariÃ«nberg', 0),
('rotsterhaule', 0),
('stad aan \'t haringvliet', 0),
('groet', 0),
('ane', 0),
('jutrijp', 0),
('meterik', 0),
('drouwenerveen', 0),
('langbroek', 0),
('stolwijk', 0),
('pingjum', 0),
('pannerden', 0),
('nieuw-dordrecht', 0),
('oentsjerk', 0),
('esch', 0),
('roderwolde', 0),
('beemte broekland', 0),
('drachtstercompagnie', 0),
('lutjebroek', 0),
('hoofdplaat', 0),
('surhuizum', 0),
('westhoek', 0),
('scharsterburg', 0),
('langeweg', 0),
('kolhom', 0),
('marsum', 0),
('sint hubert', 0),
('kiel-windeweer', 0),
('kwadendamme', 0),
('groenekan', 0),
('nispen', 0),
('zijderveld', 0),
('achtmaal', 0),
('zennewijnen', 0),
('feerwerd', 0),
('tiendeveen', 0),
('de weere', 0),
('ottoland', 0),
('oploo', 0),
('scheerwolde', 0),
('kuitaart', 0),
('harreveld', 0),
('herwijnen', 0),
('hekendorp', 0),
('folsgare', 0),
('puiflijk', 0),
('zwartemeer', 0),
('lutjegast', 0),
('wilhelminadorp', 0),
('nieuw Namen', 0),
('rottevalle', 0),
('schildwolde', 0),
('beerzerveld', 0),
('langezwaag', 0),
('blauwhuis', 0),
('griendtsveen', 0),
('heerewaarden', 0),
('burgwerd', 0),
('holthone', 0),
('wagenborgen', 0),
('veessen', 0),
('kropswolde', 0),
('lepelstraat', 0),
('willemsoord', 0),
('biezenmortel', 0),
('wintelre', 0),
('noordbeemster', 0),
('wagenberg', 0),
('foxhol', 0),
('zeijen', 0),
('stoutenburg', 0),
('hansweert', 0),
('ravenswoud', 0),
('bunne', 0),
('rouveen', 0),
('den velde', 0),
('hemrik', 0),
('haringhuizen', 0),
('zegge', 0),
('donderen', 0),
('zwartebroek', 0),
('hengstdijk', 0),
('oosthem', 0),
('sint Jansklooster', 0),
('jelsum', 0),
('it Heidenskip', 0),
('bredevoort', 0),
('ingelum', 0),
('oirsbeek', 0),
('sint OdiliÃ«nberg', 0),
('eagum', 0),
('nieuwaal', 0),
('rutten', 0),
('dongjum', 0),
('lage vuursche', 0),
('haarle', 0),
('maasbommel', 0),
('vragender', 0),
('haghorst', 0),
('hooglanderveen', 0),
('papenvoort', 0),
('burum', 0),
('tilligte', 0),
('galder', 0),
('ravenswaaij', 0),
('ulicoten', 0),
('ommeren', 0),
('klijndijk', 0),
('zevenbergschen Hoek', 0),
('nijega', 0),
('sint-Jacobiparochie', 0),
('den oever', 0),
('baard', 0),
('mussel', 0),
('valburg', 0),
('beegden', 0),
('rohel', 0),
('de hoeve', 0),
('broekland', 0),
('meppen', 0),
('geesbrug', 0),
('damwald', 0),
('hulsel', 0),
('holwierde', 0),
('haskerdijken', 0),
('gieterveen', 0),
('heikant', 0),
('schipborg', 0),
('batenburg', 0),
('standaardbuiten', 0),
('reitsum', 0),
('nederasselt', 0),
('molenaarsgraaf', 0),
('buggenum', 0),
('zandhuizen', 0),
('westershoof', 0),
('toldijk', 0),
('de hoef', 0),
('stampersgat', 0),
('ingen', 0),
('hoogblokland', 0),
('luttenberg', 0),
('kollumerpomp', 0),
('nisse', 0),
('jistrum', 0),
('wanroij', 0),
('engwierum', 0),
('meern', 0),
('piraeus', 0),
('spankeren', 0),
('krewerd', 0),
('noordeloos', 0),
('maarsbergen', 0),
('langenboom', 0),
('sint-kateline-waver (B)', 0),
('swifterbant', 0),
('zwartewaal', 0),
('goudswaard', 0),
('bontebok', 0),
('beritsum', 0),
('munnekezijl', 0),
('gytsjerk', 0),
('brakel', 0),
('Onbekende stad', 0);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `mhl_cities`
--
ALTER TABLE `mhl_cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_city_commune` (`commune_ID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `mhl_cities`
--
ALTER TABLE `mhl_cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `mhl_cities`
--
ALTER TABLE `mhl_cities`
  ADD CONSTRAINT `fk_city_commune` FOREIGN KEY (`commune_ID`) REFERENCES `mhl_communes` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
