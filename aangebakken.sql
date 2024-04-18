-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2024 at 11:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aangebakken`
--

-- --------------------------------------------------------

--
-- Table structure for table `auteurs`
--

CREATE TABLE `auteurs` (
  `id` int(11) NOT NULL,
  `auteur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auteurs`
--

INSERT INTO `auteurs` (`id`, `auteur`) VALUES
(1, 'Herman den Blijker'),
(2, 'Ron Blaauw');

-- --------------------------------------------------------

--
-- Table structure for table `fotos`
--

CREATE TABLE `fotos` (
  `id` int(11) NOT NULL,
  `recept_foto_1` varchar(255) NOT NULL,
  `recept_foto_2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fotos`
--

INSERT INTO `fotos` (`id`, `recept_foto_1`, `recept_foto_2`) VALUES
(1, 'https://imgs.search.brave.com/SpZHrQSNrBgRitOIEOsdaSbRq9blfIjEk_LvlOfhISs/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNjE4/MDY2MjIyL25sL2Zv/dG8vY2FtZXJhLWNh/cHR1cmluZy1hLWZv/cmVzdC5qcGc_cz02/MTJ4NjEyJnc9MCZr/PTIwJmM9NnkwR0VN/OTg2bHFw', ''),
(2, 'https://imgs.search.brave.com/TPUaUX66ATozQyilMBH29jQG_cVxyw-xXdS2WfCH9mM/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tcC5y/ZXNoaWZ0Lm5sL3pv/b20vZjRlMjQ1YmEt/MDU5Yy00MmMzLTgy/YWQtZGRlM2UyYjlk/ZDU2LW1vb2ktbW9t/ZW50LmpwZz93PTQ2/MA', ''),
(3, 'https://imgs.search.brave.com/rA1yS_M0MatTXX5L3tPt6V9Zdi8LLtxA9C2c5vol_GY/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvOTc4/NzU0MTQvbmwvZm90/by9ncnVuZ3ktcnVp/bmVkLXNjcmF0Y2hl/ZC1maWxtLWZyYW1l/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz1fVlpJ', '');

-- --------------------------------------------------------

--
-- Table structure for table `ingredienten`
--

CREATE TABLE `ingredienten` (
  `id` int(11) NOT NULL,
  `ingredient_1` varchar(255) NOT NULL,
  `ingredient_2` varchar(255) NOT NULL,
  `ingredient_3` varchar(255) NOT NULL,
  `ingredient_4` varchar(255) NOT NULL,
  `ingredient_5` varchar(255) NOT NULL,
  `ingredient_6` varchar(255) NOT NULL,
  `ingredient_7` varchar(255) NOT NULL,
  `ingredient_8` varchar(255) NOT NULL,
  `ingredient_9` varchar(255) NOT NULL,
  `ingredient_10` varchar(255) NOT NULL,
  `ingredient_11` varchar(255) NOT NULL,
  `ingredient_12` varchar(255) NOT NULL,
  `ingredient_13` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredienten`
--

INSERT INTO `ingredienten` (`id`, `ingredient_1`, `ingredient_2`, `ingredient_3`, `ingredient_4`, `ingredient_5`, `ingredient_6`, `ingredient_7`, `ingredient_8`, `ingredient_9`, `ingredient_10`, `ingredient_11`, `ingredient_12`, `ingredient_13`) VALUES
(1, '200 gr boerenkool\r\n', '500 gr kruimige aardappels\r\n', '1 rookworst\r\n', '100 gr spekblokjes/reepjes\r\n', 'Snuf zout en peper\r\n', 'Scheut azijn', '', '', '', '', '', '', ''),
(2, '400 gr spaghetti\r\n', 'Verse peterselie\r\n', '100 gr Parmezaanse kaas (geraspt)\r\n', '3 eieren\r\n', 'Snuf peper en zout', '', '', '', '', '', '', '', ''),
(3, '4 grote tortilla wraps\r\n', '200 gr bonen\r\n', '160 gr stukjes kip (vegetarisch)\r\n', '1 klein kropje sla\r\n', '100 ml tomatensaus\r\n', '1 teen knoflook\r\n', '1 kleine ui', '70 gr maïs\r\n', '1 paprika\r\n', 'Handje geraspte kaas\r\n', '0.5 eetlepel burrito of Mexicaanse kruiden\r\n', '100 gr rijst\r\n', '125 ml zure room');

-- --------------------------------------------------------

--
-- Table structure for table `receptenboek`
--

CREATE TABLE `receptenboek` (
  `id` int(11) NOT NULL,
  `id_auteur` int(11) NOT NULL,
  `titel` varchar(255) NOT NULL,
  `id_ingredienten` int(11) NOT NULL,
  `id_stappen` int(11) NOT NULL,
  `recept_aangemaakt_datum` datetime NOT NULL,
  `recept_voor_aantal_personen` int(11) NOT NULL,
  `recept_bereidingstijd` time NOT NULL,
  `id_review` int(11) NOT NULL,
  `id_foto` int(11) NOT NULL,
  `id_voedingswaarde` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receptenboek`
--

INSERT INTO `receptenboek` (`id`, `id_auteur`, `titel`, `id_ingredienten`, `id_stappen`, `recept_aangemaakt_datum`, `recept_voor_aantal_personen`, `recept_bereidingstijd`, `id_review`, `id_foto`, `id_voedingswaarde`) VALUES
(1, 1, 'Boerenkool met worst', 1, 1, '2007-05-17 15:10:36', 2, '00:30:00', 1, 1, 1),
(2, 2, 'Pasta Carbonara', 2, 2, '2019-08-21 17:45:00', 2, '00:25:00', 2, 2, 2),
(3, 1, 'Burrito met kip', 3, 3, '2016-05-25 16:30:00', 2, '00:35:00', 3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `score` decimal(2,1) NOT NULL,
  `review` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `score`, `review`) VALUES
(1, 2.0, 'Review 1'),
(2, 3.0, 'Review 2'),
(3, 2.0, 'Review 3');

-- --------------------------------------------------------

--
-- Table structure for table `stappen`
--

CREATE TABLE `stappen` (
  `id` int(11) NOT NULL,
  `recept_stap_1` varchar(255) DEFAULT NULL,
  `recept_stap_2` varchar(255) DEFAULT NULL,
  `recept_stap_3` varchar(255) DEFAULT NULL,
  `recept_stap_4` varchar(255) DEFAULT NULL,
  `recept_stap_5` varchar(255) DEFAULT NULL,
  `recept_stap_6` varchar(255) DEFAULT NULL,
  `recept_stap_7` varchar(255) DEFAULT NULL,
  `recept_stap_8` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stappen`
--

INSERT INTO `stappen` (`id`, `recept_stap_1`, `recept_stap_2`, `recept_stap_3`, `recept_stap_4`, `recept_stap_5`, `recept_stap_6`, `recept_stap_7`, `recept_stap_8`) VALUES
(1, 'Schil de aardappels en snijd grote aardappels in tweeën.', 'Doe de boerenkool en aardappels in een pan en voeg water toe totdat alles goed onderstaat. Breng het geheel aan de kook en kook de aardappels en boerenkool ongeveer 20 minuten totdat de aardappels gaar zijn.', 'Bereid de rookworst volgens de verpakking. Zelf kook ik de rookworst mee in de pan met de aardappels en boerenkool.', 'Bak ondertussen in een andere pan de spekblokjes bruin en krokant, zonder olie toe te voegen.', 'Na ongeveer 20 minuten zijn de aardappels gaar, en giet je het geheel af. Stamp de aardappels met de boerenkool, een snufje zout en peper, azijn en de boter fijn (evt. kun je de azijn ook weglaten). Als de stamppot nog wat te droog is, voeg je een beetje ', 'Schep als laatste de spekblokjes (met het vet) door de boerenkool stamppot en serveer het geheel met de rookworst.\r\n\r\nSchep als laatste de spekblokjes (met het vet) door de boerenkool stamppot en serveer het geheel met de rookworst.', '', ''),
(2, 'Doe de spekblokjes in een pan en bak ze mooi krokant. Ze hoeven niet helemaal uitgebakken te worden.', 'Zet ondertussen een grote pan water met een snufje zout op het vuur en als het water kookt voeg je de spaghetti toe. Kook de spaghetti in ongeveer 10 min al dente (of check de verpakking voor de bereidingswijze).', 'Voeg de pasta direct uit de pan waarin je het hebt gekookt toe aan de pan met spekjes toe en schep er doorheen. Zet het vuur uit van de pan met spekjes en spaghetti.', 'Voeg de geraspte Parmezaanse kaas toe en voeg er een klein beetje pasta kookvocht aan toe, zodat de kaas smelt.', 'Kluts ondertussen de eieren en voeg ze daarna al roerend toe. Blijf roeren totdat het een romige saus.', 'Garneer de pasta carbonara eventueel met een beetje kaas en peterselie. Pasta carbonara is lekker met een frisse salade.', 'Let op: Als de spaghetti te veel is afgekoeld, bindt de saus niet, maar als de spaghetti te heet is gaan de eieren stollen. Zet de pan daarom niet meer terug op het vuur.', 'Tip: voor een vegetarische variant kun je vegetarische spekjes gebruiken of ze vervangen door champignons of gezouten cashewnoten.'),
(3, 'Spoel de rijst grondig af onder koud water.\r\nBreng 200 ml water aan de kook in een pan.\r\nVoeg de rijst toe aan het kokende water en laat het sudderen op laag vuur tot al het water is opgenomen en de rijst gaar is, volg de instru', 'Snijd de ui, knoflook en paprika fijn.\r\nVerhit wat olie in een pan op middelhoog vuur en voeg de gesneden ui en knoflook toe. Bak tot ze zacht en lichtbruin zijn.\r\nVoeg de paprika toe en bak deze tot hij zacht wordt.\r\nVoeg de ', 'Verwarm de tortilla wraps kort in een droge koekenpan of magnetron om ze zachter te maken.\r\nVerdeel de bereide rijst gelijkmatig over de wraps.\r\nSchep het bonen-kipmengsel op de rijst.', 'Leg een paar blaadjes sla bovenop het bonen-kipmengsel.\r\nLepel wat tomatensaus en zure room over de vulling.\r\nBestrooi elk burrito met een beetje geraspte kaas.', 'Vouw eerst de zijkanten van de tortilla naar binnen en rol deze vervolgens strak op vanaf de onderkant, zodat de vulling goed is ingesloten.', 'Snijd de burrito\'s doormidden en serveer ze warm.\r\nJe kunt ze serveren met extra zure room, salsa, guacamole of verse kruiden naar keuze.\r\nGeniet van je zelfgemaakte burrito\'s!', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `voedingswaarde`
--

CREATE TABLE `voedingswaarde` (
  `id` int(11) NOT NULL,
  `calorieen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voedingswaarde`
--

INSERT INTO `voedingswaarde` (`id`, `calorieen`) VALUES
(1, 300),
(2, 600),
(3, 500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auteurs`
--
ALTER TABLE `auteurs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredienten`
--
ALTER TABLE `ingredienten`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receptenboek`
--
ALTER TABLE `receptenboek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_foto` (`id_foto`),
  ADD KEY `id_review` (`id_review`),
  ADD KEY `id_voedingswaarde` (`id_voedingswaarde`),
  ADD KEY `id_stappen` (`id_stappen`),
  ADD KEY `id_auteur` (`id_auteur`),
  ADD KEY `id_ingredienten` (`id_ingredienten`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stappen`
--
ALTER TABLE `stappen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voedingswaarde`
--
ALTER TABLE `voedingswaarde`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auteurs`
--
ALTER TABLE `auteurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ingredienten`
--
ALTER TABLE `ingredienten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `receptenboek`
--
ALTER TABLE `receptenboek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stappen`
--
ALTER TABLE `stappen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `voedingswaarde`
--
ALTER TABLE `voedingswaarde`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `receptenboek`
--
ALTER TABLE `receptenboek`
  ADD CONSTRAINT `id_auteur` FOREIGN KEY (`id_auteur`) REFERENCES `auteurs` (`id`),
  ADD CONSTRAINT `id_foto` FOREIGN KEY (`id_foto`) REFERENCES `fotos` (`id`),
  ADD CONSTRAINT `id_ingredienten` FOREIGN KEY (`id_ingredienten`) REFERENCES `ingredienten` (`id`),
  ADD CONSTRAINT `id_review` FOREIGN KEY (`id_review`) REFERENCES `reviews` (`id`),
  ADD CONSTRAINT `id_stappen` FOREIGN KEY (`id_stappen`) REFERENCES `stappen` (`id`),
  ADD CONSTRAINT `id_voedingswaarde` FOREIGN KEY (`id_voedingswaarde`) REFERENCES `voedingswaarde` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
