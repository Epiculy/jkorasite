-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2019 at 12:30 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rubulz_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ec_anti_email_spam`
--

CREATE TABLE `ec_anti_email_spam` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `TIME` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_anti_horde`
--

CREATE TABLE `ec_anti_horde` (
  `ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `LIMIT_Q` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_avatar`
--

CREATE TABLE `ec_avatar` (
  `USER_ID` int(11) NOT NULL,
  `BODY_ITEM_ID` int(11) NOT NULL,
  `FACE_ITEM_ID` int(11) NOT NULL,
  `HEAD_ITEM_ID` int(11) NOT NULL,
  `TOOL_ITEM_ID` int(11) NOT NULL,
  `MASK_ITEM_ID` int(11) NOT NULL DEFAULT '-1',
  `EYES_ITEM_ID` int(11) NOT NULL DEFAULT '0',
  `HAIR_ITEM_ID` int(11) NOT NULL DEFAULT '0',
  `HEAD_2_ITEM_ID` int(11) NOT NULL DEFAULT '0',
  `SHIRT_ITEM_ID` int(11) NOT NULL DEFAULT '0',
  `TROU_ITEM_ID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_ban_logs`
--

CREATE TABLE `ec_ban_logs` (
  `ID` int(11) NOT NULL,
  `MOD_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `LENGTH` int(10) NOT NULL,
  `REASON` varchar(999) NOT NULL,
  `START_TIME` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_crate`
--

CREATE TABLE `ec_crate` (
  `ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `SERIAL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_forums`
--

CREATE TABLE `ec_forums` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(999) NOT NULL,
  `THREADS` int(11) NOT NULL,
  `POSTS` int(11) NOT NULL,
  `LAST_USER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ec_forums`
--

INSERT INTO `ec_forums` (`ID`, `NAME`, `DESCRIPTION`, `THREADS`, `POSTS`, `LAST_USER`) VALUES
(1, 'General Discussion', 'This is the place for conversation about all things Rubulz. Posts not pertaining to Rubulz will be mercilessly pruned by our crack squad of moderators.', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_forum_posts`
--

CREATE TABLE `ec_forum_posts` (
  `ID` int(11) NOT NULL,
  `BODY` varchar(2000) NOT NULL,
  `TABLE_ID` int(11) NOT NULL,
  `THREAD_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `TIME` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_forum_threads`
--

CREATE TABLE `ec_forum_threads` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(30) NOT NULL DEFAULT 'NONE',
  `BODY` varchar(2000) NOT NULL DEFAULT 'NONE',
  `USER_ID` int(11) NOT NULL,
  `LOCKED` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `PINNED` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `TABLE_ID` int(11) NOT NULL,
  `TIME` int(11) NOT NULL,
  `LAST_TIME` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ec_forum_threads`
--

INSERT INTO `ec_forum_threads` (`ID`, `TITLE`, `BODY`, `USER_ID`, `LOCKED`, `PINNED`, `TABLE_ID`, `TIME`, `LAST_TIME`) VALUES
(1, 'TEST1', 'TEST', 1, 'NO', 'NO', 1, 1, 1),
(2, 'TEST2', 'TEST', 1, 'NO', 'NO', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ec_friends`
--

CREATE TABLE `ec_friends` (
  `ID` int(11) NOT NULL,
  `SENDER_ID` int(11) NOT NULL,
  `RECEIVE_ID` int(11) NOT NULL,
  `PENDING` enum('YES','NO') NOT NULL,
  `ACCEPTED` enum('YES','NO') NOT NULL,
  `DECLINED` enum('YES','NO') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_items`
--

CREATE TABLE `ec_items` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(75) NOT NULL DEFAULT 'HAT.NAME.NEW',
  `DESCRIPTION` varchar(1000) NOT NULL DEFAULT 'HAT.DESCRIPTION.NEW',
  `ROBUX_PRICE` int(11) NOT NULL,
  `TIX_PRICE` int(11) NOT NULL,
  `OFFSALE` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `PREVIEW_IMG_URL` varchar(1000) NOT NULL DEFAULT '/renders/catalog/none.png',
  `FILE` varchar(1000) NOT NULL DEFAULT '/hats/default.rblx',
  `RARE` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `CREATORNAME` varchar(11) NOT NULL DEFAULT '-1',
  `CREATOR` int(11) NOT NULL DEFAULT '-1',
  `SALES` int(11) NOT NULL,
  `TIME` int(11) NOT NULL DEFAULT '1500000000',
  `TYPE` enum('HAT','SHIRT') NOT NULL DEFAULT 'HAT'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ec_items`
--

INSERT INTO `ec_items` (`ID`, `NAME`, `DESCRIPTION`, `ROBUX_PRICE`, `TIX_PRICE`, `OFFSALE`, `PREVIEW_IMG_URL`, `FILE`, `RARE`, `CREATORNAME`, `CREATOR`, `SALES`, `TIME`, `TYPE`) VALUES
(1, 'FIRST HAT BRUH', 'FIRST HAT BRUH', 1, 1, 'NO', '/renders/catalog/none.png', '/hats/default.rblx', 'NO', 'Rubulz', 1, 1337, 1500000000, 'HAT');

-- --------------------------------------------------------

--
-- Table structure for table `ec_item_comments`
--

CREATE TABLE `ec_item_comments` (
  `ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `COMMENT` varchar(255) NOT NULL,
  `TIME` int(11) NOT NULL,
  `LIKES` int(11) NOT NULL DEFAULT '0',
  `DISLIKES` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_membership`
--

CREATE TABLE `ec_membership` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `START_TIME` int(11) NOT NULL,
  `END_TIME` int(11) NOT NULL,
  `ACTIVE` enum('YES','NO') NOT NULL,
  `TYPE` enum('BC','TBC','OBC') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ec_membership`
--

INSERT INTO `ec_membership` (`ID`, `USER_ID`, `START_TIME`, `END_TIME`, `ACTIVE`, `TYPE`) VALUES
(1, 1, 1571681034, 174754, 'YES', 'BC'),
(3, 4, 1571681162, 1574281162, 'YES', 'BC'),
(4, 12, 1571688591, 1574288591, 'YES', 'BC'),
(5, 1, 1571766008, 174754, 'YES', 'BC'),
(6, 2, 1572007622, 174754, 'YES', 'BC');

-- --------------------------------------------------------

--
-- Table structure for table `ec_messages`
--

CREATE TABLE `ec_messages` (
  `ID` int(11) NOT NULL,
  `SENDER_ID` int(11) NOT NULL,
  `RECEIVE_ID` int(11) NOT NULL,
  `TITLE` varchar(30) NOT NULL,
  `BODY` varchar(2000) NOT NULL,
  `PAST_TEXT` varchar(8000) NOT NULL,
  `TIME` int(11) NOT NULL,
  `SEEN` enum('YES','NO') NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_mod_logs`
--

CREATE TABLE `ec_mod_logs` (
  `ID` int(11) NOT NULL,
  `MOD_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ACTION` varchar(255) NOT NULL,
  `TIME` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_mod_uploads`
--

CREATE TABLE `ec_mod_uploads` (
  `ID` int(11) NOT NULL,
  `AVATAR_IMG_URL` varchar(255) NOT NULL,
  `PREVIEW_IMG_URL` varchar(255) NOT NULL,
  `PENDING` enum('YES','NO') NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `RARE` enum('YES','NO') NOT NULL,
  `STOCK` int(11) NOT NULL,
  `GOLD_PRICE` int(11) NOT NULL,
  `SILVER_PRICE` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(100) NOT NULL,
  `TIME` int(11) NOT NULL,
  `LAYER` enum('BODY','FACE','MASK','HEAD','TOOL','HAIR','EYES','SHIRT','TROU','HEAD_2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_recent_events`
--

CREATE TABLE `ec_recent_events` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `STATUS` varchar(255) NOT NULL,
  `TIME` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_reports`
--

CREATE TABLE `ec_reports` (
  `ID` int(11) NOT NULL,
  `REPORTER_ID` int(11) NOT NULL,
  `REASON` varchar(500) NOT NULL,
  `VICTIM_ID` varchar(65) NOT NULL,
  `SEEN` enum('YES','NO') NOT NULL,
  `TIME` int(11) NOT NULL,
  `MOD_SEEN_ID` int(11) NOT NULL,
  `MOD_NOTE` varchar(500) NOT NULL DEFAULT 'no action',
  `TYPE` enum('FORUM','USER') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_reselling`
--

CREATE TABLE `ec_reselling` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  `SERIAL` int(11) NOT NULL,
  `PRICE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_trades`
--

CREATE TABLE `ec_trades` (
  `ID` int(11) NOT NULL,
  `TRADE_INFO` varchar(2000) NOT NULL,
  `SENDER_ID` int(11) NOT NULL,
  `RECEIVER_ID` int(11) NOT NULL,
  `STATUS` enum('PENDING','ACCEPTED','DECLINED') NOT NULL DEFAULT 'PENDING',
  `MONEY_SENDING` int(11) NOT NULL,
  `MONEY_REQUEST` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_users`
--

CREATE TABLE `ec_users` (
  `ID` int(11) NOT NULL,
  `USERNAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(999) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `AGEGROUP` enum('13+','< 13') NOT NULL,
  `ROBUX` int(11) NOT NULL DEFAULT '0',
  `TIX` int(11) NOT NULL DEFAULT '20',
  `POWER` enum('FOUNDER','ADMIN','MODERATOR','MEMBER') NOT NULL DEFAULT 'MEMBER',
  `BC` enum('NONE','BC','TBC','OBC') NOT NULL DEFAULT 'NONE',
  `BANNED` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `BANNED_TILL` int(11) NOT NULL,
  `JOINED` int(11) NOT NULL,
  `FORUM_POSTS` int(11) NOT NULL,
  `FORUM_SIG` varchar(255) NOT NULL,
  `LAST_ONLINE` int(11) NOT NULL,
  `AVATAR_IMG_URL` varchar(255) NOT NULL DEFAULT 'imgs/default_avatar.png/',
  `IP` varchar(35) NOT NULL DEFAULT '0.0.0.0',
  `VERIFIED` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `BLURB` varchar(300) NOT NULL DEFAULT ' ',
  `STATUS` varchar(255) NOT NULL,
  `UNI_STRING` varchar(255) NOT NULL,
  `DAILY_ROBUX` int(11) NOT NULL,
  `POWER2` enum('0','1','2','3','4','5','6') NOT NULL DEFAULT '0',
  `ISTESTER` enum('0','1') NOT NULL DEFAULT '0',
  `SAFECHAT` enum('Safe','Super Safe') NOT NULL DEFAULT 'Safe'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ec_users`
--

INSERT INTO `ec_users` (`ID`, `USERNAME`, `PASSWORD`, `EMAIL`, `AGEGROUP`, `ROBUX`, `TIX`, `POWER`, `BC`, `BANNED`, `BANNED_TILL`, `JOINED`, `FORUM_POSTS`, `FORUM_SIG`, `LAST_ONLINE`, `AVATAR_IMG_URL`, `IP`, `VERIFIED`, `BLURB`, `STATUS`, `UNI_STRING`, `DAILY_ROBUX`, `POWER2`, `ISTESTER`, `SAFECHAT`) VALUES
(1, 'Rubulz', '800349b3a3b7feff1e4f54773236758a585b353eb4bbff2a43e3cbd7ff51532e1d15e0f9540e561fe33b5c185a477a798c8ff209f0fe132429276f5a6cf9f70a', 'support@rubulz.net', '13+', 114, 914, 'MEMBER', 'BC', 'NO', 1569860376, 1569860376, 0, '', 1572042054, '/renders/avatars/1.png', '', 'NO', 'BrickSpace is just Rubulz but more shittier.', 'Hi, I am new here!', 'AybDf7EBCS', 1572121033, '5', '1', 'Safe'),
(2, 'user.aspx', 'e0f27729ba23bd20d76d985876a1abbbae450241b5027a4e9e20b2cfc279447d97bf06cfbf19abccc77ccbdc4fad6dd9753fd474f5607eda9ca3de8b77564895', 'miki.lemming@gmail.com', '13+', 30, 210, 'MEMBER', 'BC', 'NO', 1570899584, 1570899584, 0, '', 1572036911, '/renders/avatars/default.png', '', 'NO', 'monky\r\nhttps://twitter.com/Nin_SmashBros/status/1179176696907534342', 'Hi, I am new here!', 'zkEDGdqQIY', 1572092222, '3', '1', 'Safe'),
(3, 'pichu', 'd327fcd2fc35fca10855202200025c83dd7ede5fcfb30ad25e8e3d2ba772416c0392c6326bc46460e39b21acfdfef0aaa6a5c06652316c2717c159f62d408e7d', 'santisinbox@gmail.com', '13+', 0, 70, 'MEMBER', 'NONE', 'NO', 1570899739, 1570899739, 0, '', 1572038577, '/renders/avatars/default.png', '', 'NO', 'Hello I\'m pichu, an Epic gamer.\r\n\r\nYes I am the 3rd user\r\n\r\nMy Discord is pichu#0679 :)\r\n\r\nHope to have fun here', 'Hi, I am new here!', 'lz0ORHMD1c', 1572122481, '0', '1', 'Safe'),
(4, 'DominoBreaker', '6a633c2d0a0bc7c9a3c5f0c7c5bb48d21fde2776445828f320a215e97bf53753d76ecc778e5bc71181b05c3ae7e255371ddcdc575bd3f56f240ba1846b407c9f', 'ihatethischannel123reloaded@gmail.com', '13+', 0, 10, 'MEMBER', 'BC', 'NO', 1570899751, 1570899751, 0, '', 1571681171, '/renders/avatars/default.png', '', 'NO', 'hi', 'Hi, I am new here!', 'UUBgKz0Wks', 1571762012, '0', '1', 'Safe'),
(5, 'Phire', '', 'Cubash88@gmail.com', '13+', 0, 0, 'MEMBER', 'NONE', 'NO', 1570899830, 1570899830, 0, '', 1570899936, '/renders/avatars/default.png', '', 'NO', '', 'Hi, I am new here!', 'MTVxG62MKO', 1570986236, '0', '1', 'Safe'),
(6, 'Multako', '7f792d117cb4e3b372acd035392fbbcdf2824b19ac51443a515a3208b105d0569b361e69dc53b94f1181fba23bea95579490ba1214dca6b0b9b7cffe81c09ff9', 'allstarpro1223@gmail.com', '13+', 0, 60, 'MEMBER', 'NONE', 'NO', 1570899849, 1570899849, 0, '', 1572042069, '/renders/avatars/default.png', '', 'NO', '', 'Hi, I am new here!', 'ZpJN58xONa', 1572128237, '3', '1', 'Safe'),
(7, 'The Big Slide', 'd51b8b8b47b8d6986380ee444442a810389f02086378e18be243ba1543e50dbd442b4877a57b4058585dde9ada10c3ecc446599dde529283e0e2fc65c4d3f439', 'dodgernuke@gmail.com', '13+', 0, 30, 'MEMBER', 'NONE', 'NO', 1570983475, 1570983475, 0, '', 1571001252, '/renders/avatars/default.png', '', 'NO', '', 'Hi, I am new here!', 'Ml3WAtnPSd', 1571069876, '0', '1', 'Safe'),
(8, 'Metalhead', '5ceca79faf7a61421c5c69814f1b41823957d38ca359bf5f1eb66d2c894fe3bcbcab8b60212d47dc36481318f0dfd042f8b000e5b5d1e7ae97273a711c009eff', 'hello@hello.com', '13+', 0, 40, 'MEMBER', 'NONE', 'NO', 1570998064, 1570998064, 0, '', 1572036762, '/renders/avatars/default.png', '', 'NO', '', 'Hi, I am new here!', 'WwN0boCwh8', 1572122853, '0', '1', 'Safe'),
(9, 'lolo999', '34a68bb37560e418d6960b4cfe6f17fd985ff0ab817fe66d71a8fe40474eb49a25d23b0dd2e4c2db227b22786ccb5c2e069b87d84b7b371ef724973fbb10f473', 'lolo999rblx@gmail.com', '13+', 0, 30, 'MEMBER', 'NONE', 'NO', 1571241484, 1571241484, 0, '', 1571241854, '/renders/avatars/default.png', '', 'NO', 'h', 'Hi, I am new here!', 'WNo9LfhxyN', 1571327885, '0', '1', 'Safe'),
(10, 'Mr. Pinball', '69a8f35baaa5b36622ac8b481579a8650bb4c411f7812eaac52b1a83dc1f3bccf388a67d457d70039851576d71cb34a7b7c820cf4ae0def80016e1211da7a641', 'jason.h@noa.nintendo.com', '13+', 0, 40, 'MEMBER', 'NONE', 'NO', 1571496990, 1571496990, 0, '', 1571595811, '/renders/avatars/default.png', '', 'NO', '', 'Hi, I am new here!', 'a4vSVWUnr4', 1571682090, '6', '1', 'Safe'),
(11, 'TEST', '51fc57a99f57f779ec55aaec1f633d131e9d72c5af14766f80c1053bc6dd37d66be39424ddbef6e7dc571cf6dff81864441c6841360d25cffe3806f53064325f', 'rubulz2@rubulz.net', '13+', 0, 30, 'MEMBER', 'NONE', 'NO', 1571591731, 1571591731, 0, '', 1571591816, '/renders/avatars/default.png', '', 'NO', '', 'Hi, I am new here!', '3bzxoi7C4i', 1571678132, '0', '1', 'Safe'),
(12, 'Impy', 'bfd612751e685b4324d2c701aaa39f2c2833fb8318dc5d864f54a83f1f5d3f4c4831941404a797e443fc909b661e04e89ddd9d98daaceb27b9d81b71d966bfe9', 'toxicanrobots@gmail.com', '13+', 15, 180, 'MEMBER', 'BC', 'NO', 1571592770, 1571592770, 0, '', 1572036811, '/renders/avatars/default.png', '', 'NO', '2007 stable edition?! Wtf.', 'Hi, I am new here!', 'NbTW71eMwG', 1572123006, '0', '1', 'Safe'),
(13, 'HELP1', 'eab0858255995816db26547186757f3b3c8690fe074cb6bf63c22e9739130273f2d049a6b0fdeb20436712a7e979a50aca386710694d72144ad2e9039b72ac49', 'test@yahoo.test', '13+', 0, 30, 'MEMBER', 'NONE', 'NO', 1572035908, 1572035908, 0, '', 1572035954, '/renders/avatars/default.png', '', 'NO', 'ok hi test account while i was fixing register\r\neverything works epic', 'Hi, I am new here!', 'LQ2V7FORRR', 1572122309, '0', '0', 'Safe'),
(14, 'Viralbox', '72279b7f247c55d9306de8e1381f834c752443f6c1a86524bd8e122f5fbcff22781b42664568c5b87877a7d7ec36d3e3fe3ea2f28fd19657783c029818ae650e', 'linklodina77@gmail.com', '13+', 0, 30, 'MEMBER', 'NONE', 'NO', 1572036090, 1572036090, 0, '', 1572037099, '/renders/avatars/default.png', '', 'NO', '', 'Hi, I am new here!', 'r1wE2YZgnt', 1572122651, '0', '0', 'Safe'),
(15, 'PublicBeta', 'bfd612751e685b4324d2c701aaa39f2c2833fb8318dc5d864f54a83f1f5d3f4c4831941404a797e443fc909b661e04e89ddd9d98daaceb27b9d81b71d966bfe9', 'realmeaningroblox@gmail.com', '13+', 0, 30, 'MEMBER', 'NONE', 'NO', 1572036122, 1572036122, 0, '', 1572036407, '/renders/avatars/default.png', '', 'NO', '', 'Hi, I am new here!', 'dD7vbIOxFj', 1572122527, '0', '0', 'Safe'),
(16, 'Telamon', 'd327fcd2fc35fca10855202200025c83dd7ede5fcfb30ad25e8e3d2ba772416c0392c6326bc46460e39b21acfdfef0aaa6a5c06652316c2717c159f62d408e7d', 'santisinbox@gmail.com', '13+', 0, 30, 'MEMBER', 'NONE', 'NO', 1572036208, 1572036208, 0, '', 1572036501, '/renders/avatars/default.png', '', 'NO', '', 'Hi, I am new here!', 'PAxZIC0Kdy', 1572122625, '0', '0', 'Safe'),
(17, '[ Content Deleted 499875440 ]', '029c849823f60f032171cb127dcb67ec9e88440ba08c6570237a58dee734482c3a247a81a87c86552fac2d2cf72efeeb07b6d8634be815e7950d3e48c967fc55', 'yssdds@asdasd.asasd', '13+', 0, 30, 'MEMBER', 'NONE', 'NO', 1572036314, 1572036314, 0, '', 1572036361, '/renders/avatars/default.png', '', 'NO', '', 'Hi, I am new here!', 'heAREWiIVx', 1572122715, '0', '0', 'Super Safe'),
(18, 'EricCartmanUSSR', 'b2177f245c25092465e663c65e340d231c335ba07b531a0439c3a3c7073344e8bcb3ffdb186a69857cd74a3d7b5a216c6030c9db30737d59cb7bae33a26aaa59', 'bronco350@yahoo.com', '13+', 0, 30, 'MEMBER', 'NONE', 'NO', 1572036320, 1572036320, 0, '', 1572036619, '/renders/avatars/default.png', '', 'NO', '', 'Hi, I am new here!', 'jGY2QEb3hm', 1572122761, '0', '0', 'Safe'),
(19, 'alex9997979z', '9e166efca3cbf117c72dff5306262850246ad5b93a3b8fb0af7eb7c0fc5f6006587ae33ccb8d4d4107ee8c12c23ac1547f3c1463642ead49cdc0bed2240ed2ce', 'alexandre.laparra.al@gmail.com', '13+', 0, 30, 'MEMBER', 'NONE', 'NO', 1572036332, 1572036332, 0, '', 1572037457, '/renders/avatars/default.png', '', 'NO', 'Hello there, i am not a furry.\r\nIM NOT A FURRY, I TOTALLY AM NOT A-\r\n[REDACTED]\r\n[DATA LOST]', 'Hi, I am new here!', 'kYB2g2Iuos', 1572122733, '0', '0', 'Safe'),
(20, 'Roblox', 'd06abcb62af25c02092839af0f51fe8b00dcf42f46f9023189c4485ccfa6d5ccb4c829eba904d9fd10c38e0f2378f26b7ac52de2ee8879e9adc135529ca5da48', 'miki.lemming@gmail.com', '13+', 0, 30, 'MEMBER', 'NONE', 'NO', 1572036372, 1572036372, 0, '', 1572036373, '/renders/avatars/default.png', '', 'NO', '', 'Hi, I am new here!', 'Z3OYLyUsTI', 1572122773, '0', '0', 'Safe'),
(21, '[ Content Deleted 630063962 ]', 'bfd612751e685b4324d2c701aaa39f2c2833fb8318dc5d864f54a83f1f5d3f4c4831941404a797e443fc909b661e04e89ddd9d98daaceb27b9d81b71d966bfe9', 'toxicanrobots@gmail.com', '13+', 0, 30, 'MEMBER', 'NONE', 'NO', 1572036665, 1572036665, 0, '', 1572036666, '/renders/avatars/default.png', '', 'NO', '', 'Hi, I am new here!', 'HhsAVv5nS7', 1572123066, '0', '0', 'Safe'),
(22, 'RubuIz', 'a87705ca8cc48f89e117c060f049b1187843eca0ed3387aaa01065a9c637adea14c8d33c1b7ec35f1b0d036e0ad57bbd6868c6b1f9bb1597c7d4854d2342a834', 'idioticmanseries@gmail.com', '13+', 0, 30, 'MEMBER', 'NONE', 'NO', 1572036694, 1572036694, 0, '', 1572036755, '/renders/avatars/default.png', '', 'NO', '', 'Hi, I am new here!', 'vLWE0yx4E4', 1572123105, '0', '0', 'Safe'),
(23, 'Phiree', 'f1b27e40244a7caa51b072fbddb5d73c1d86961748e8c6744c49891f63baa46e72fa2e8ed160a32d790138c983203b0710868cbed4f6613d13d1d949cc3488f9', 'cubash88@gmail.com', '13+', 0, 30, 'MEMBER', 'NONE', 'NO', 1572038401, 1572038401, 0, '', 1572038412, '/renders/avatars/default.png', '', 'NO', '', 'Hi, I am new here!', 'rCqyKSax9W', 1572124802, '0', '0', 'Safe'),
(24, 'mike', '55888a13ce0ce489eecef1583cb6038c7a0d8349634a23ee1f1f346d70457862eb0bc3d620b8291451bfdb6b31921c5ddbf43476571af7f81ef4e5510be1060f', 'gamesactivacte@gmail.com', '13+', 0, 30, 'MEMBER', 'NONE', 'NO', 1572040433, 1572040433, 0, '', 1572042348, '/renders/avatars/default.png', '', 'NO', 'hi', 'Hi, I am new here!', 'eOMi7Z0083', 1572126862, '0', '0', 'Safe'),
(25, 'cubebuilder', 'e7835be4ebc93b6eee708703690f13e48fb7c7002fcdd0b94e6ee2be1101902a36b5b4b2059a094d98c01a7d28a8b20d84cfab443cf28ff3df93b96fd49f7f29', 'sebastiantmk@gmail.com', '< 13', 0, 30, 'MEMBER', 'NONE', 'NO', 1572041754, 1572041754, 0, '', 1572042445, '/renders/avatars/default.png', '', 'NO', 'Hi', 'Hi, I am new here!', 'CcOPk2VDyr', 1572128155, '0', '0', 'Super Safe');

-- --------------------------------------------------------

--
-- Table structure for table `ec_user_assets`
--

CREATE TABLE `ec_user_assets` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(500) NOT NULL,
  `CREATOR_ID` int(11) NOT NULL,
  `TIME_UPLOADED` varchar(500) NOT NULL,
  `SILVER_PRICE` int(11) NOT NULL,
  `AVATAR_IMG` varchar(500) NOT NULL,
  `STATUS` enum('ACCEPTED','PENDING','DECLINED') NOT NULL,
  `TYPE` varchar(10) NOT NULL,
  `STARS` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `ID` int(11) NOT NULL,
  `URL` varchar(999) NOT NULL DEFAULT 'localhost'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `ID` int(11) NOT NULL,
  `IP` varchar(999) NOT NULL,
  `LOC` varchar(999) NOT NULL,
  `COUNTRY` varchar(999) NOT NULL,
  `PHONE` varchar(999) NOT NULL,
  `STATE` varchar(999) NOT NULL,
  `CITY` varchar(999) NOT NULL,
  `TIME` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ec_anti_email_spam`
--
ALTER TABLE `ec_anti_email_spam`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_anti_horde`
--
ALTER TABLE `ec_anti_horde`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_avatar`
--
ALTER TABLE `ec_avatar`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `ec_ban_logs`
--
ALTER TABLE `ec_ban_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_crate`
--
ALTER TABLE `ec_crate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_forums`
--
ALTER TABLE `ec_forums`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_forum_posts`
--
ALTER TABLE `ec_forum_posts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_forum_threads`
--
ALTER TABLE `ec_forum_threads`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_friends`
--
ALTER TABLE `ec_friends`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_items`
--
ALTER TABLE `ec_items`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_item_comments`
--
ALTER TABLE `ec_item_comments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_membership`
--
ALTER TABLE `ec_membership`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_messages`
--
ALTER TABLE `ec_messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_mod_logs`
--
ALTER TABLE `ec_mod_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_mod_uploads`
--
ALTER TABLE `ec_mod_uploads`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_recent_events`
--
ALTER TABLE `ec_recent_events`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_reports`
--
ALTER TABLE `ec_reports`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_reselling`
--
ALTER TABLE `ec_reselling`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_trades`
--
ALTER TABLE `ec_trades`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_users`
--
ALTER TABLE `ec_users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `USERNAME` (`USERNAME`);

--
-- Indexes for table `ec_user_assets`
--
ALTER TABLE `ec_user_assets`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ec_anti_email_spam`
--
ALTER TABLE `ec_anti_email_spam`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_anti_horde`
--
ALTER TABLE `ec_anti_horde`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_ban_logs`
--
ALTER TABLE `ec_ban_logs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_crate`
--
ALTER TABLE `ec_crate`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_forums`
--
ALTER TABLE `ec_forums`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_forum_posts`
--
ALTER TABLE `ec_forum_posts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_forum_threads`
--
ALTER TABLE `ec_forum_threads`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_friends`
--
ALTER TABLE `ec_friends`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_items`
--
ALTER TABLE `ec_items`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_item_comments`
--
ALTER TABLE `ec_item_comments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_membership`
--
ALTER TABLE `ec_membership`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ec_messages`
--
ALTER TABLE `ec_messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_mod_logs`
--
ALTER TABLE `ec_mod_logs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_mod_uploads`
--
ALTER TABLE `ec_mod_uploads`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_recent_events`
--
ALTER TABLE `ec_recent_events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_reports`
--
ALTER TABLE `ec_reports`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_reselling`
--
ALTER TABLE `ec_reselling`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_trades`
--
ALTER TABLE `ec_trades`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_users`
--
ALTER TABLE `ec_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ec_user_assets`
--
ALTER TABLE `ec_user_assets`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
