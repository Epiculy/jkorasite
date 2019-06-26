-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 23, 2019 at 11:10 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goodblox_servers`
--

-- --------------------------------------------------------

--
-- Table structure for table `games_starting_reroute`
--

CREATE TABLE `games_starting_reroute` (
  `id` int(11) NOT NULL,
  `pcID` int(11) NOT NULL,
  `gjr_id` int(11) NOT NULL,
  `seen` tinyint(1) NOT NULL,
  `whenUsed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `games_starting_reroute`
--

INSERT INTO `games_starting_reroute` (`id`, `pcID`, `gjr_id`, `seen`, `whenUsed`) VALUES
(1, 4, 1, 1, 1546464283),
(2, 4, 2, 1, 1546464857),
(3, 4, 3, 1, 1546464974),
(4, 4, 4, 1, 1546465396),
(5, 4, 9, 1, 1546696165),
(6, 4, 10, 1, 1546696548),
(7, 4, 11, 1, 1546696739),
(8, 4, 12, 1, 1546696996),
(9, 4, 13, 1, 1546698302),
(10, 4, 14, 1, 1546707677),
(11, 4, 15, 1, 1546707677),
(12, 4, 16, 0, 1546707742),
(13, 2, 17, 1, 1546707842),
(14, 2, 18, 1, 1546708156);

-- --------------------------------------------------------

--
-- Table structure for table `game_join_requests`
--

CREATE TABLE `game_join_requests` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `placeID` int(11) NOT NULL,
  `serverID` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `dependOn` int(11) DEFAULT NULL COMMENT 'depend on another gjr',
  `seenit` int(11) NOT NULL,
  `started` int(11) NOT NULL,
  `lastrequest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `game_join_requests`
--

INSERT INTO `game_join_requests` (`id`, `userID`, `placeID`, `serverID`, `status`, `dependOn`, `seenit`, `started`, `lastrequest`) VALUES
(1, 2, 1, 1, 3, NULL, 1, 1546464283, 1546464283),
(2, 2, 1, 2, 3, NULL, 1, 1546464856, 1546464856),
(3, 2, 1, 3, 3, NULL, 1, 1546464973, 1546464973),
(4, 2, 1, 4, 3, NULL, 1, 1546465392, 1546465392),
(5, 15, 1, NULL, 5, NULL, 0, 1546484661, 1546632889),
(6, 6, 1, NULL, 5, NULL, 0, 1546557838, 1546632890),
(7, 2, 1, NULL, 5, NULL, 0, 1546629084, 1546632891),
(8, 2, 1, NULL, 5, NULL, 0, 1546680884, 1546695940),
(9, 2, 1, 5, 3, NULL, 1, 1546696164, 1546696164),
(10, 2, 1, 6, 3, NULL, 1, 1546696547, 1546696547),
(11, 2, 1, 7, 3, NULL, 1, 1546696738, 1546696738),
(12, 2, 1, 8, 3, NULL, 1, 1546696995, 1546696995),
(13, 2, 1, 9, 3, NULL, 1, 1546698301, 1546698301),
(14, 2, 1, 10, 3, NULL, 0, 1546705942, 1546705942),
(15, 2, 1, 11, 3, NULL, 0, 1546707645, 1546707645),
(16, 2, 1, NULL, 2, NULL, 0, 1546707742, 1546707742),
(17, 2, 1, 12, 3, NULL, 1, 1546707842, 1546707842),
(18, 2, 1, 13, 3, NULL, 1, 1546708155, 1546708155),
(19, 3, 1, NULL, 0, NULL, 0, 1547304833, 1547304833),
(20, 10, 1, NULL, 0, NULL, 0, 1547565193, 1547565193),
(21, 13, 1, NULL, 0, NULL, 0, 1547777741, 1547777741),
(22, 13, 1, NULL, 0, NULL, 0, 1549823873, 1549823873),
(23, 5, 1, NULL, 0, NULL, 0, 1550359653, 1550359653),
(24, 37, 1, NULL, 0, NULL, 0, 1550375953, 1550375953),
(25, 24, 1, NULL, 0, NULL, 0, 1550376264, 1550376264),
(26, 20, 1, NULL, 0, NULL, 0, 1550376276, 1550376276),
(27, 20, 1, NULL, 0, NULL, 0, 1550376338, 1550376338),
(28, 20, 1, NULL, 0, NULL, 0, 1550376341, 1550376341),
(29, 8, 1, NULL, 0, NULL, 0, 1550376348, 1550376348),
(30, 6, 1, NULL, 0, NULL, 0, 1550376363, 1550376363),
(31, 50, 1, NULL, 0, NULL, 0, 1550392127, 1550392127),
(32, 53, 1, NULL, 0, NULL, 0, 1550398065, 1550398065),
(33, 53, 1, NULL, 0, NULL, 0, 1550398093, 1550398093),
(34, 54, 1, NULL, 0, NULL, 0, 1550399431, 1550399431),
(35, 54, 1, NULL, 0, NULL, 0, 1550401997, 1550401997),
(36, 55, 1, NULL, 0, NULL, 0, 1550402376, 1550402376),
(37, 52, 1, NULL, 0, NULL, 0, 1550402873, 1550402873),
(38, 54, 1, NULL, 0, NULL, 0, 1550407208, 1550407208),
(39, 20, 1, NULL, 0, NULL, 0, 1550410374, 1550410374),
(40, 58, 1, NULL, 0, NULL, 0, 1550410587, 1550410587),
(41, 62, 1, NULL, 0, NULL, 0, 1550410836, 1550410836),
(42, 64, 1, NULL, 0, NULL, 0, 1550411006, 1550411006),
(43, 63, 1, NULL, 0, NULL, 0, 1550411394, 1550411394),
(44, 61, 1, NULL, 0, NULL, 0, 1550411398, 1550411398),
(45, 58, 1, NULL, 0, NULL, 0, 1550414340, 1550414340),
(46, 74, 1, NULL, 0, NULL, 0, 1550414871, 1550414871),
(47, 74, 1, NULL, 0, NULL, 0, 1550414884, 1550414884),
(48, 75, 1, NULL, 0, NULL, 0, 1550414954, 1550414954),
(49, 80, 1, NULL, 0, NULL, 0, 1550415560, 1550415560),
(50, 85, 1, NULL, 0, NULL, 0, 1550415659, 1550415659),
(51, 55, 1, NULL, 0, NULL, 0, 1550416636, 1550416636),
(52, 91, 1, NULL, 0, NULL, 0, 1550417193, 1550417193),
(53, 91, 1, NULL, 0, NULL, 0, 1550417231, 1550417231),
(54, 62, 1, NULL, 0, NULL, 0, 1550421876, 1550421876),
(55, 87, 1, NULL, 0, NULL, 0, 1550423406, 1550423406),
(56, 98, 1, NULL, 0, NULL, 0, 1550426847, 1550426847),
(57, 112, 1, NULL, 0, NULL, 0, 1550427710, 1550427710),
(58, 112, 1, NULL, 0, NULL, 0, 1550427863, 1550427863),
(59, 8, 1, NULL, 0, NULL, 0, 1550433062, 1550433062),
(60, 115, 1, NULL, 0, NULL, 0, 1550435335, 1550435335),
(61, 117, 1, NULL, 0, NULL, 0, 1550435522, 1550435522),
(62, 118, 1, NULL, 0, NULL, 0, 1550436241, 1550436241),
(63, 14, 1, NULL, 0, NULL, 0, 1550436271, 1550436271),
(64, 120, 1, NULL, 0, NULL, 0, 1550436867, 1550436867),
(65, 41, 1, NULL, 0, NULL, 0, 1550437077, 1550437077),
(66, 101, 1, NULL, 0, NULL, 0, 1550437659, 1550437659),
(67, 123, 1, NULL, 0, NULL, 0, 1550444269, 1550444269),
(68, 118, 1, NULL, 0, NULL, 0, 1550446375, 1550446375),
(69, 45, 1, NULL, 0, NULL, 0, 1550451580, 1550451580),
(70, 61, 1, NULL, 0, NULL, 0, 1550456376, 1550456376),
(71, 130, 1, NULL, 0, NULL, 0, 1550464352, 1550464352),
(72, 131, 1, NULL, 0, NULL, 0, 1550465025, 1550465025),
(73, 130, 1, NULL, 0, NULL, 0, 1550466741, 1550466741),
(74, 132, 1, NULL, 0, NULL, 0, 1550467653, 1550467653),
(75, 129, 1, NULL, 0, NULL, 0, 1550469164, 1550469164),
(76, 129, 1, NULL, 0, NULL, 0, 1550469180, 1550469180),
(77, 117, 1, NULL, 0, NULL, 0, 1550474284, 1550474284),
(78, 58, 1, NULL, 0, NULL, 0, 1550492699, 1550492699),
(79, 42, 1, NULL, 0, NULL, 0, 1550499806, 1550499806),
(80, 103, 1, NULL, 0, NULL, 0, 1550508077, 1550508077),
(81, 26, 1, NULL, 0, NULL, 0, 1550517747, 1550517747),
(82, 26, 1, NULL, 0, NULL, 0, 1550517751, 1550517751),
(83, 21, 1, NULL, 0, NULL, 0, 1550526631, 1550526631),
(84, 61, 1, NULL, 0, NULL, 0, 1550528357, 1550528357),
(85, 28, 1, NULL, 0, NULL, 0, 1550533556, 1550533556),
(86, 19, 1, NULL, 0, NULL, 0, 1550533604, 1550533604),
(87, 28, 1, NULL, 0, NULL, 0, 1550539977, 1550539977),
(88, 130, 1, NULL, 0, NULL, 0, 1550558523, 1550558523);

-- --------------------------------------------------------

--
-- Table structure for table `game_servers`
--

CREATE TABLE `game_servers` (
  `id` int(11) NOT NULL,
  `hwid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip2` text COLLATE utf8_unicode_ci COMMENT 'IPv4',
  `pcname` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `curRam` double NOT NULL,
  `online` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `maxRam` int(11) NOT NULL,
  `curCpu` int(11) NOT NULL,
  `paused` int(11) NOT NULL,
  `locked` int(11) NOT NULL,
  `limitRam` int(11) NOT NULL,
  `username` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `secretKey` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `connected` int(11) NOT NULL,
  `who_create` int(11) NOT NULL,
  `when_create` int(11) NOT NULL,
  `currentSignal` int(11) NOT NULL,
  `whenConnected` int(11) NOT NULL,
  `maxServersAllowed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `game_servers`
--

INSERT INTO `game_servers` (`id`, `hwid`, `ip`, `ip2`, `pcname`, `curRam`, `online`, `active`, `maxRam`, `curCpu`, `paused`, `locked`, `limitRam`, `username`, `password`, `secretKey`, `connected`, `who_create`, `when_create`, `currentSignal`, `whenConnected`, `maxServersAllowed`) VALUES
(1, 'BFEBFBFF000906EA', '98.185.18.44', NULL, 'RATDOG-PC', 0, 0, 1, 8, 0, 0, 1, 5, 'gOsMJ79ytPEqLnzOznooUG/Pq5kFBn2RnRMEh0PkhEY=', 'e78a7f43d792b6d74891f9d5a52a4b7067f99ea0551ca3361c38448ca87f25e2cf151a4e00d32298a55ee60690a650f0f7b334d698f67060ec7bf5ea3678ed30', 'f02650a25282e3140445afe2d3ec5a5306f22968bf8c319d41d8d84d192892de72579a300784156cce7cabfe27b52d741b590d3bfa483f2d19b8190aa5a174a3', 0, 3, 1545836934, 0, 0, 3),
(2, 'BFEBFBFF000006F2', '76.104.150.65', '76.104.150.65', 'GOODBLOX-SER-PC', 1.2, 1547492017, 1, 3, 48, 0, 1, 2, 'Db/GCQ6ZrfctPpHg5fsp+vENNdyIf4aDTlo9OCds8UA=', '356c7b3f1e2ad43557d7cc88e18686246c3ca54561f4d63da109f189206fb573618fdd8360a874ab461825c0e13a1b6cd85dd94d120de942b340aa96d243ef40', '8bcd0da761b8a3e48e7e940112c178e4d017c5aadb4e5a8a51157f16cc065852cf0c9997133f1ca761ac5a14bb3bda091434a8b7f100de266bc2a1788b25708b', 1, 3, 1546314293, 0, 1546317638, 3),
(3, 'BFEBFBFF00030678', '190.80.34.240', '127.0.0.1', 'KJF-WORKSHOP', 3.3, 1546378344, 1, 4, 31, 0, 0, 0, '4t9d8PBOaCSbBtxWGqxlHdN/7qlrJRJhToVmFyQ0IYQ=', '28fa98b090b875cc202a565a63d03b24b38826021f1ce792816e89d1ba487111369194422eb0a3a0c15fd437bdfe0e0d9a4a50fd7603c9609f6c487f0588606e', 'e5fd9abe96038e736667eb145740c6c6428c6be986789721fee3265f44eb5643ada7bbffd07d738d9e1746b920160e9d5eb60a338dc2c4240cede4c004a85e79', 1, 3, 1546370994, 0, 1546371101, 1),
(4, 'BFEBFBFF000306C3', '127.0.0.1', '127.0.0.1', 'KEANU-PC', 8.8, 1546707832, 1, 16, 9, 0, 1, 0, 'VJ0ZDb8x7B/wmTyWS5WujRv9xyipEj2JRjwOgWWexr4=', '2fb524190c44d32652b19734bcedf9767bd32c9f85f610b410853436214cf7d7dfac2eec087cf177cc0ace4d75f43cb1dc72d78ecde7969de8de6c4fd8c505f9', 'c4d1405e10b4f73d17db7b87de6f60c7771dce4d08c67a19cf240ef033ba80d4f28a220d73a40d0d1780e22af8a43418ff69a6c51b0bc7460b8d5f219408a7bc', 1, 3, 1546378763, 0, 1546463669, 5),
(5, '078BFBFF00100F91', '147.135.156.123', NULL, 'WIN-GRAPSA4RP14', 2, 1546404564, 1, 4, 32, 0, 1, 0, 'pXyKa+2czuxhtAjjkC2UbdZmNpWGfmMu7SpRzulH9ag=', 'd1bd697bd8b35357a5a4d33c293d59d695fd19c531c5e4f85944b3f2db848c75ec18515a2b3909a38ac8472156e6522cdc8d4641b672cde1585930d999d26fdc', '04983058988c4f2b0c1df6fdf9210484e378de77181b0c7806df94d5463b0720b12f2ca31ced12143395eb849fdb945bfde11dabca81b00a097602c7c01fd582', 1, 3, 1546394250, 0, 1546394313, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ingame_players`
--

CREATE TABLE `ingame_players` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `serverID` int(11) NOT NULL,
  `token` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lastPing` int(11) NOT NULL,
  `whenCreated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ingame_players`
--

INSERT INTO `ingame_players` (`id`, `uid`, `serverID`, `token`, `lastPing`, `whenCreated`) VALUES
(1, 3, 1, 'aa9550db1d8b44e6', 1546464350, 1546464350),
(2, 2, 1, '5312421e3b21a789', 1546464358, 1546464358),
(3, 3, 1, 'd010301bf55f1dac', 1546464402, 1546464402),
(4, 2, 1, 'aff415c250c39942', 1546464532, 1546464532),
(5, 3, 1, '94edd4fe40e611ee', 1546464586, 1546464586),
(6, 3, 1, 'b0217fa67ccdc7d0', 1546464820, 1546464820),
(7, 2, 2, 'f408a577afeaa20e', 1546464880, 1546464880),
(8, 2, 3, '8abef1cf77efb983', 1546465007, 1546465007),
(9, 2, 4, 'c352f60aa719bb9e', 1546465453, 1546465453),
(10, 2, 6, '7924fb46eecf8dde', 1546696564, 1546696564),
(11, 2, 7, '63ba6d3c9bca126d', 1546696754, 1546696754),
(12, 2, 8, '0c9d59335570adee', 1546697012, 1546697012),
(13, 2, 9, '62d4483aea80d560', 1546698318, 1546698318),
(14, 2, 12, '7bb281c686e405fd', 1546707861, 1546707861),
(15, 2, 13, '66cebce4b68d638e', 1546708172, 1546708172);

-- --------------------------------------------------------

--
-- Table structure for table `ip_login_attempts`
--

CREATE TABLE `ip_login_attempts` (
  `id` int(11) NOT NULL,
  `ip` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `attempts` int(11) NOT NULL,
  `last_attempt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kill_server`
--

CREATE TABLE `kill_server` (
  `id` int(11) NOT NULL,
  `serverid` int(11) NOT NULL,
  `pc` int(11) NOT NULL,
  `killed` int(11) NOT NULL,
  `when_requested` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kill_server`
--

INSERT INTO `kill_server` (`id`, `serverid`, `pc`, `killed`, `when_requested`) VALUES
(1, 1, 4, 1, 1546464847),
(2, 2, 4, 1, 1546464971),
(3, 2, 4, 1, 1546465381),
(4, 3, 4, 1, 1546465384),
(5, 4, 4, 1, 1546465532),
(6, 5, 4, 1, 1546696545),
(7, 6, 4, 1, 1546696671),
(8, 7, 4, 1, 1546696873),
(9, 8, 4, 1, 1546697776),
(10, 9, 4, 1, 1546702563),
(11, 10, 4, 1, 1546707729),
(12, 11, 4, 1, 1546707828),
(13, 12, 2, 1, 1546707888),
(14, 13, 2, 1, 1546708199);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `who` int(11) NOT NULL,
  `action` text COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `open_servers`
--

CREATE TABLE `open_servers` (
  `id` int(11) NOT NULL,
  `placeID` int(11) NOT NULL,
  `PC` int(11) NOT NULL,
  `port` int(11) NOT NULL,
  `token` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `whenOpened` int(11) NOT NULL,
  `curPlayers` int(11) NOT NULL,
  `whenClosed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `open_servers`
--

INSERT INTO `open_servers` (`id`, `placeID`, `PC`, `port`, `token`, `status`, `whenOpened`, `curPlayers`, `whenClosed`) VALUES
(1, 1, 4, 65530, '9cf67a8ad0e4cc18', 2, 1546464295, 0, 0),
(2, 1, 4, 65530, 'e43c45465cc41642', 2, 1546464874, 0, 0),
(3, 1, 4, 65530, '68625682c80e0358', 2, 1546464990, 0, 0),
(4, 1, 4, 65530, '8614d09250f9d4ba', 2, 1546465408, 0, 1546465532),
(5, 1, 4, 65530, '6378ad663d49efd6', 2, 1546696213, 0, 0),
(6, 1, 4, 65530, '103aa28a3b2e93bb', 2, 1546696560, 0, 0),
(7, 1, 4, 65530, '4abff2d017ddeea0', 2, 1546696750, 0, 0),
(8, 1, 4, 65530, '99be5ef154c5e993', 2, 1546697008, 0, 0),
(9, 1, 4, 65530, 'a3bdd0b56b2af0b4', 2, 1546698314, 0, 0),
(10, 1, 4, 65530, '2f258d6746898d22', 2, 1546707696, 0, 0),
(11, 1, 4, 65530, '297c6a3201d595ec', 2, 1546707753, 0, 0),
(12, 1, 2, 65530, '5814dfc2fe57a92d', 2, 1546707857, 0, 1546707888),
(13, 1, 2, 65530, 'cbfedfe193583583', 2, 1546708168, 0, 1546708199);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `valid` int(11) NOT NULL,
  `GameServerID` int(11) NOT NULL,
  `token` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `when_generated` int(11) NOT NULL,
  `user_agent_used` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `valid`, `GameServerID`, `token`, `when_generated`, `user_agent_used`) VALUES
(1, 1, 2, 'imxBjs7ZR0QZODVg1KBLTrOZbFxuhBX5eFtutadhWDWcDPiLUVW3poDh3P09SuFvbQtawBk48zRZSi2bwUyT4OoVuewT5Kw0xGOtwjAUfgrC10jujUIKGJ2V3gKulOdv', 1546317638, 0),
(2, 1, 3, 'IJxYyL9TYgmbbSgW23CqWc3f8twfgAPPV8Idh3sU7QBdJ1SZ5Z4D8zj2iBVoIlbV9bEqMhrfKGmOVddpsbJveAB8hzaLNXK5hBOe1dv7jGqtJuDec0qIacLr34WvFN42', 1546371101, 0),
(3, 1, 5, 'mnmwEt1GlkfFBhzplg9qE6fBTzUoeUo454leXsLZqllrjB5gNzJu5MvKaZ0GfjSbMFP0lDkSztoguttvgeP02wyB1elkZH6wGEZV6XfwoLAbVgUX0p8NNpPzj9SYg3qD', 1546394313, 0),
(4, 1, 4, 'yObvAgvnz7CcIA68z1zUWIWCBR4OWskmnTKz8lpl6p237SDSosE3QXpIKMtQFdJSzaG1rhC3Q3kY4aIvPwvJ1Iz7QEgrSuW8VxdHtYp7w72aw2BJIYOFxOMyhc514PDK', 1546463669, 0);

-- --------------------------------------------------------

--
-- Table structure for table `signals`
--

CREATE TABLE `signals` (
  `id` int(11) NOT NULL,
  `pc` int(11) NOT NULL,
  `seen` int(11) NOT NULL,
  `when_seen` int(11) NOT NULL,
  `when_given` int(11) NOT NULL,
  `signaltype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `signals`
--

INSERT INTO `signals` (`id`, `pc`, `seen`, `when_seen`, `when_given`, `signaltype`) VALUES
(1, 4, 1, 1546464283, 1546464283, 3),
(2, 4, 1, 1546464847, 1546464847, 4),
(3, 4, 1, 1546464857, 1546464857, 3),
(4, 4, 1, 1546464971, 1546464971, 4),
(5, 4, 1, 1546464974, 1546464974, 3),
(6, 4, 1, 1546465381, 1546465381, 4),
(7, 4, 1, 1546465384, 1546465384, 4),
(8, 4, 1, 1546465396, 1546465396, 3),
(9, 4, 1, 1546465532, 1546465532, 4),
(10, 4, 1, 1546696166, 1546696165, 3),
(11, 4, 1, 1546696545, 1546696545, 4),
(12, 4, 1, 1546696548, 1546696548, 3),
(13, 4, 1, 1546696671, 1546696671, 4),
(14, 4, 1, 1546696739, 1546696739, 3),
(15, 4, 1, 1546696873, 1546696873, 4),
(16, 4, 1, 1546696996, 1546696996, 3),
(17, 4, 1, 1546697776, 1546697776, 4),
(18, 4, 1, 1546698303, 1546698303, 3),
(19, 4, 1, 1546702564, 1546702563, 4),
(20, 4, 1, 1546707677, 1546707677, 3),
(21, 4, 1, 1546707677, 1546707677, 3),
(22, 4, 1, 1546707738, 1546707729, 4),
(23, 4, 1, 1546707742, 1546707742, 3),
(24, 4, 1, 1546707828, 1546707828, 4),
(25, 2, 1, 1546707842, 1546707842, 3),
(26, 2, 1, 1546707888, 1546707888, 4),
(27, 2, 1, 1546708156, 1546708156, 3),
(28, 2, 1, 1546708199, 1546708199, 4);

-- --------------------------------------------------------

--
-- Table structure for table `startgame`
--

CREATE TABLE `startgame` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `GJRid` int(11) DEFAULT NULL,
  `serverID` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `token` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `createdWhen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `startgame`
--

INSERT INTO `startgame` (`id`, `uid`, `GJRid`, `serverID`, `used`, `token`, `createdWhen`) VALUES
(1, 2, NULL, 1, 0, 'ba6b4dd301ab7e88ef279183d4358212', 1546464296),
(2, 3, NULL, 1, 1, '88bfd09530ce39fc633606d24cd2bc97', 1546464340),
(3, 2, NULL, 1, 1, '6fe9a6da80897770f6e4b101c3d38bcb', 1546464350),
(4, 3, NULL, 1, 1, 'b89429feee38d40573558de294ee04c3', 1546464396),
(5, 2, NULL, 1, 1, 'a40f44be60d4cf7dad1f88e81e1de70d', 1546464493),
(6, 3, NULL, 1, 1, '745ecdff6d1b22073deb97640465e24d', 1546464580),
(7, 3, NULL, 1, 1, 'e0a55ee66df89e7ea406fc038403179d', 1546464812),
(8, 2, NULL, 2, 1, '1ba77863fe518fc34e8c12ba2935bb21', 1546464875),
(9, 2, NULL, 3, 1, 'bed32170f946ab07b547f1b754f9abc1', 1546464991),
(10, 2, NULL, 4, 1, 'fdf59c4c7ba1796546fc162129bf8a6b', 1546465408),
(11, 2, NULL, 5, 0, '9c3a59d940d5300e0e4f32965995619b', 1546696214),
(12, 2, NULL, 6, 1, '43a9617fd7660cf9627f1d2b7d4315a9', 1546696560),
(13, 2, NULL, 7, 1, '10662235be6fa802aa0e0a6a80b7b550', 1546696751),
(14, 2, NULL, 8, 1, 'bcd9fa138cc6cfca4b031386665d4abd', 1546697009),
(15, 2, NULL, 9, 1, '3439176b2a6d6c0a06143efc17ad5e0d', 1546698314),
(16, 2, NULL, 12, 1, 'ab1471f965f4c32e2cf7a8d4a956d086', 1546707857),
(17, 2, NULL, 13, 1, 'fda52bc9f6d64d4014e87c80d1b06fea', 1546708169);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games_starting_reroute`
--
ALTER TABLE `games_starting_reroute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_join_requests`
--
ALTER TABLE `game_join_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_servers`
--
ALTER TABLE `game_servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingame_players`
--
ALTER TABLE `ingame_players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_login_attempts`
--
ALTER TABLE `ip_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kill_server`
--
ALTER TABLE `kill_server`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `open_servers`
--
ALTER TABLE `open_servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signals`
--
ALTER TABLE `signals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `startgame`
--
ALTER TABLE `startgame`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games_starting_reroute`
--
ALTER TABLE `games_starting_reroute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `game_join_requests`
--
ALTER TABLE `game_join_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `game_servers`
--
ALTER TABLE `game_servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ingame_players`
--
ALTER TABLE `ingame_players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `ip_login_attempts`
--
ALTER TABLE `ip_login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kill_server`
--
ALTER TABLE `kill_server`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `open_servers`
--
ALTER TABLE `open_servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `signals`
--
ALTER TABLE `signals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `startgame`
--
ALTER TABLE `startgame`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
