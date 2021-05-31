-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 31, 2021 alle 16:13
-- Versione del server: 10.4.14-MariaDB
-- Versione PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elaborato`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `anagrafica`
--

CREATE TABLE `anagrafica` (
  `id_utente` int(11) NOT NULL,
  `data_nascita` date NOT NULL,
  `sesso` varchar(2) NOT NULL,
  `comune` int(11) NOT NULL,
  `stato` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `anagrafica`
--

INSERT INTO `anagrafica` (`id_utente`, `data_nascita`, `sesso`, `comune`, `stato`, `id_user`) VALUES
(1, '2002-01-30', 'M', 6, 1, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `anag_sintomi`
--

CREATE TABLE `anag_sintomi` (
  `id_utente` int(11) NOT NULL,
  `id_sintomo` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `anag_sintomi`
--

INSERT INTO `anag_sintomi` (`id_utente`, `id_sintomo`, `data`) VALUES
(1, 1, '2021-05-31'),
(1, 2, '2021-05-31'),
(3, 6, '2021-05-27');

-- --------------------------------------------------------

--
-- Struttura della tabella `comuni`
--

CREATE TABLE `comuni` (
  `id_comune` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `id_provincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `comuni`
--

INSERT INTO `comuni` (`id_comune`, `nome`, `id_provincia`) VALUES
(1, 'Alessandria', 1),
(2, 'Asti', 2),
(3, 'Biella', 3),
(4, 'Cuneo', 4),
(5, 'Novara', 5),
(6, 'Torino', 6),
(7, 'Verbano-Cusio-Ossola', 7),
(8, 'Vercelli', 8),
(9, 'Acqui Terme', 1),
(10, 'Albera Ligure', 1),
(11, 'Alfiano Natta', 1),
(12, 'Alice Bel Colle', 1),
(13, 'Alluvioni Piovera', 1),
(14, 'Altavilla Monferrato', 1),
(15, 'Alzano Scrivia', 1),
(16, 'Arquata Scrivia', 1),
(17, 'Avolasca', 1),
(18, 'Balzola', 1),
(19, 'Basaluzzo', 1),
(20, 'Bassignana', 1),
(21, 'Belforte Monferrato', 1),
(22, 'Bergamasco', 1),
(23, 'Berzano di Tortona', 1),
(24, 'Berzano di Tortona', 1),
(25, 'Bistagno', 1),
(26, 'Borghetto di Borbera', 1),
(27, 'Borgo San Martino', 1),
(28, 'Borgoratto Alessandrino', 1),
(29, 'Bosco Marengo', 1),
(30, 'Bosio', 1),
(31, 'Bozzole', 1),
(32, 'Brignano-Frascata', 1),
(33, 'Cabella Ligure', 1),
(34, 'Camagna Monferrato', 1),
(35, 'Camino', 1),
(36, 'Cantalupo Ligure', 1),
(37, 'Capriata d\'Orba', 1),
(38, 'Carbonara Scrivia', 1),
(39, 'Carentino', 1),
(40, 'Carezzano', 1),
(41, 'Carpeneto', 1),
(42, 'Carrega Ligure', 1),
(43, 'Carrosio', 1),
(44, 'Cartosio', 1),
(45, 'Casal Cermelli', 1),
(46, 'Casale Monferrato', 1),
(47, 'Casaleggio Boiro', 1),
(48, 'Casalnoceto', 1),
(49, 'Casasco', 1),
(50, 'Cassano Spinola', 1),
(51, 'Cassine', 1),
(52, 'Cassinelle', 1),
(53, 'Castellania Coppi', 1),
(54, 'Castellar Guidobono', 1),
(55, 'Castellazzo Bormida', 1),
(56, 'Castelletto d\'Erro', 1),
(57, 'Castelletto d\'Orba', 1),
(58, 'Castelletto Merli', 1),
(59, 'Castelletto Monferrato', 1),
(60, 'Castelnuovo Bormida', 1),
(61, 'Castelnuovo Scrivia', 1),
(62, 'Castelspina', 1),
(63, 'Cavatore', 1),
(64, 'Cella Monte', 1),
(65, 'Cereseto', 1),
(66, 'Cerreto Grue', 1),
(67, 'Cerrina', 1),
(68, 'Coniolo', 1),
(69, 'Conzano', 1),
(70, 'Costa Vescovato', 1),
(71, 'Cremolino', 1),
(72, 'Denice', 1),
(73, 'Dernice', 1),
(74, 'Fabbrica Curone', 1),
(75, 'Felizzano', 1),
(76, 'Fraconalto', 1),
(77, 'Francavilla Bisio', 1),
(78, 'Frascaro', 1),
(79, 'Frassinello Monferrato', 1),
(80, 'Frassineto Po', 1),
(81, 'Fresonara', 1),
(82, 'Frugarolo', 1),
(83, 'Fubine Monferrato', 1),
(84, 'Gabiano', 1),
(85, 'Gamalero', 1),
(86, 'Garbagna', 1),
(87, 'Gavi', 1),
(88, 'Giarole', 1),
(89, 'Gremiasco', 1),
(90, 'Grognardo', 1),
(91, 'Grondona', 1),
(92, 'Guazzora', 1),
(93, 'Isola Sant\'Antonio', 1),
(94, 'Lerma', 1),
(95, 'Lu e Cuccaro Monferrato', 1),
(96, 'Malvicino', 1),
(97, 'Masio', 1),
(98, 'Melazzo', 1),
(99, 'Merana', 1),
(100, 'Mirabello Monferrato', 1),
(101, 'Molare', 1),
(102, 'Molino dei Torti', 1),
(103, 'Mombello Monferrato', 1),
(104, 'Momperone', 1),
(105, 'Moncestino', 1),
(106, 'Mongiardino Ligure', 1),
(107, 'Monleale', 1),
(108, 'Montacuto', 1),
(109, 'Montaldeo', 1),
(110, 'Montaldo Bormida', 1),
(111, 'Montecastello', 1),
(112, 'Montechiaro d\'Acqui', 1),
(113, 'Montegioco', 1),
(114, 'Montemarzino', 1),
(115, 'Morano sul Po', 1),
(116, 'Morbello', 1),
(117, 'Mornese', 1),
(118, 'Morsasco', 1),
(119, 'Murisengo', 1),
(120, 'Novi Ligure', 1),
(121, 'Occimiano', 1),
(122, 'Odalengo Grande', 1),
(123, 'Odalengo Piccolo', 1),
(124, 'Olivola', 1),
(125, 'Orsara Bormida', 1),
(126, 'Ottiglio', 1),
(127, 'Ovada', 1),
(128, 'Oviglio', 1),
(129, 'Ozzano Monferrato', 1),
(130, 'Paderna', 1),
(131, 'Pareto', 1),
(132, 'Parodi Ligure', 1),
(133, 'Pasturana', 1),
(134, 'Pecetto di Valenza', 1),
(135, 'Pietra Marazzi', 1),
(136, 'Pomaro Monferrato', 1),
(137, 'Pontecurone', 1),
(138, 'Pontestura', 1),
(139, 'Ponti', 1),
(140, 'Ponzano Monferrato', 1),
(141, 'Ponzone', 1),
(142, 'Pozzol Groppo', 1),
(143, 'Pozzolo Formigaro', 1),
(144, 'Prasco', 1),
(145, 'Predosa', 1),
(146, 'Quargnento', 1),
(147, 'Quattordio', 1),
(148, 'Ricaldone', 1),
(149, 'Rivalta Bormida', 1),
(150, 'Rivarone', 1),
(151, 'Rocca Grimalda', 1),
(152, 'Roccaforte Ligure', 1),
(153, 'Rocchetta Ligure', 1),
(154, 'Rosignano Monferrato', 1),
(155, 'Sala Monferrato', 1),
(156, 'Sale', 1),
(157, 'San Cristoforo', 1),
(158, 'San Giorgio Monferrato', 1),
(159, 'San Salvatore Monferrato', 1),
(160, 'San Sebastiano Curone', 1),
(161, 'Sant\'Agata Fossili', 1),
(162, 'Sardigliano', 1),
(163, 'Sarezzano', 1),
(164, 'Serralunga di Crea', 1),
(165, 'Serravalle Scrivia', 1),
(166, 'Sezzadio', 1),
(167, 'Silvano d\'Orba', 1),
(168, 'Solero', 1),
(169, 'Solonghello', 1),
(170, 'Spigno Monferrato', 1),
(171, 'Spineto Scrivia', 1),
(172, 'Stazzano', 1),
(173, 'Strevi', 1),
(174, 'Tagliolo Monferrato', 1),
(175, 'Tassarolo', 1),
(176, 'Terruggia', 1),
(177, 'Terzo', 1),
(178, 'Ticineto', 1),
(179, 'Tortona', 1),
(180, 'Treville', 1),
(181, 'Trisobbio', 1),
(182, 'Valenza', 1),
(183, 'Valmacca', 1),
(184, 'Vignale Monferrato', 1),
(185, 'Vignole Borbera', 1),
(186, 'Viguzzolo', 1),
(187, 'Villadeati', 1),
(188, 'Villalvernia', 1),
(189, 'Villamiroglio', 1),
(190, 'Villanova Monferrato', 1),
(191, 'Villaromagnano', 1),
(192, 'Visone', 1),
(193, 'Volpedo', 1),
(194, 'Volpeglino', 1),
(195, 'Voltaggio', 1),
(196, 'Agliano Terme', 2),
(197, 'Albugnano', 2),
(198, 'Antignano', 2),
(199, 'Aramengo', 2),
(200, 'Azzano d\'Asti', 2),
(201, 'Baldichieri d\'Asti', 2),
(202, 'Belveglio', 2),
(203, 'Berzano di San Pietro', 2),
(204, 'Bruno', 2),
(205, 'Bubbio', 2),
(206, 'Buttigliera d\'Asti', 2),
(207, 'Calamandrana', 2),
(208, 'Calliano', 2),
(209, 'Calosso', 2),
(210, 'Camerano Casasco', 2),
(211, 'Canelli', 2),
(212, 'Cantarana', 2),
(213, 'Capriglio', 2),
(214, 'Casorzo', 2),
(215, 'Cassinasco', 2),
(216, 'Castagnole delle Lanze', 2),
(217, 'Castagnole Monferrato', 2),
(218, 'Castel Boglione', 2),
(219, 'Castel Rocchero', 2),
(220, 'Castell\'Alfero', 2),
(221, 'Castellero', 2),
(222, 'Castelletto Molina', 2),
(223, 'Castello di Annone', 2),
(224, 'Castelnuovo Belbo', 2),
(225, 'Castelnuovo Calcea', 2),
(226, 'Castelnuovo Don Bosco', 2),
(227, 'Cellarengo', 2),
(228, 'Celle Enomondo', 2),
(229, 'Cerreto d\'Asti', 2),
(230, 'Cerro Tanaro', 2),
(231, 'Cessole', 2),
(232, 'Chiusano d\'Asti', 2),
(233, 'Cinaglio', 2),
(234, 'Cisterna d\'Asti', 2),
(235, 'Coazzolo', 2),
(236, 'Cocconato', 2),
(237, 'Corsione', 2),
(238, 'Cortandone', 2),
(239, 'Cortanze', 2),
(240, 'Cortazzone', 2),
(241, 'Cortiglione', 2),
(242, 'Cossombrato', 2),
(243, 'Costigliole d\'Asti', 2),
(244, 'Cunico', 2),
(245, 'Dusino San Michele', 2),
(246, 'Ferrere', 2),
(247, 'Fontanile', 2),
(248, 'Frinco', 2),
(249, 'Grana', 2),
(250, 'Grazzano Badoglio', 2),
(251, 'Incisa Scapaccino', 2),
(252, 'Isola d\'Asti', 2),
(253, 'Loazzolo', 2),
(254, 'Maranzana', 2),
(255, 'Maretto', 2),
(256, 'Moasca', 2),
(257, 'Mombaldone', 2),
(258, 'Mombaruzzo', 2),
(259, 'Mombercelli', 2),
(260, 'Monale', 2),
(261, 'Monastero Bormida', 2),
(262, 'Moncalvo', 2),
(263, 'Moncucco Torinese', 2),
(264, 'Mongardino', 2),
(265, 'Montabone', 2),
(266, 'Montafia', 2),
(267, 'Montaldo Scarampi', 2),
(268, 'Montechiaro d\'Asti', 2),
(269, 'Montegrosso d\'Asti', 2),
(270, 'Montemagno', 2),
(271, 'Montiglio Monferrato', 2),
(272, 'Moransengo', 2),
(273, 'Nizza Monferrato', 2),
(274, 'Olmo Gentile', 2),
(275, 'Passerano Marmorito', 2),
(276, 'Penango', 2),
(277, 'Piea', 2),
(278, 'Pino d\'Asti', 2),
(279, 'Piova\' Massaia', 2),
(280, 'Portacomaro', 2),
(281, 'Quaranti', 2),
(282, 'Refrancore', 2),
(283, 'Revigliasco d\'Asti', 2),
(284, 'Roatto', 2),
(285, 'Robella', 2),
(286, 'Rocca d\'Arazzo', 2),
(287, 'Roccaverano', 2),
(288, 'Rocchetta Palafea', 2),
(289, 'Rocchetta Tanaro', 2),
(290, 'San Damiano d\'Asti', 2),
(291, 'San Giorgio Scarampi', 2),
(292, 'San Martino Alfieri', 2),
(293, 'San Marzano Oliveto', 2),
(294, 'San Paolo Solbrito', 2),
(295, 'Scurzolengo', 2),
(296, 'Serole', 2),
(297, 'Sessame', 2),
(298, 'Settime', 2),
(299, 'Soglio', 2),
(300, 'Tigliole', 2),
(301, 'Tonco', 2),
(302, 'Tonengo', 2),
(303, 'Vaglio Serra', 2),
(304, 'Valfenera', 2),
(305, 'Vesime', 2),
(306, 'Viale', 2),
(307, 'Viarigi', 2),
(308, 'Vigliano d\'Asti', 2),
(309, 'Villa San Secondo', 2),
(310, 'Villafranca d\'Asti', 2),
(311, 'Villanova d\'Asti', 2),
(312, 'Vinchio', 2),
(313, 'Ailoche', 3),
(314, 'Andorno Micca', 3),
(315, 'Benna', 3),
(316, 'Bioglio', 3),
(317, 'Borriana', 3),
(318, 'Brusnengo', 3),
(319, 'Callabiana', 3),
(320, 'Camandona', 3),
(321, 'Camburzano', 3),
(322, 'Campiglia Cervo', 3),
(323, 'Candelo', 3),
(324, 'Caprile', 3),
(325, 'Casapinta', 3),
(326, 'Castelletto Cervo', 3),
(327, 'Cavaglia\'', 3),
(328, 'Cerrione', 3),
(329, 'Coggiola', 3),
(330, 'Cossato', 3),
(331, 'Crevacuore', 3),
(332, 'Curino', 3),
(333, 'Donato', 3),
(334, 'Dorzano', 3),
(335, 'Gaglianico', 3),
(336, 'Gifflenga', 3),
(337, 'Graglia', 3),
(338, 'Lessona', 3),
(339, 'Magnano', 3),
(340, 'Massazza', 3),
(341, 'Masserano', 3),
(342, 'Mezzana Mortigliengo', 3),
(343, 'Miagliano', 3),
(344, 'Mongrando', 3),
(345, 'Mottalciata', 3),
(346, 'Muzzano', 3),
(347, 'Netro', 3),
(348, 'Occhieppo Inferiore', 3),
(349, 'Occhieppo Superiore', 3),
(350, 'Pettinengo', 3),
(351, 'Piatto', 3),
(352, 'Piedicavallo', 3),
(353, 'Pollone', 3),
(354, 'Ponderano', 3),
(355, 'Portula', 3),
(356, 'Pralungo', 3),
(357, 'Pray', 3),
(358, 'Quaregna Cerreto', 3),
(359, 'Ronco Biellese', 3),
(360, 'Roppolo', 3),
(361, 'Rosazza', 3),
(362, 'Sagliano Micca', 3),
(363, 'Sala Biellese', 3),
(364, 'Salussola', 3),
(365, 'Sandigliano', 3),
(366, 'Sordevolo', 3),
(367, 'Sostegno', 3),
(368, 'Strona', 3),
(369, 'Tavigliano', 3),
(370, 'Ternengo', 3),
(371, 'Tollegno', 3),
(372, 'Torrazzo', 3),
(373, 'Valdengo', 3),
(374, 'Valdilana', 3),
(375, 'Vallanzengo', 3),
(376, 'Valle San Nicolao', 3),
(377, 'Veglio', 3),
(378, 'Verrone', 3),
(379, 'Vigliano Biellese', 3),
(380, 'Villa del Bosco', 3),
(381, 'Villanova Biellese', 3),
(382, 'Viverone', 3),
(383, 'Zimone', 3),
(384, 'Zubiena', 3),
(385, 'Zumaglia', 3),
(386, 'Acceglio', 4),
(387, 'Aisone', 4),
(388, 'Alba', 4),
(389, 'Albaretto della Torre', 4),
(390, 'Alto', 4),
(391, 'Argentera', 4),
(392, 'Arguello', 4),
(393, 'Bagnasco', 4),
(394, 'Bagnolo Piemonte', 4),
(395, 'Baldissero d\'Alba', 4),
(396, 'Barbaresco', 4),
(397, 'Barge', 4),
(398, 'Barolo', 4),
(399, 'Bastia Mondovi\'', 4),
(400, 'Battifollo', 4),
(401, 'Beinette', 4),
(402, 'Bellino', 4),
(403, 'Belvedere Langhe', 4),
(404, 'Bene Vagienna', 4),
(405, 'Benevello', 4),
(406, 'Bergolo', 4),
(407, 'Bernezzo', 4),
(408, 'Bonvicino', 4),
(409, 'Borgo San Dalmazzo', 4),
(410, 'Borgomale', 4),
(411, 'Bosia', 4),
(412, 'Bossolasco', 4),
(413, 'Boves', 4),
(414, 'Bra', 4),
(415, 'Briaglia', 4),
(416, 'Briga Alta', 4),
(417, 'Brondello', 4),
(418, 'Brossasco', 4),
(419, 'Busca', 4),
(420, 'Camerana', 4),
(421, 'Canale', 4),
(422, 'Canosio', 4),
(423, 'Caprauna', 4),
(424, 'Caraglio', 4),
(425, 'Caramagna Piemonte', 4),
(426, 'Carde\'', 4),
(427, 'Carru\'', 4),
(428, 'Cartignano', 4),
(429, 'Casalgrasso', 4),
(430, 'Castagnito', 4),
(431, 'Casteldelfino', 4),
(432, 'Castelletto Stura', 4),
(433, 'Castelletto Uzzone', 4),
(434, 'Castellinaldo d\'Alba', 4),
(435, 'Castellino Tanaro', 4),
(436, 'Castelmagno', 4),
(437, 'Castelnuovo di Ceva', 4),
(438, 'Castiglione Falletto', 4),
(439, 'Castiglione Tinella', 4),
(440, 'Castino', 4),
(441, 'Cavallerleone', 4),
(442, 'Cavallermaggiore', 4),
(443, 'Celle di Macra', 4),
(444, 'Centallo', 4),
(445, 'Ceresole d\'Alba', 4),
(446, 'Cerretto Langhe', 4),
(447, 'Cervasca', 4),
(448, 'Cervere', 4),
(449, 'Ceva', 4),
(450, 'Cherasco', 4),
(451, 'Chiusa di Pesio', 4),
(452, 'Ciglie\'', 4),
(453, 'Cissone', 4),
(454, 'Clavesana', 4),
(455, 'Corneliano d\'Alba', 4),
(456, 'Cortemilia', 4),
(457, 'Cossano Belbo', 4),
(458, 'Costigliole Saluzzo', 4),
(459, 'Cravanzana', 4),
(460, 'Crissolo', 4),
(461, 'Demonte', 4),
(462, 'Diano d\'Alba', 4),
(463, 'Dogliani', 4),
(464, 'Dronero', 4),
(465, 'Elva', 4),
(466, 'Entracque', 4),
(467, 'Envie', 4),
(468, 'Farigliano', 4),
(469, 'Faule', 4),
(470, 'Feisoglio', 4),
(471, 'Fossano', 4),
(472, 'Frabosa Soprana', 4),
(473, 'Frabosa Sottana', 4),
(474, 'Frassino', 4),
(475, 'Gaiola', 4),
(476, 'Gambasca', 4),
(477, 'Garessio', 4),
(478, 'Genola', 4),
(479, 'Gorzegno', 4),
(480, 'Gottasecca', 4),
(481, 'Govone', 4),
(482, 'Grinzane Cavour', 4),
(483, 'Guarene', 4),
(484, 'Igliano', 4),
(485, 'Isasca', 4),
(486, 'La Morra', 4),
(487, 'Lagnasco', 4),
(488, 'Lequio Berria', 4),
(489, 'Lequio Tanaro', 4),
(490, 'Lesegno', 4),
(491, 'Levice', 4),
(492, 'Limone Piemonte', 4),
(493, 'Lisio', 4),
(494, 'Macra', 4),
(495, 'Magliano Alfieri', 4),
(496, 'Magliano Alpi', 4),
(497, 'Mango', 4),
(498, 'Manta', 4),
(499, 'Marene', 4),
(500, 'Margarita', 4),
(501, 'Marmora', 4),
(502, 'Marsaglia', 4),
(503, 'Martiniana Po', 4),
(504, 'Melle', 4),
(505, 'Moiola', 4),
(506, 'Mombarcaro', 4),
(507, 'Mombasiglio', 4),
(508, 'Monastero di Vasco', 4),
(509, 'Monasterolo Casotto', 4),
(510, 'Monasterolo di Savigliano', 4),
(511, 'Monchiero', 4),
(512, 'Mondovi\'', 4),
(513, 'Monesiglio', 4),
(514, 'Monforte d\'Alba', 4),
(515, 'Monta\'', 4),
(516, 'Montaldo di Mondovi\'', 4),
(517, 'Montaldo Roero', 4),
(518, 'Montanera', 4),
(519, 'Montelupo Albese', 4),
(520, 'Montemale di Cuneo', 4),
(521, 'Monterosso Grana', 4),
(522, 'Monteu Roero', 4),
(523, 'Montezemolo', 4),
(524, 'Monticello d\'Alba', 4),
(525, 'Moretta', 4),
(526, 'Morozzo', 4),
(527, 'Murazzano', 4),
(528, 'Murello', 4),
(529, 'Narzole', 4),
(530, 'Neive', 4),
(531, 'Neviglie', 4),
(532, 'Niella Belbo', 4),
(533, 'Niella Tanaro', 4),
(534, 'Novello', 4),
(535, 'Nucetto', 4),
(536, 'Oncino', 4),
(537, 'Ormea', 4),
(538, 'Ostana', 4),
(539, 'Paesana', 4),
(540, 'Pagno', 4),
(541, 'Pamparato', 4),
(542, 'Paroldo', 4),
(543, 'Perletto', 4),
(544, 'Perlo', 4),
(545, 'Peveragno', 4),
(546, 'Pezzolo Valle Uzzone', 4),
(547, 'Pianfei', 4),
(548, 'Piasco', 4),
(549, 'Pietraporzio', 4),
(550, 'Piobesi d\'Alba', 4),
(551, 'Piozzo', 4),
(552, 'Pocapaglia', 4),
(553, 'Polonghera', 4),
(554, 'Pontechianale', 4),
(555, 'Pradleves', 4),
(556, 'Prazzo', 4),
(557, 'Priero', 4),
(558, 'Priocca', 4),
(559, 'Priola', 4),
(560, 'Prunetto', 4),
(561, 'Racconigi', 4),
(562, 'Revello', 4),
(563, 'Rifreddo', 4),
(564, 'Rittana', 4),
(565, 'Roaschia', 4),
(566, 'Roascio', 4),
(567, 'Robilante', 4),
(568, 'Roburent', 4),
(569, 'Rocca Ciglie\'', 4),
(570, 'Rocca de\' Baldi', 4),
(571, 'Roccabruna', 4),
(572, 'Roccaforte Mondovi\'', 4),
(573, 'Roccasparvera', 4),
(574, 'Roccavione', 4),
(575, 'Rocchetta Belbo', 4),
(576, 'Roddi', 4),
(577, 'Roddino', 4),
(578, 'Rodello', 4),
(579, 'Rossana', 4),
(580, 'Ruffia', 4),
(581, 'Sale delle Langhe', 4),
(582, 'Sale San Giovanni', 4),
(583, 'Saliceto', 4),
(584, 'Salmour', 4),
(585, 'Saluzzo', 4),
(586, 'Sambuco', 4),
(587, 'Sampeyre', 4),
(588, 'San Benedetto Belbo', 4),
(589, 'San Damiano Macra', 4),
(590, 'San Michele Mondovi\'', 4),
(591, 'Sanfre\'', 4),
(592, 'Sanfront', 4),
(593, 'Santa Vittoria d\'Alba', 4),
(594, 'Sant\'Albano Stura', 4),
(595, 'Santo Stefano Belbo', 4),
(596, 'Santo Stefano Roero', 4),
(597, 'Savigliano', 4),
(598, 'Scagnello', 4),
(599, 'Scarnafigi', 4),
(600, 'Serralunga d\'Alba', 4),
(601, 'Serravalle Langhe', 4),
(602, 'Sinio', 4),
(603, 'Somano', 4),
(604, 'Sommariva del Bosco', 4),
(605, 'Sommariva Perno', 4),
(606, 'Stroppo', 4),
(607, 'Tarantasca', 4),
(608, 'Torre Bormida', 4),
(609, 'Torre Mondovi\'', 4),
(610, 'Torre San Giorgio', 4),
(611, 'Torresina', 4),
(612, 'Treiso', 4),
(613, 'Trezzo Tinella', 4),
(614, 'Trinita\'', 4),
(615, 'Valdieri', 4),
(616, 'Valgrana', 4),
(617, 'Valloriate', 4),
(618, 'Venasca', 4),
(619, 'Verduno', 4),
(620, 'Vernante', 4),
(621, 'Verzuolo', 4),
(622, 'Vezza d\'Alba', 4),
(623, 'Vicoforte', 4),
(624, 'Vignolo', 4),
(625, 'Villafalletto', 4),
(626, 'Villanova Mondovi\'', 4),
(627, 'Villanova Solaro', 4),
(628, 'Villar San Costanzo', 4),
(629, 'Vinadio', 4),
(630, 'Viola', 4),
(631, 'Vottignasco', 4),
(632, 'Agrate Conturbia', 5),
(633, 'Ameno', 5),
(634, 'Armeno', 5),
(635, 'Arona', 5),
(636, 'Barengo', 5),
(637, 'Bellinzago Novarese', 5),
(638, 'Biandrate', 5),
(639, 'Boca', 5),
(640, 'Bogogno', 5),
(641, 'Bolzano Novarese', 5),
(642, 'Borgo Ticino', 5),
(643, 'Borgolavezzaro', 5),
(644, 'Borgomanero', 5),
(645, 'Briga Novarese', 5),
(646, 'Briona', 5),
(647, 'Caltignaga', 5),
(648, 'Cameri', 5),
(649, 'Carpignano Sesia', 5),
(650, 'Casalbeltrame', 5),
(651, 'Casaleggio Novara', 5),
(652, 'Casalino', 5),
(653, 'Casalvolone', 5),
(654, 'Castellazzo Novarese', 5),
(655, 'Castelletto Sopra Ticino', 5),
(656, 'Cavaglietto', 5),
(657, 'Cavaglio d\'Agogna', 5),
(658, 'Cavallirio', 5),
(659, 'Cerano', 5),
(660, 'Colazza', 5),
(661, 'Comignago', 5),
(662, 'Cressa', 5),
(663, 'Cureggio', 5),
(664, 'Divignano', 5),
(665, 'Dormelletto', 5),
(666, 'Fara Novarese', 5),
(667, 'Fontaneto d\'Agogna', 5),
(668, 'Galliate', 5),
(669, 'Garbagna Novarese', 5),
(670, 'Gargallo', 5),
(671, 'Gattico-Veruno', 5),
(672, 'Ghemme', 5),
(673, 'Gozzano', 5),
(674, 'Granozzo con Monticello', 5),
(675, 'Grignasco', 5),
(676, 'Invorio', 5),
(677, 'Landiona', 5),
(678, 'Lesa', 5),
(679, 'Maggiora', 5),
(680, 'Mandello Vitta', 5),
(681, 'Marano Ticino', 5),
(682, 'Massino Visconti', 5),
(683, 'Meina', 5),
(684, 'Mezzomerico', 5),
(685, 'Miasino', 5),
(686, 'Momo', 5),
(687, 'Nebbiuno', 5),
(688, 'Nibbiola', 5),
(689, 'Oleggio Castello', 5),
(690, 'Oleggio', 5),
(691, 'Orta San Giulio', 5),
(692, 'Paruzzaro', 5),
(693, 'Pella', 5),
(694, 'Pettenasco', 5),
(695, 'Pisano', 5),
(696, 'Pogno', 5),
(697, 'Pombia', 5),
(698, 'Prato Sesia', 5),
(699, 'Recetto', 5),
(700, 'Romagnano Sesia', 5),
(701, 'Romentino', 5),
(702, 'San Maurizio d\'Opaglio', 5),
(703, 'San Nazzaro Sesia', 5),
(704, 'San Pietro Mosezzo', 5),
(705, 'Sillavengo', 5),
(706, 'Sizzano', 5),
(707, 'Soriso', 5),
(708, 'Sozzago', 5),
(709, 'Suno', 5),
(710, 'Terdobbiate', 5),
(711, 'Tornaco', 5),
(712, 'Trecate', 5),
(713, 'Vaprio d\'Agogna', 5),
(714, 'Varallo Pombia', 5),
(715, 'Vespolate', 5),
(716, 'Vicolungo', 5),
(717, 'Vinzaglio', 5),
(718, 'Aglie\'', 6),
(719, 'Airasca', 6),
(720, 'Ala di Stura', 6),
(721, 'Albiano d\'Ivrea', 6),
(722, 'Almese', 6),
(723, 'Alpette', 6),
(724, 'Alpignano', 6),
(725, 'Andezeno', 6),
(726, 'Andrate', 6),
(727, 'Angrogna', 6),
(728, 'Arignano', 6),
(729, 'Avigliana', 6),
(730, 'Azeglio', 6),
(731, 'Bairo', 6),
(732, 'Balangero', 6),
(733, 'Baldissero Canavese', 6),
(734, 'Baldissero Torinese', 6),
(735, 'Balme', 6),
(736, 'Banchette', 6),
(737, 'Barbania', 6),
(738, 'Bardonecchia', 6),
(739, 'Barone Canavese', 6),
(740, 'Beinasco', 6),
(741, 'Bibiana', 6),
(742, 'Bobbio Pellice', 6),
(743, 'Bollengo', 6),
(744, 'Borgaro Torinese', 6),
(745, 'Borgiallo', 6),
(746, 'Borgofranco d\'Ivrea', 6),
(747, 'Borgomasino', 6),
(748, 'Borgone Susa', 6),
(749, 'Bosconero', 6),
(750, 'Brandizzo', 6),
(751, 'Bricherasio', 6),
(752, 'Brosso', 6),
(753, 'Brozolo', 6),
(754, 'Bruino', 6),
(755, 'Brusasco', 6),
(756, 'Bruzolo', 6),
(757, 'Buriasco', 6),
(758, 'Burolo', 6),
(759, 'Busano', 6),
(760, 'Bussoleno', 6),
(761, 'Buttigliera Alta', 6),
(762, 'Cafasse', 6),
(763, 'Caluso', 6),
(764, 'Cambiano', 6),
(765, 'Campiglione-Fenile', 6),
(766, 'Candia Canavese', 6),
(767, 'Candiolo', 6),
(768, 'Canischio', 6),
(769, 'Cantalupa', 6),
(770, 'Cantoira', 6),
(771, 'Caprie', 6),
(772, 'Caravino', 6),
(773, 'Carema', 6),
(774, 'Carignano', 6),
(775, 'Carmagnola', 6),
(776, 'Casalborgone', 6),
(777, 'Cascinette d\'Ivrea', 6),
(778, 'Caselette', 6),
(779, 'Caselle Torinese', 6),
(780, 'Castagneto Po', 6),
(781, 'Castagnole Piemonte', 6),
(782, 'Castellamonte', 6),
(783, 'Castelnuovo Nigra', 6),
(784, 'Castiglione Torinese', 6),
(785, 'Cavagnolo', 6),
(786, 'Cavour', 6),
(787, 'Cercenasco', 6),
(788, 'Ceres', 6),
(789, 'Ceresole Reale', 6),
(790, 'Cesana Torinese', 6),
(791, 'Chialamberto', 6),
(792, 'Chianocco', 6),
(793, 'Chiaverano', 6),
(794, 'Chieri', 6),
(795, 'Chiesanuova', 6),
(796, 'Chiomonte', 6),
(797, 'Chiusa di San Michele', 6),
(798, 'Chivasso', 6),
(799, 'Ciconio', 6),
(800, 'Cintano', 6),
(801, 'Cinzano', 6),
(802, 'Cirie\'', 6),
(803, 'Claviere', 6),
(804, 'Coassolo Torinese', 6),
(805, 'Coazze', 6),
(806, 'Collegno', 6),
(807, 'Colleretto Castelnuovo', 6),
(808, 'Colleretto Giacosa', 6),
(809, 'Condove', 6),
(810, 'Corio', 6),
(811, 'Cossano Canavese', 6),
(812, 'Cuceglio', 6),
(813, 'Cumiana', 6),
(814, 'Cuorgne\'', 6),
(815, 'Druento', 6),
(816, 'Exilles', 6),
(817, 'Favria', 6),
(818, 'Feletto', 6),
(819, 'Fenestrelle', 6),
(820, 'Fiano', 6),
(821, 'Fiorano Canavese', 6),
(822, 'Foglizzo', 6),
(823, 'Forno Canavese', 6),
(824, 'Frassinetto', 6),
(825, 'Front', 6),
(826, 'Frossasco', 6),
(827, 'Garzigliana', 6),
(828, 'Gassino Torinese', 6),
(829, 'Germagnano', 6),
(830, 'Giaglione', 6),
(831, 'Giaveno', 6),
(832, 'Givoletto', 6),
(833, 'Gravere', 6),
(834, 'Groscavallo', 6),
(835, 'Grosso', 6),
(836, 'Grugliasco', 6),
(837, 'Ingria', 6),
(838, 'Inverso Pinasca', 6),
(839, 'Isolabella', 6),
(840, 'Issiglio', 6),
(841, 'Ivrea', 6),
(842, 'La Cassa', 6),
(843, 'La Loggia', 6),
(844, 'Lanzo Torinese', 6),
(845, 'Lauriano', 6),
(846, 'Leini', 6),
(847, 'Lemie', 6),
(848, 'Lessolo', 6),
(849, 'Levone', 6),
(850, 'Locana', 6),
(851, 'Lombardore', 6),
(852, 'Lombriasco', 6),
(853, 'Loranze\'', 6),
(854, 'Luserna San Giovanni', 6),
(855, 'Lusernetta', 6),
(856, 'Lusiglie\'', 6),
(857, 'Macello', 6),
(858, 'Maglione', 6),
(859, 'Mappano', 6),
(860, 'Marentino', 6),
(861, 'Massello', 6),
(862, 'Mathi', 6),
(863, 'Mattie', 6),
(864, 'Mazze\'', 6),
(865, 'Meana di Susa', 6),
(866, 'Mercenasco', 6),
(867, 'Mezzenile', 6),
(868, 'Mombello di Torino', 6),
(869, 'Mompantero', 6),
(870, 'Monastero di Lanzo', 6),
(871, 'Moncalieri', 6),
(872, 'Moncenisio', 6),
(873, 'Montaldo Torinese', 6),
(874, 'Montalenghe', 6),
(875, 'Montalto Dora', 6),
(876, 'Montanaro', 6),
(877, 'Monteu da Po', 6),
(878, 'Moriondo Torinese', 6),
(879, 'Nichelino', 6),
(880, 'Noasca', 6),
(881, 'Nole', 6),
(882, 'Nomaglio', 6),
(883, 'None', 6),
(884, 'Novalesa', 6),
(885, 'Oglianico', 6),
(886, 'Orbassano', 6),
(887, 'Orio Canavese', 6),
(888, 'Osasco', 6),
(889, 'Osasio', 6),
(890, 'Oulx', 6),
(891, 'Ozegna', 6),
(892, 'Palazzo Canavese', 6),
(893, 'Pancalieri', 6),
(894, 'Parella', 6),
(895, 'Pavarolo', 6),
(896, 'Pavone Canavese', 6),
(897, 'Pecetto Torinese', 6),
(898, 'Perosa Argentina', 6),
(899, 'Perosa Canavese', 6),
(900, 'Perrero', 6),
(901, 'Pertusio', 6),
(902, 'Pessinetto', 6),
(903, 'Pianezza', 6),
(904, 'Pinasca', 6),
(905, 'Pinerolo', 6),
(906, 'Pino Torinese', 6),
(907, 'Piobesi Torinese', 6),
(908, 'Piossasco', 6),
(909, 'Piscina', 6),
(910, 'Piverone', 6),
(911, 'Poirino', 6),
(912, 'Pomaretto', 6),
(913, 'Pont Canavese', 6),
(914, 'Porte', 6),
(915, 'Pragelato', 6),
(916, 'Prali', 6),
(917, 'Pralormo', 6),
(918, 'Pramollo', 6),
(919, 'Prarostino', 6),
(920, 'Prascorsano', 6),
(921, 'Pratiglione', 6),
(922, 'Quagliuzzo', 6),
(923, 'Quassolo', 6),
(924, 'Quincinetto', 6),
(925, 'Reano', 6),
(926, 'Ribordone', 6),
(927, 'Riva presso Chieri', 6),
(928, 'Rivalba', 6),
(929, 'Rivalta di Torino', 6),
(930, 'Rivara', 6),
(931, 'Rivarolo Canavese', 6),
(932, 'Rivarossa', 6),
(933, 'Rivoli', 6),
(934, 'Robassomero', 6),
(935, 'Rocca Canavese', 6),
(936, 'Roletto', 6),
(937, 'Romano Canavese', 6),
(938, 'Ronco Canavese', 6),
(939, 'Rondissone', 6),
(940, 'Rora\'', 6),
(941, 'Rosta', 6),
(942, 'Roure', 6),
(943, 'Rubiana', 6),
(944, 'Rueglio', 6),
(945, 'Salassa', 6),
(946, 'Salbertrand', 6),
(947, 'Salerano Canavese', 6),
(948, 'Salza di Pinerolo', 6),
(949, 'Samone', 6),
(950, 'San Benigno Canavese', 6),
(951, 'San Carlo Canavese', 6),
(952, 'San Colombano Belmonte', 6),
(953, 'San Didero', 6),
(954, 'San Francesco al Campo', 6),
(955, 'San Germano Chisone', 6),
(956, 'San Gillio', 6),
(957, 'San Giorgio Canavese', 6),
(958, 'San Giorio di Susa', 6),
(959, 'San Giusto Canavese', 6),
(960, 'San Martino Canavese', 6),
(961, 'San Maurizio Canavese', 6),
(962, 'San Mauro Torinese', 6),
(963, 'San Pietro Val Lemina', 6),
(964, 'San Ponso', 6),
(965, 'San Raffaele Cimena', 6),
(966, 'San Sebastiano da Po', 6),
(967, 'San Secondo di Pinerolo', 6),
(968, 'Sangano', 6),
(969, 'Sant\'Ambrogio di Torino', 6),
(970, 'Sant\'Antonino di Susa', 6),
(971, 'Santena', 6),
(972, 'Sauze di Cesana', 6),
(973, 'Sauze d\'Oulx', 6),
(974, 'Scalenghe', 6),
(975, 'Scarmagno', 6),
(976, 'Sciolze', 6),
(977, 'Sestriere', 6),
(978, 'Settimo Rottaro', 6),
(979, 'Settimo Torinese', 6),
(980, 'Settimo Vittone', 6),
(981, 'Sparone', 6),
(982, 'Strambinello', 6),
(983, 'Strambino', 6),
(984, 'Susa', 6),
(985, 'Tavagnasco', 6),
(986, 'Torrazza Piemonte', 6),
(987, 'Torre Canavese', 6),
(988, 'Torre Pellice', 6),
(989, 'Trana', 6),
(990, 'Traversella', 6),
(991, 'Traves', 6),
(992, 'Trofarello', 6),
(993, 'Usseaux', 6),
(994, 'Usseglio', 6),
(995, 'Vaie', 6),
(996, 'Val della Torre', 6),
(997, 'Val di Chy', 6),
(998, 'Valchiusa', 6),
(999, 'Valgioie', 6),
(1000, 'Vallo Torinese', 6),
(1001, 'Valperga', 6),
(1002, 'Valprato Soana', 6),
(1003, 'Varisella', 6),
(1004, 'Vauda Canavese', 6),
(1005, 'Venaria Reale', 6),
(1006, 'Venaus', 6),
(1007, 'Verolengo', 6),
(1008, 'Verrua Savoia', 6),
(1009, 'Vestigne\'', 6),
(1010, 'Vialfre\'', 6),
(1011, 'Vidracco', 6),
(1012, 'Vigone', 6),
(1013, 'Villafranca Piemonte', 6),
(1014, 'Villanova Canavese', 6),
(1015, 'Villar Dora', 6),
(1016, 'Villar Focchiardo', 6),
(1017, 'Villar Pellice', 6),
(1018, 'Villar Perosa', 6),
(1019, 'Villarbasse', 6),
(1020, 'Villareggia', 6),
(1021, 'Villastellone', 6),
(1022, 'Vinovo', 6),
(1023, 'Virle Piemonte', 6),
(1024, 'Vische', 6),
(1025, 'Vistrorio', 6),
(1026, 'Viu\'', 6),
(1027, 'Volpiano', 6),
(1028, 'Volvera', 6),
(1029, 'Antrona Schieranco', 7),
(1030, 'Anzola d\'Ossola', 7),
(1031, 'Arizzano', 7),
(1032, 'Arola', 7),
(1033, 'Aurano', 7),
(1034, 'Baceno', 7),
(1035, 'Bannio Anzino', 7),
(1036, 'Baveno', 7),
(1037, 'Bee', 7),
(1038, 'Belgirate', 7),
(1039, 'Beura-Cardezza', 7),
(1040, 'Bognanco', 7),
(1041, 'Borgomezzavalle', 7),
(1042, 'Brovello-Carpugnino', 7),
(1043, 'Calasca-Castiglione', 7),
(1044, 'Cambiasca', 7),
(1045, 'Cannero Riviera', 7),
(1046, 'Cannobio', 7),
(1047, 'Caprezzo', 7),
(1048, 'Casale Corte Cerro', 7),
(1049, 'Ceppo Morelli', 7),
(1050, 'Cesara', 7),
(1051, 'Cossogno', 7),
(1052, 'Craveggia', 7),
(1053, 'Crevoladossola', 7),
(1054, 'Crodo', 7),
(1055, 'Domodossola', 7),
(1056, 'Druogno', 7),
(1057, 'Formazza', 7),
(1058, 'Germagno', 7),
(1059, 'Ghiffa', 7),
(1060, 'Gignese', 7),
(1061, 'Gravellona Toce', 7),
(1062, 'Gurro', 7),
(1063, 'Intragna', 7),
(1064, 'Loreglia', 7),
(1065, 'Macugnaga', 7),
(1066, 'Madonna del Sasso', 7),
(1067, 'Malesco', 7),
(1068, 'Masera', 7),
(1069, 'Massiola', 7),
(1070, 'Mergozzo', 7),
(1071, 'Miazzina', 7),
(1072, 'Montecrestese', 7),
(1073, 'Montescheno', 7),
(1074, 'Nonio', 7),
(1075, 'Oggebbio', 7),
(1076, 'Omegna', 7),
(1077, 'Ornavasso', 7),
(1078, 'Pallanzeno', 7),
(1079, 'Piedimulera', 7),
(1080, 'Pieve Vergonte', 7),
(1081, 'Premeno', 7),
(1082, 'Premia', 7),
(1083, 'Premosello-Chiovenda', 7),
(1084, 'Quarna Sopra', 7),
(1085, 'Quarna Sotto', 7),
(1086, 'Re', 7),
(1087, 'San Bernardino Verbano', 7),
(1088, 'Santa Maria Maggiore', 7),
(1089, 'Stresa', 7),
(1090, 'Toceno', 7),
(1091, 'Trarego Viggiona', 7),
(1092, 'Trasquera', 7),
(1093, 'Trontano', 7),
(1094, 'Valle Cannobina', 7),
(1095, 'Valstrona', 7),
(1096, 'Vanzone con San Carlo', 7),
(1097, 'Varzo', 7),
(1098, 'Vignone', 7),
(1099, 'Villadossola', 7),
(1100, 'Villette', 7),
(1101, 'Vogogna', 7),
(1102, 'Alagna Valsesia', 8),
(1103, 'Albano Vercellese', 8),
(1104, 'Alice Castello', 8),
(1105, 'Alto Sermenza', 8),
(1106, 'Arborio', 8),
(1107, 'Asigliano Vercellese', 8),
(1108, 'Balmuccia', 8),
(1109, 'Balocco', 8),
(1110, 'Bianze\'', 8),
(1111, 'Boccioleto', 8),
(1112, 'Borgo d\'Ale', 8),
(1113, 'Borgo Vercelli', 8),
(1114, 'Borgosesia', 8),
(1115, 'Buronzo', 8),
(1116, 'Campertogno', 8),
(1117, 'Carcoforo', 8),
(1118, 'Caresana', 8),
(1119, 'Caresanablot', 8),
(1120, 'Carisio', 8),
(1121, 'Casanova Elvo', 8),
(1122, 'Cellio con Breia', 8),
(1123, 'Cervatto', 8),
(1124, 'Cigliano', 8),
(1125, 'Civiasco', 8),
(1126, 'Collobiano', 8),
(1127, 'Costanzana', 8),
(1128, 'Cravagliana', 8),
(1129, 'Crescentino', 8),
(1130, 'Crova', 8),
(1131, 'Desana', 8),
(1132, 'Fobello', 8),
(1133, 'Fontanetto Po', 8),
(1134, 'Formigliana', 8),
(1135, 'Gattinara', 8),
(1136, 'Ghislarengo', 8),
(1137, 'Greggio', 8),
(1138, 'Guardabosone', 8),
(1139, 'Lamporo', 8),
(1140, 'Lenta', 8),
(1141, 'Lignana', 8),
(1142, 'Livorno Ferraris', 8),
(1143, 'Lozzolo', 8),
(1144, 'Mollia', 8),
(1145, 'Moncrivello', 8),
(1146, 'Motta de\' Conti', 8),
(1147, 'Olcenengo', 8),
(1148, 'Oldenico', 8),
(1149, 'Palazzolo Vercellese', 8),
(1150, 'Pertengo', 8),
(1151, 'Pezzana', 8),
(1152, 'Pila', 8),
(1153, 'Piode', 8),
(1154, 'Postua', 8),
(1155, 'Prarolo', 8),
(1156, 'Quarona', 8),
(1157, 'Quinto Vercellese', 8),
(1158, 'Rassa', 8),
(1159, 'Rimella', 8),
(1160, 'Rive', 8),
(1161, 'Roasio', 8),
(1162, 'Ronsecco', 8),
(1163, 'Rossa', 8),
(1164, 'Rovasenda', 8),
(1165, 'Salasco', 8),
(1166, 'Sali Vercellese', 8),
(1167, 'Saluggia', 8),
(1168, 'San Germano Vercellese', 8),
(1169, 'San Giacomo Vercellese', 8),
(1170, 'Santhia\'', 8),
(1171, 'Scopa', 8),
(1172, 'Scopello', 8),
(1173, 'Serravalle Sesia', 8),
(1174, 'Stroppiana', 8),
(1175, 'Tricerro', 8),
(1176, 'Trino', 8),
(1177, 'Tronzano Vercellese', 8),
(1178, 'Valduggia', 8),
(1179, 'Varallo', 8),
(1180, 'Villarboit', 8),
(1181, 'Villata', 8),
(1182, 'Vocca', 8);

-- --------------------------------------------------------

--
-- Struttura della tabella `sintomi`
--

CREATE TABLE `sintomi` (
  `id_sintomo` int(11) NOT NULL,
  `sintomo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `sintomi`
--

INSERT INTO `sintomi` (`id_sintomo`, `sintomo`) VALUES
(1, 'Tosse'),
(2, 'Mal di gola'),
(3, 'Nausea'),
(4, 'Perdita gusto'),
(5, 'Perdita olfatto'),
(6, 'Febbre ');

-- --------------------------------------------------------

--
-- Struttura della tabella `stato`
--

CREATE TABLE `stato` (
  `id_stato` int(11) NOT NULL,
  `stato` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `stato`
--

INSERT INTO `stato` (`id_stato`, `stato`) VALUES
(1, 'Sano'),
(2, 'Infetto');

-- --------------------------------------------------------

--
-- Struttura della tabella `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `user`
--

INSERT INTO `user` (`id_user`, `email`, `password`) VALUES
(1, 'dumitriumarius5@gmail.com', 'e3ec9fb058ec5a62ca46c66316ae10f9');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `anagrafica`
--
ALTER TABLE `anagrafica`
  ADD PRIMARY KEY (`id_utente`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `comune` (`comune`),
  ADD KEY `stato` (`stato`);

--
-- Indici per le tabelle `anag_sintomi`
--
ALTER TABLE `anag_sintomi`
  ADD PRIMARY KEY (`id_utente`,`id_sintomo`,`data`),
  ADD KEY `id_utente` (`id_utente`),
  ADD KEY `id_sintomo` (`id_sintomo`);

--
-- Indici per le tabelle `comuni`
--
ALTER TABLE `comuni`
  ADD PRIMARY KEY (`id_comune`);

--
-- Indici per le tabelle `sintomi`
--
ALTER TABLE `sintomi`
  ADD PRIMARY KEY (`id_sintomo`);

--
-- Indici per le tabelle `stato`
--
ALTER TABLE `stato`
  ADD PRIMARY KEY (`id_stato`);

--
-- Indici per le tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `anagrafica`
--
ALTER TABLE `anagrafica`
  MODIFY `id_utente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `comuni`
--
ALTER TABLE `comuni`
  MODIFY `id_comune` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2056;

--
-- AUTO_INCREMENT per la tabella `sintomi`
--
ALTER TABLE `sintomi`
  MODIFY `id_sintomo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `anagrafica`
--
ALTER TABLE `anagrafica`
  ADD CONSTRAINT `anagrafica_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `anagrafica_ibfk_2` FOREIGN KEY (`comune`) REFERENCES `comuni` (`id_comune`),
  ADD CONSTRAINT `anagrafica_ibfk_3` FOREIGN KEY (`stato`) REFERENCES `stato` (`id_stato`);

--
-- Limiti per la tabella `anag_sintomi`
--
ALTER TABLE `anag_sintomi`
  ADD CONSTRAINT `anag_sintomi_ibfk_1` FOREIGN KEY (`id_utente`) REFERENCES `anagrafica` (`id_utente`),
  ADD CONSTRAINT `anag_sintomi_ibfk_2` FOREIGN KEY (`id_sintomo`) REFERENCES `sintomi` (`id_sintomo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
