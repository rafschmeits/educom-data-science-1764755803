-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 15 dec 2025 om 15:30
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
('grandcaf&eacute; de Zaak', 'rijnplein', '17', '2405DB'),
('caff&egrave; Mondiano', 'stadhoudersmolenweg', '43', '7317AW'),
('univ&eacute; verzekeringen', 'jan bommerstraat', '4', '9402NR'),
('wijko sat&eacute;saus', 'arnhemse bovenweg', '160-178', '3708AH'),
('hab&eacute; Centrale retourencentra', 'deccaweg', '26a', '1042AD'),
('bisscheroux moza&iuml;eken', 'wittevrouwensingel', '36', '3581GD'),
('flexCaf&eacute;', 'westvlietweg', '60', '2491ED'),
('vin&atilde; Tarapac&aacute;', 'sprengerlaan', '19', '6703GA'),
('rh&ocirc;ne value wines', 'herenweg ', '41', '2361EE'),
('w&uuml;sthof', 'industrieweg', '24-b', '4153BW'),
('panach&eacute;e wijn', 'willem van mechelenstraat ', '11', '3633CK'),
('los sue&ntilde;os de lo capit&aacute;n', 'vierlinghstraat ', '51c', '4251LC'),
('domaine d\'Elkandr&eacute;', 'kalisstraat', '6', '5768CX'),
('pruv&eacute;', 'hamerstraat', '1', '1135GA'),
('bierbrouwerij het Brouwcaf&eacute;', 'dr lelykade', '2', '2583CM'),
('b&ouml;hmer Project', 'houtwijk', '63-c', '8251GD'),
('cr&egrave;me de la cr&egrave;me', 'miening', '40', '2381GP'),
('CUISINE D&Eacute;TACH&Eacute;E Nederland', 'industrieweg', '3-a', '4181CA'),
('de schrobbel&egrave;r', 'jan hilgersweg', '2', '5657ES'),
('d&eacute;kro horeca totaal', 'schaafdries', '40', '5371NJ'),
('e-learning &agrave; la carte', 'lijsterhaag', '29', '3993AS'),
('hor&eacute;-plaza', 'de werven ', '6', '2731AZ'),
('illycaff&eacute; Nederland', 'mijlweg', '12', '3295KH'),
('j&eacute;c&eacute;v&eacute;', 'cuneraweg', '330', '3911RT'),
('l&eacute;gumes & couverts', 'toermalijnring', '1804-1808', '3316LC'),
('manuel Caff&eacute; Nederland', 'westnieuwland', '23', '3131VX'),
('nering B&ouml;gel', 'graafschap hornelaan', '155', '6001AC'),
('nestl&eacute; professional', 'spaklerweg ', '53', '1099BB'),
('KB de souffl&eacute; specialist', 'hoge Maat', '8', '3961NC'),
('k&ouml;pp vers food en services', 'bijsterhuizen ', '11-26', '6546AS'),
('oro caff&eacute;', 'spilsluizen', '12', '9712NS'),
('pinar D&ouml;ner horeca-groothandel - Dordrecht', 'einsteinstraat', '67-B10', '3316GG'),
('vishandel Ren&eacute; van de Mheen', 'haringweg', '17', '3751BG'),
('L&eacute;do Foodimpuls', 'kleverskerkseweg', '14', '4338PM'),
('noordhollandse Energie Co&ouml;peratie', 'de weel', '20', '1736KB'),
('alert hygi&euml;ne', 'romeinenweg', '48', '5349AL'),
('ambrose bedrijfshygi&euml;ne', 'loveren', '25', '5000JA'),
('bedrijfshygi&euml;ne Organisatie Nederland', 'bernhardstraat', '26', '7491EB'),
('hoekstra bedrijfshygi&euml;ne', 'riperwei', '23', '8406AL'),
('hygi&euml;ne Centrum Nederland', 'operetteweg', '21s', '1323VK'),
('lamon bedrijfshygi&euml;ne bv', 'handelsweg', '21-23', '9482WG'),
('caf&eacute; automatic & catering', 'pampuslaan', '151', '1382JN'),
('pinar D&ouml;ner horeca groothandel - Breda', 'prinsenhil', '21', '4825AX'),
('calv&eacute;', 'wateringseweg', '4', '2611XT'),
('l&auml;tta', 'nassaukade', '5', '3071JL'),
('vers &agrave; la Carte', 'ouddeelstraat', '', '8936AX'),
('sch&ouml;nhage & Zn. bv', 'jan van galenstraat', '14 loods c5', '1051KM'),
('ma&icirc;tre Andr&eacute;', 'zonnekracht', '5', '3255SC'),
('rol&eacute; security', '', '', '1008AA'),
('roV&eacute;', 'industrieweg', '41', '1775PW'),
('r&eacute;sidence wijnen', 'veenderveld', '55', '2371TT'),
('ogi&euml;r interieurbouw', 'tromputte', '16', '6269BC'),
('gem&uuml;nder brouwerij', 'noorderring', '5', '9363TC'),
('la diff&eacute;rence', 'overtoom', '95-a hs', '1054HD'),
('wittekerke ros&eacute;', 'schutsestraat', '5', '4841EC'),
('app&egrave;l bedrijfscatering', 'utopialaan', '50', '5232CE'),
('fleur de caf&eacute;', 'dortmundstraat', '18', '7418BH'),
('r&eacute;my Martin', 'prins bernhardplein', '200', '1097JB'),
('passo&atilde;', '', '', NULL),
('h&auml;agen Dazs', 'rembrandtplein', '7', '1017CT'),
('bakkerscaf&eacute; Nijmegen', 'castellastraat', '29', '6512EV'),
('hag&eacute; International', 'spoorwegemplacement', '1', '2991VT'),
('eura d&ouml;ner Holland bv', 'bovendijk', '139', '3045PC'),
('&Uuml;lkem d&ouml;nerfabriek', 'minister Kanstraat', '13', '4815HE'),
('vin&eacute;e wijnimport', 'spengerlaan', '19', '6703GA'),
('grand Cru caf&eacute; Fagel', 'steynlaan', '52', '3701EH'),
('m&ouml;llers educatieve instelling', 'grevelingstraat', '120', '2161WX'),
('m&ouml;venpick ice cream', 'vevey zwitserland', '', NULL),
('van den Hoven assuranti&euml;n', '', '', NULL),
('bilijam assuranti&euml;n', 'binnendijk', '81', '8461LH'),
('henk Jan de Heer assuranti&euml;n', 'smederijstraat', '2', '4800DE'),
('b&eacute; D&eacute; interieurbouw', 'pyriet', '25', '9207GK'),
('johan Deli&euml;n', 'ampereweg', '5', '2627BG'),
('chef-Arriv&eacute;', 'de colman', '31', '2291JL'),
('chocolaterie Alb&egrave;rt', 'energieweg', '20', '5071NP'),
('palino specialit&eacute;', '', '', NULL),
('deli pat&eacute;', '', '', '3960BJ'),
('k&uuml;hlmann gourmet salades', '', '', NULL),
('l&eacute;do verswaren', '', '', NULL),
('palv&eacute;co', '', '', NULL),
('porcs Qualit&eacute; Ardenne', 'avenue de norv&egrave;ge     4960', '', NULL),
('vindr&ocirc;me', 'de dijk', '13', '9797PE'),
('in wijnen Gerard Br&uuml;ning', 'nijverheidstraat', '69', '6681LN'),
('l\'imp&eacute;ratrice wijnkoperij', 'energieweg', '31-10', '4104AG'),
('l\'&eacute;motion du vin', '', '', '6040KB'),
('wijnkoperij le Ch&acirc;telain', 'newtonweg', '28-a', '6040AG'),
('andr&eacute; wijn import', 'albardaweg', '143', '6702CW'),
('horv&aacute;th wijnen', 'klip', '182', '8224CL'),
('la V&eacute;raison wijnen', 'sperwerhorst', '19', '5431KW'),
('v.O.F. Vin&atilde;mar', 'kloosterdreef', '49-a', '5612CT'),
('ch&acirc;teaux et domaines Dumont', 'burg. serrarislaan', '7', '4835LG'),
('confr&eacute;rie des amateurs du bon vin', 'hooghemertseweg          ', '2', '5291NG'),
('corn&eacute; Janssen wijnimport', 'klaverberg', '18', '4708KH'),
('entreprise la No&euml;', 'spaarne', '30', '3904NH'),
('ibervin selecci&oacute;n / passie voor Spaanse wijn', 'twikkelstraat', '41', '4834LL'),
('inviv&eacute;', 'korte langewijnseweg', '18', '1272BV'),
('isra&euml;l producten centrum', '', '', '3860BA'),
('la Cave &aacute; Vin wijnimport', '', '', '5602BP'),
('mo&euml;t Hennessy Nederland', '', '', '3740AB'),
('ch&acirc;teau Neercanne', 'cannerweg', '800', '6213ND'),
('Ori&aacute;s Bor H&aacute;z', 'gildestraat', '4', '1401TT'),
('rougeros&eacute;blanc', 'molenstraat', '23', '2242HT'),
('van den Heuvel specialit&agrave;', 'noordvest', '79', '3111PG'),
('vin Sup&eacute;rieur de France', 'anne franklaan', '76', '7421HK'),
('vis-&agrave;-Vin', 'lakenblekerstraat', '47', '1431GE'),
('at&eacute; Horesca grootverbruik', 'baileybrugweg', '2', '4941TB'),
('can Duran + Batall&eacute;', 'gurri             2-08553', '2', NULL),
('rougi&eacute; Sarlat', 'avenue du Perigord', 'bp 118', NULL),
('co&ouml;peratie Heibloem eieren', 'spoordonkseweg', '144-a', '5788SR'),
('m&uuml;ller fresh food logistics', '', '', NULL),
('biercarr&eacute;', 'grasweg', '49', '1031HX'),
('L&Ouml;LSBERG', 'otto-Hahn-Strasse', '9-a', NULL),
('porzellanfabrik Sch&ouml;nwald', 'rehauer strasse', '44-54', NULL),
('laimb&ouml;ck horeca administratie & advies', 'archimedesstraat', '60', '2517RW'),
('mo &ograve;r', 'steenbakkerstraat', '3', '2222AT'),
('l&uuml;bke', 'ondernemingsweg', '75-t', '1422DZ'),
('rentex Aw&eacute;', 'Business Park Stein', '323', '6181MC'),
('vereniging Bartim&eacute;us Sonneheerdt', '', '', '3700AZ'),
('CAS Comit&eacute; Anti Stierenvechten', '', '', '3500BH'),
('christenen voor Isra&euml;l', '', '', '3860BC'),
('interkerkelijke Stichting Ethiopi&euml;-Eritrea', 'industrierondweg', '14-a', '8321EB'),
('Familie Sponsorplan Roemeni&euml;', '', '', '4200AS'),
('Familiehuis Dani&euml;l den Hoed', 'groene Hilledijk', '299', '3075EA'),
('hulp aan Landgenoten in Indonesi&euml; (HALIN)', 'zoutmanstraat', '23 II', '2518GL'),
('emv&eacute;l interieur', 'de Run', '4426', '5503LR'),
('d&eacute; Biljartmakers', 'portengen', '51', '3628EC'),
('alb&eacute; Horeca Exploitatie', 'weidezicht', '8', '1462GB'),
('Log&eacute; Foodmachines', 'lutkeberg', '35', '7678AJ'),
('novimex Horeca Hygi&euml;ne en Dienstverlening', 'tolstraat', '33', '7482DC'),
('caff&eacute; Arabica Benelux', 'rossinistraat', '46', '5344AK'),
('LEVENS cooking & baking systems Belgi&euml; - Bornem (B)', 'Rijksweg', '7', NULL),
('caff&eacute; Appassionato', 'spilshuizen', '12-12a', '9712NS'),
('Itali&euml;Koffie', 'wildenborgstraat', '29', '4834PH'),
('eigen Horeca Makelaar - Limburg (Belgi&euml;)', '', '', NULL),
('eigen Horeca Makelaar - Antwerpen / West-Vlaanderen (Belgi&euml;)', '', '', NULL),
('t&ouml;nissteiner Privatbrunnen', 'tiensesteenweg', '63', NULL),
('Ger Leenen Financi&euml;le Diensten', 'Jan Campertstraat', '7 (unit 0.01) gebouw B', '6416SG'),
('CAF&eacute; ZERO', '', '', NULL),
('Huub Oberj&eacute;', 'martinushof', '5', '6121BK'),
('fl&uuml;gel Nederland', 'klaverbaan', '142', '2908KD');

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
