-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 17 jun 2021 om 11:57
-- Serverversie: 5.7.31
-- PHP-versie: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `verkiezingenprj3`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `standpunten`
--

DROP TABLE IF EXISTS `standpunten`;
CREATE TABLE IF NOT EXISTS `standpunten` (
  `StandpuntId` int(11) NOT NULL AUTO_INCREMENT,
  `PartijId` int(11) NOT NULL,
  `PartijName` varchar(200) NOT NULL,
  `ThemaId` int(11) NOT NULL,
  `Thema` varchar(200) NOT NULL,
  `Standpunt` varchar(2000) NOT NULL,
  PRIMARY KEY (`StandpuntId`),
  KEY `PartijId` (`PartijId`),
  KEY `ThemaId` (`ThemaId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `standpunten`
--

INSERT INTO `standpunten` (`StandpuntId`, `PartijId`, `PartijName`, `ThemaId`, `Thema`, `Standpunt`) VALUES
(1, 1, 'VVD', 2, 'Asielzoekers', 'Voor ons staat voorop dat echte vluchtelingen recht hebben op veiligheid. Zij moeten dus worden opgevangen in het eerste veilige land waar ze aankomen. Dat hoeft niet in Europa te zijn. Wij willen bijdragen aan veilige havens in de regio zelf. Daardoor kunnen vluchtelingen veilig worden opgevangen en hoeven zij niet voor een enorm bedrag hun leven te wagen in een smokkelbootje op zee.'),
(2, 1, 'VVD', 3, 'Cultuur', 'Wij vinden dat kunst en cultuur toegankelijk horen te zijn voor iedereen. Subsidies moeten dus niet alleen naar Amsterdam gaan, maar verspreid worden over het hele land. De overheid stelt zich daarbij neutraal op, want volkscultuur is ook cultuur. Zo kunnen bijvoorbeeld festivals ook in aanmerking komen voor subsidie.'),
(3, 2, 'D66', 7, 'Nederland in de EU', 'Europa brengt ons vrijheid, vrede en welvaart. Na jaren discussie over meer of minder Europa, moet het gaan over welk Europa we willen. Wij willen een sterk Europa dat de grote uitdagingen van nu aanpakt. Dat samen het de klimaatcrisis bedwingt. Een vuist maakt tegen de macht van China en Rusland.'),
(4, 3, 'PVV', 1, 'Arbeidsmigratie', 'De PVV is tegen de massa-immigratie. Ze zien de toestroom van niet-westerse allochtonen als een grote bedreiging voor Nederland. Wilders spreekt dan ook wel eens van een ‘tsunami’ die Nederland overspoelt en ook noemt hij de niet-westerse allochtonen wel ‘testosteronbommen’. Deze harde uitspraken komen voort uit de cijfers die volgens de PVV laten zien dat de niet-westerse allochtonen oververtegenwoordigd zijn in bijvoorbeeld de criminaliteit, discriminatie, overlast en uitkeringsafhankelijkheid. Een tweede reden van de PVV tegen de massa-immigratie is dat de nieuwe Nederlanders banen van de Nederlanders ‘inpikken’. Nederlanders hebben minder werk en moeten langer zoeken naar een nieuwe baan door de komst van immigranten.'),
(5, 4, 'CDA', 4, 'Handel en economie', 'Door middel van een omvangrijk crisis- en herstelpakket voor investeringen in de woningbouw, infrastructuur, digitalisering, innovatie en duurzaamheid zetten we in op krachtig economisch herstel. Tegelijk maken we de omslag naar een eerlijke, innovatieve en weerbare economie.'),
(6, 5, 'SP', 8, 'Veiligheid', 'Voor een goede staat van de rechtspraak is het belangrijk dat iedereen toegang tot de rechter heeft. Die toegang staat voornamelijk voor mensen met een lager inkomen onder druk. We hebben een internationale verantwoordelijkheid om vluchtelingen in ons land op te nemen. Waar mogelijk worden asielzoekers opgevangen in de regio waar ze vandaan komen. Daar biedt Nederland ruimhartig hulp bij aan. De samenleving doet steeds vaker een beroep op politie en justitie. Dan moeten we ook bereid zijn om meer te investeren in onze agenten en onze rechterlijke macht.'),
(7, 6, 'PvdA', 6, 'Onderwijs', 'Wij investeren in onderwijs, vooral waar dit het hardst nodig is. Het bestrijden van kansenongelijkheid en tweedeling hoort tot de kernopdrachten van de sociaal-democratie. Door kansenongelijkheid gaat talent verloren en geven we ruimte aan teleurstelling en frustratie, in plaats van dromen en ambitie. Mensen gelijke kansen bieden voorkomt dat een valse start levenslang leidt tot achterstand. Het zorgt voor een betere, gelukkigere samenleving voor iedereen.'),
(8, 7, 'GroenLinks', 10, 'Zorg', 'Het geld dat voor zorg bestemd is, moet aan zorg besteed worden. Dus geen geld meer naar de bonussen van bestuurders, geen geld meer naar de marketing van verzekeraars en geen woekerwinsten meer voor farmaceuten.'),
(9, 8, 'PvdD', 5, 'Klimaat', 'Het is hoog tijd voor een kanteling naar een politiek die een gezonde en veilige leefomgeving voor mens en dier centraal stelt. Die uitgaat van de draagkracht van de Aarde, niet van oneindige economische groei op een planeet die niet meegroeit. De Partij voor de Dieren is daarmee de aanjager van een radicaal ander milieubeleid.'),
(10, 9, 'CU', 9, 'Werkgelegenheid', 'Nu de werkgelegenheid onder druk staat en de werkloosheid stijgt, is het een extra grote uitdaging om iedereen in gelijke mate aan het werk te houden. De afstand van mensen met een afstand tot de arbeidsmarkt dreigt nog groter te worden dan deze al was. Overheden en werkgevers moeten alles op alles zetten om ervoor te zorgen dat deze mensen niet het kind van de coronacrisisrekening worden, maar dat ook nu ieders talent wordt benut. ');

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `standpunten`
--
ALTER TABLE `standpunten`
  ADD CONSTRAINT `standpunten_ibfk_1` FOREIGN KEY (`PartijId`) REFERENCES `partij` (`PartijId`),
  ADD CONSTRAINT `standpunten_ibfk_2` FOREIGN KEY (`ThemaId`) REFERENCES `thema` (`ThemaId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
