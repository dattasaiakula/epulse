-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 10, 2021 at 12:51 PM
-- Server version: 10.5.12-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id18088723_users`
--

-- --------------------------------------------------------

--
-- Table structure for table `Area`
--

CREATE TABLE `Area` (
  `id` int(11) NOT NULL,
  `area` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Area`
--

INSERT INTO `Area` (`id`, `area`) VALUES
(1, 'Data Management'),
(2, 'Reports'),
(3, 'Dashboards'),
(4, 'Data Designer'),
(5, 'Journey Orchestrator'),
(6, 'Rules Engine'),
(7, 'cockpit'),
(8, 'C360'),
(9, 'Scorecard'),
(10, 'Connectors');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(250) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `posteddate` datetime DEFAULT NULL,
  `issue_id` int(11) NOT NULL,
  `issue_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `username`, `userId`, `posteddate`, `issue_id`, `issue_name`) VALUES
(1, 'Hello', 'Manoja', 14, '2021-11-15 12:04:42', 5, ''),
(2, 'Hello', 'manoja@rjeys.com', 14, '2021-11-15 19:42:40', 9, 'rules'),
(3, 'Hii Manoja.....!', 'Dattasai Akula', 4, '2021-11-15 19:50:01', 5, 'Hello'),
(4, 'Hi All ', 'Dattasai Akula', 4, '2021-11-15 19:51:42', 24, 'test'),
(5, 'Hi @Dattasai Akula @Manoja , How are you?', 'Bhavana', 11, '2021-11-15 19:55:42', 5, 'Hello'),
(6, 'Hi @manoja@rjeys.com', 'Bhavana', 11, '2021-11-15 19:56:43', 9, 'rules'),
(7, 'hiii', 'Dattasai Akula', 4, '2021-11-19 15:14:53', 54, 'Connectors'),
(8, 'Hii', 'Dattasai Akula', 4, '2021-11-19 15:51:37', 52, 'Report'),
(9, 'hello', 'test user', 20, '2021-11-21 20:15:01', 5, 'Hello'),
(10, 'Hello', 'Ratna Raju Jetty', 1, '2021-11-22 12:29:27', 64, 'Demo'),
(11, 'Hello all', 'Ratna Raju Jetty', 1, '2021-11-22 19:35:49', 64, 'Demo'),
(12, 'Hello', 'Dattasai Akula', 4, '2021-11-22 19:37:47', 64, 'Demo'),
(13, 'Hello.........', 'Dattasai Akula', 4, '2021-11-22 19:38:22', 64, 'Demo'),
(14, 'Hii all', 'Manoja', 14, '2021-11-22 19:40:06', 64, 'Demo'),
(15, 'Hello @Ratna Raju Jetty ', 'Prasad', 3, '2021-11-22 19:42:29', 64, 'Demo'),
(16, '', 'Prasad', 3, '2021-11-22 19:44:19', 64, 'Demo'),
(17, 'hello @manoja', 'Prasad', 3, '2021-11-22 19:44:35', 64, 'Demo'),
(18, 'hello @manoja', 'Prasad', 3, '2021-11-22 19:44:45', 64, 'Demo'),
(19, 'Hello', 'Prasad', 3, '2021-11-22 19:47:14', 66, 'Reports'),
(20, 'Hello @Prasad', 'Manoja', 14, '2021-11-22 19:48:39', 66, 'Reports'),
(21, 'Hello', 'Ratna Raju Jetty', 1, '2021-11-23 12:05:43', 53, 'Dashboards'),
(22, 'Hello everyone', 'Ratna Raju Jetty', 1, '2021-11-23 12:59:53', 53, 'Dashboards'),
(23, 'Hii Guys', 'Ratna Raju Jetty', 1, '2021-11-23 13:19:32', 53, 'Dashboards'),
(24, 'Hii Guys', 'Ratna Raju Jetty', 1, '2021-11-23 13:19:59', 53, 'Dashboards'),
(25, 'Hi...........', 'Ratna Raju Jetty', 1, '2021-11-23 13:20:13', 53, 'Dashboards'),
(26, 'bdshdbsh', 'Ratna Raju Jetty', 1, '2021-11-23 13:22:15', 53, 'Dashboards'),
(27, 'hjkhsdjs', 'Ratna Raju Jetty', 1, '2021-11-23 13:22:32', 53, 'Dashboards'),
(28, 'Helloo.....', 'Manoja', 14, '2021-11-23 13:31:19', 53, 'Dashboards'),
(29, 'hello', 'Ratna Raju Jetty', 1, '2021-11-26 13:26:23', 53, 'Dashboards'),
(30, 'raju.....', 'Ratna Raju Jetty', 1, '2021-11-26 13:26:40', 53, 'Dashboards'),
(31, 'raju.....', 'Ratna Raju Jetty', 1, '2021-11-26 13:26:47', 53, 'Dashboards'),
(32, 'heeeee', 'Ratna Raju Jetty', 1, '2021-11-26 13:27:04', 53, 'Dashboards'),
(33, 'test', 'Ratna Raju Jetty', 1, '2021-11-26 13:29:54', 53, 'Dashboards'),
(34, 'HELLO', 'Manoja', 14, '2021-11-27 18:09:18', 64, 'Demo'),
(35, 'test', 'Manoja', 14, '2021-11-27 18:09:53', 67, 'Dashboard'),
(36, 'testing.....', 'Manoja', 14, '2021-11-27 18:10:01', 67, 'Dashboard'),
(37, 'hello', 'Manoja', 14, '2021-11-27 18:10:38', 66, 'Reports'),
(38, 'hello\r\n', 'Manoja', 14, '2021-11-29 14:44:00', 84, 'cndf'),
(39, 'hiii', 'Manoja', 14, '2021-11-29 14:44:08', 84, 'cndf'),
(40, 'hello @Test', 'Manoja', 14, '2021-11-30 14:34:57', 53, 'Dashboards'),
(41, 'hello', 'Sai', 29, '2021-12-03 13:15:38', 52, 'Report'),
(42, 'helllo', 'Manoja', 14, '2021-12-03 13:56:08', 95, 'hellooo'),
(43, 'Hey....', 'Manoja', 14, '2021-12-03 13:56:32', 95, 'hellooo'),
(44, 'hello', 'Ratna', 1, '2021-12-03 14:44:23', 53, 'Dashboards'),
(45, 'Hey..........', 'Ratna', 1, '2021-12-03 14:45:02', 53, 'Dashboards'),
(46, 'Hello', 'Prasad', 3, '2021-12-08 21:24:06', 68, 'Rules'),
(47, 'hello', 'Sai', 29, '2021-12-09 13:46:56', 95, 'hellooo');

-- --------------------------------------------------------

--
-- Table structure for table `Company`
--

CREATE TABLE `Company` (
  `Id` int(11) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `PrimaryContact` bigint(120) DEFAULT NULL,
  `Active` enum('Yes','No') DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Company`
--

INSERT INTO `Company` (`Id`, `Name`, `PrimaryContact`, `Active`) VALUES
(1, 'Absorb Software ', 9988765459, 'Yes'),
(2, 'Adthena', 9988765473, 'Yes'),
(3, 'Alfresco ', 9988765492, 'Yes'),
(4, 'Anaplan ', 9988765439, 'Yes'),
(5, 'Anodot ', 9988765468, 'Yes'),
(6, 'athenahealth ', 9988765444, 'Yes'),
(7, 'Attraqt', 9988765472, 'Yes'),
(8, 'Belong.co ', 9988765483, 'Yes'),
(9, 'Bizzabo ', 9988765462, 'Yes'),
(10, 'Bongo ', 9988765461, 'Yes'),
(11, 'Box', 9988765507, 'Yes'),
(12, 'Brandwatch', 9988765484, 'Yes'),
(13, 'Certain ', 9988765455, 'Yes'),
(14, 'Cisco', 9988765509, 'Yes'),
(15, 'Citrix ', 9988765442, 'Yes'),
(16, 'Civitas Learning ', 9988765491, 'Yes'),
(17, 'Communicator', 9988765478, 'Yes'),
(18, 'Concentra Analytics ', 9988765458, 'Yes'),
(19, 'Continuum ', 9988765489, 'Yes'),
(20, 'Dell Boomi ', 9988765476, 'Yes'),
(21, 'Delphix ', 9988765452, 'Yes'),
(22, 'Deltek ', 9988765447, 'Yes'),
(23, 'Demandforce ', 9988765499, 'Yes'),
(24, 'Dropbox ', 9988765434, 'Yes'),
(25, 'EcoOnline ', 9988765451, 'Yes'),
(26, 'Eventbrite', 9988765480, 'Yes'),
(27, 'Falcon.io ', 9988765490, 'Yes'),
(28, 'Flexera', 9988765465, 'Yes'),
(29, 'Glassdoor ', 9988765504, 'Yes'),
(30, 'GlobalWebIndex', 9988765479, 'Yes'),
(31, 'Goodlord', 9988765481, 'Yes'),
(32, 'Greenhouse ', 9988765438, 'Yes'),
(33, 'Higher Logic ', 9988765443, 'Yes'),
(34, 'Imprivata ', 9988765487, 'Yes'),
(35, 'Infobip ', 9988765467, 'Yes'),
(36, 'Insight Squared', 9988765486, 'Yes'),
(37, 'Intelex ', 9988765453, 'Yes'),
(38, 'Intelliflo', 9988765471, 'Yes'),
(39, 'IT Management Platform Provider ', 9988765450, 'Yes'),
(40, 'Jamf ', 9988765475, 'Yes'),
(41, 'Kobiton ', 9988765441, 'Yes'),
(42, 'Kount ', 9988765435, 'Yes'),
(43, 'LogMeIn', 9988765494, 'Yes'),
(44, 'Lotame', 9988765506, 'Yes'),
(45, 'Marketo', 9988765474, 'Yes'),
(46, 'Mission  ', 9988765436, 'Yes'),
(47, 'NICE inContact', 9988765500, 'Yes'),
(48, 'Omada Health ', 9988765446, 'Yes'),
(49, 'Onclusive ', 9988765457, 'Yes'),
(50, 'PEC Safety ', 9988765496, 'Yes'),
(51, 'Ping Identity ', 9988765454, 'Yes'),
(52, 'Proposify ', 9988765456, 'Yes'),
(53, 'Qubit', 9988765493, 'Yes'),
(54, 'Resultados Digitais ', 9988765488, 'Yes'),
(55, 'ReviewPro', 9988765470, 'Yes'),
(56, 'RiskIQ ', 9988765501, 'Yes'),
(57, 'SailPoint ', 9988765463, 'Yes'),
(58, 'Serenova ', 9988765466, 'Yes'),
(59, 'Serraview ', 9988765445, 'Yes'),
(60, 'ServiceTitan ', 9988765477, 'Yes'),
(61, 'Signavio', 9988765469, 'Yes'),
(62, 'Singular ', 9988765437, 'Yes'),
(63, 'Spredfast', 9988765495, 'Yes'),
(64, 'SPS Commerce', 9988765497, 'Yes'),
(65, 'SurveyMonkey ', 9988765503, 'Yes'),
(66, 'Tessian ', 9988765440, 'Yes'),
(67, 'TigerConnect ', 9988765498, 'Yes'),
(68, 'TruStar ', 9988765460, 'Yes'),
(69, 'Vidyo', 9988765485, 'Yes'),
(70, 'Vonage ', 9988765449, 'Yes'),
(71, 'WeWork ', 9988765448, 'Yes'),
(72, 'WordStream ', 9988765464, 'Yes'),
(73, 'Xactly', 9988765505, 'Yes'),
(74, 'Yext ', 9988765482, 'Yes'),
(75, 'CLOUDFLARE', NULL, 'Yes'),
(76, 'GODADDY', NULL, 'Yes'),
(77, 'AWS', NULL, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `DELLBOOMI_dashboards`
--

CREATE TABLE `DELLBOOMI_dashboards` (
  `asset_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reportCount` smallint(6) DEFAULT NULL,
  `reference_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_gsid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `has_global_filters` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `Is_Required` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DELLBOOMI_dashboards`
--

INSERT INTO `DELLBOOMI_dashboards` (`asset_name`, `asset_source`, `reportCount`, `reference_id`, `asset_gsid`, `asset_id`, `has_global_filters`, `created_by`, `modified_by`, `created_date`, `modified_date`, `Is_Required`, `comments`) VALUES
('num', 'SFDC', 0, 'a0I5e000000Ln3yEAC', '1I005OM2II871JBROGBF4ZFBD7B2RRI3CUTL', '4', 'false', 'RJEYS Demo User', 'RJEYS Demo User', '2021-05-14 09:53:00', '2021-05-14 09:53:00', 'Yes', ''),
('NNNN', 'SFDC', 0, 'a0I5e000000Ln43EAC', '1I005OM2II871JBROG9HKJ9SY0B1LW2R1O1W', '5', 'false', 'RJEYS Demo User', 'RJEYS Demo User', '2021-05-14 09:54:00', '2021-05-14 09:54:00', 'Yes', ''),
('Motors and Products dashboard', 'SFDC', 2, 'a0I5e000000LnYgEAK', '1I005OM2II871JBROG568PHUVOH9P4IYFFAI', '10', 'false', 'RJEYS Demo User', 'RJEYS Infinity Solutions', '2021-05-15 23:37:00', '2021-05-27 05:35:00', 'Yes', ''),
('Admin:Employee_DD', 'SFDC', 0, 'a0I5e000000MIYnEAO', '1I005OM2II871JBROGASFJJH6IK3FKOOZG50', '64', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-08 03:57:00', '2021-06-08 03:57:00', 'Yes', ''),
('Test_DB', 'SFDC', 5, 'a0I5e000000MXMJEA4', '1I005OM2II871JBROGS9TIGQC6BHDJX8002Q', '76', 'false', 'Deepika Nasika', 'RJEYS Infinity Solutions', '2021-06-18 06:29:00', '2021-07-06 11:44:00', 'Yes', ''),
('Custom color setting on Report', 'SFDC', 1, 'a0I5e000000MY4dEAG', '1I005OM2II871JBROGRO62YS3B2TQORL8NJW', '80', 'false', 'Rebecca Tripti', 'Rebecca Tripti', '2021-06-19 03:47:00', '2021-06-19 03:47:00', 'No', ''),
('Account rating', 'SFDC', 1, 'a0I5e000000MY5CEAW', '1I005OM2II871JBROGK4FULYM4EC8NEAKF87', '82', 'false', 'Rebecca Tripti', 'Rebecca Tripti', '2021-06-19 06:13:00', '2021-06-19 06:18:00', 'No', ''),
('Orders_B', 'SFDC', 2, 'a0I5e000000MhMeEAK', '1I005OM2II871JBROG67YCK0XHROEV1SZX00', '101', 'true', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 19:09:00', '2021-06-28 19:20:00', 'No', ''),
('Overall Rev', 'SFDC', 3, 'a0I5e000000MhNSEA0', '1I005OM2II871JBROGUR4GA2QCDO0HJD3734', '105', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 20:09:00', '2021-06-28 20:17:00', 'No', ''),
('R Brand Mobies', 'SFDC', 3, 'a0I5e000000MhRfEAK', '1I005OM2II871JBROGGSIH6ODKP7JE7JYLP8', '108', 'true', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 20:21:00', '2021-06-28 20:25:00', 'No', ''),
('Mobiles', 'SFDC', 3, 'a0I5e000000MhRuEAK', '1I005OM2II871JBROGU3Q8FOVZEDMM9PIPFU', '109', 'true', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 20:32:00', '2021-06-28 20:51:00', 'No', ''),
('Customer Details', 'SFDC', 0, 'a0I5e000000MhSOEA0', '1I005OM2II871JBROGY0YT6M6U4WE1UIRQUK', '113', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 22:34:00', '2021-06-28 22:34:00', 'No', ''),
('Electronical Producte Details', 'SFDC', 1, 'a0I5e000000MhUZEA0', '1I005OM2II871JBROG7PNVMB2XZM73O5XD3U', '126', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-29 03:27:00', '2021-06-29 03:33:00', 'No', ''),
('R_Sales', 'SFDC', 3, 'a0I5e000000MhS9EAK', '1I005OM2II871JBROG1NGJYAC0W4Y76ERE8Q', '111', 'true', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 21:37:00', '2021-07-01 01:43:00', 'No', ''),
('Rjeys_Bhavana1', 'SFDC', 2, 'a0I5e000000MueQEAS', '1I005OM2II871JBROG4CSE33F5SRAG4QHON3', '200', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-13 00:18:00', '2021-07-13 00:20:00', 'No', ''),
('calendar data', 'SFDC', 0, 'a0I5e000000MiRaEAK', '1I005OM2II871JBROG88HK75ZW2NK594CDW1', '134', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-29 21:11:00', '2021-06-29 21:11:00', 'No', ''),
('EMP Data', 'SFDC', 0, 'a0I5e000000MigEEAS', '1I005OM2II871JBROGI2H7VLBBERL0D0KT41', '138', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-30 03:33:00', '2021-06-30 03:33:00', 'No', ''),
('Product_Rjeys Table', 'SFDC', 0, 'a0I5e000000MijmEAC', '1I005OM2II871JBROGNV7IZR1RDQ2291LKOT', '142', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-30 07:39:00', '2021-06-30 07:39:00', 'No', ''),
('Product_Rjeys Graph', 'SFDC', 1, 'a0I5e000000MijrEAC', '1I005OM2II871JBROGB1G4CNBUND43RELT6A', '143', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-30 07:42:00', '2021-06-30 07:42:00', 'No', ''),
('RJEYS Emp Exp', 'SFDC', 0, 'a0I5e000000MjheEAC', '1I005OM2II871JBROG780WER3IPXDUMG5IQA', '145', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-30 22:13:00', '2021-06-30 22:13:00', 'No', ''),
('R Emp Dashboard', 'SFDC', 1, 'a0I5e000000Ml7nEAC', '1I005OM2II871JBROGNPML6QMM2JRO3JAG9L', '155', 'true', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-02 04:41:00', '2021-07-02 04:43:00', 'No', ''),
('Apple_Report_1', 'SFDC', 1, 'a0I5e000000MlfiEAC', '1I005OM2II871JBROG809AGSR55Q9MCY5TQZ', '166', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-03 04:51:00', '2021-07-03 04:52:00', 'No', ''),
('R Emp Test Dashboard', 'SFDC', 1, 'a0I5e000000MlUkEAK', '1I005OM2II871JBROGBG02A2F4F4YEY0RJPQ', '157', 'true', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-02 15:59:00', '2021-07-02 16:02:00', 'No', ''),
('Apple_Report_2', 'SFDC', 1, 'a0I5e000000MlfnEAC', '1I005OM2II871JBROGFJP3T2URR36OX6MYG4', '167', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-03 04:52:00', '2021-07-03 04:52:00', 'No', ''),
('Emp_Rjeys_S', 'SFDC', 1, 'a0I5e000000Mlg2EAC', '1I005OM2II871JBROG6FWQ1G0HWJ3BCIBP61', '169', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-03 07:05:00', '2021-07-03 07:06:00', 'No', ''),
('Dashboard_Test', 'SFDC', 1, 'a0I5e000000ModrEAC', '1I005OM2II871JBROG31P4AVZ0Q2RN92LUCK', '183', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-07 02:16:00', '2021-07-07 02:20:00', 'No', ''),
('RJEYS_OBJ_TEST_Dashboard', 'SFDC', 3, 'a0I5e000000MuctEAC', '1I005OM2II871JBROGAGM08LX26EROKJCPW8', '196', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-12 23:16:00', '2021-07-12 23:19:00', 'No', ''),
('sdufge', 'SFDC', 2, 'a0I5e000000MsFqEAK', '1I005OM2II871JBROGTQBCB9PTOCXFN9CEJN', '189', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-10 23:10:00', '2021-07-11 18:45:00', 'No', ''),
('Admin: New Customers', 'SFDC', 3, 'a0I5e000000MFMOEA4', '1I005OM2II871JBROG1Y721BC98WRPK4E8IM', '62', 'true', 'Rebecca Tripti', 'RJEYS Infinity Solutions', '2021-06-04 05:45:00', '2021-07-11 18:49:00', 'No', ''),
('Rjeys_Dashboard', 'SFDC', 1, 'a0I5e000000MucyEAC', '1I005OM2II871JBROGOB8QOWU32V1R1AZLJ2', '197', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-12 23:28:00', '2021-07-12 23:29:00', 'No', ''),
('rjyes_practice_dashboard', 'SFDC', 0, 'a0I5e000000MueVEAS', '1I005OM2II871JBROGN69F3SPTDRDU6XWMCO', '201', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-13 00:19:00', '2021-07-13 00:19:00', 'No', ''),
('CSM Apple', 'SFDC', 2, 'a0I5e000000MsFlEAK', '1I005OM2II871JBROGTYYTURA5SJ7T0O86I1', '188', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-10 22:24:00', '2021-07-21 21:49:00', 'No', ''),
('Rjeys_sindhu_1', 'SFDC', 2, 'a0I5e000000MuefEAC', '1I005OM2II871JBROGKKMJVEMC7D7IUMKXAE', '206', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-13 00:48:00', '2021-07-13 00:49:00', 'No', ''),
('obj', 'SFDC', 2, 'a0I5e000000Mv56EAC', '1I005OM2II871JBROGRPLXHG6J7ITZ1CXVFN', '210', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-13 01:37:00', '2021-07-13 01:37:00', 'No', ''),
('rjeys batch training dashboard1', 'SFDC', 1, 'a0I5e000000Mv5BEAS', '1I005OM2II871JBROGNTHONXDWETDGMTC7R1', '212', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-13 01:44:00', '2021-07-13 01:46:00', 'No', ''),
('R_Products Dashboard', 'SFDC', 1, 'a0I5e000000N8HsEAK', '1I005OM2II871JBROG94HWBAT923QXN69O2H', '238', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-16 21:45:00', '2021-07-17 05:10:00', 'No', ''),
('Practice -A', 'SFDC', 0, 'a0I5e000000N8cKEAS', '1I005OM2II871JBROGLZTKK1NBUBMTJY9QOC', '243', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-17 21:23:00', '2021-07-17 21:23:00', 'No', ''),
('dashboard', 'SFDC', 2, 'a0I5e000000N8cPEAS', '1I005OM2II871JBROGUFMSSWVG8F0MWIN9LN', '244', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-17 21:56:00', '2021-07-21 00:02:00', 'No', ''),
('Practice(J)', 'SFDC', 2, 'a0I5e000000MueaEAC', '1I005OM2II871JBROGNJ58HNEGR2QEAF7QZ6', '204', 'true', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-13 00:44:00', '2021-07-21 00:04:00', 'No', ''),
('Dashboard Builder', 'SFDC', 0, 'a0I5e000000NIrcEAG', '1I005OM2II871JBROGS9MYKC11887B8MG4W0', '280', 'false', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-21 22:17:00', '2021-07-21 22:17:00', 'No', '');

-- --------------------------------------------------------

--
-- Table structure for table `DELLBOOMI_data_designer`
--

CREATE TABLE `DELLBOOMI_data_designer` (
  `Design_Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Design_Description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Tasks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Objects_in_fetch_task` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Transform_Tasks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Merge_Tasks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Formula_Prep` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Created_Date` datetime DEFAULT NULL,
  `Design_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Is_Required` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DELLBOOMI_data_designer`
--

INSERT INTO `DELLBOOMI_data_designer` (`Design_Name`, `Design_Description`, `Tasks`, `Objects_in_fetch_task`, `Transform_Tasks`, `Merge_Tasks`, `Formula_Prep`, `Created_Date`, `Design_ID`, `Is_Required`, `comments`) VALUES
('Data Design-2', '', '3', 'SFDC::Account,MDA::survey_participant', '0', '1', '0', '2021-07-21 10:14:54', '0915bdfe-b465-4e80-9677-6fc0ac46c504', NULL, NULL),
('data designer tut', '', '3', 'SFDC::Account,SFDC::Contact', '0', '1', '0', '2021-07-14 08:38:23', '15946ffa-1690-4d2e-866f-fc568204bece', NULL, NULL),
('R_Emp DD', 'Data about Emp', '5', 'MDA::r_emp__gc,SFDC::Account,MDA::r_dep__gc', '0', '2', '0', '2021-07-02 23:04:11', '16623352-e51d-4c99-af74-079c8e461fd3', NULL, NULL),
('IBM DD', '', '3', 'SFDC::Contact,MDA::activity_timeline', '0', '1', '0', '2021-07-21 09:33:33', '254ee106-ba5f-4646-bc9e-4703127e63f4', NULL, NULL),
('Test DD Batch 2', '', '3', 'SFDC::Account,MDA::customer__gc', '0', '1', '0', '2021-07-14 07:17:02', '2724a088-e123-4a24-b6ee-f53fa4588d5b', NULL, NULL),
('test', '', '1', 'SFDC::Account', '0', '0', '0', '2021-06-25 14:11:39', '2b9bcb43-81f7-4fc1-94f6-88f9ccdfcf89', NULL, NULL),
('dd_Rjeys_SP', 'Building Custom Objects', '4', 'MDA::emp_bt__gc,MDA::dept_bt__gc', '1', '1', '0', '2021-07-01 09:55:05', '33951e87-5358-49d4-b3cc-dcd7b099df2d', NULL, NULL),
('R_sales 1', 'This is Test Data', '3', 'MDA::r_sales__gc,SFDC::Department_Details__c', '0', '1', '0', '2021-06-29 06:12:09', '351d753b-d060-48e3-a5f4-69b031c48fb7', NULL, NULL),
('IBM Data Design', '', '', '', '', '', '', '2021-07-21 09:53:34', '438c3cb3-15cc-43de-9b35-669dab692421', NULL, NULL),
('Relationship DD', '', '3', 'MDA::account_scorecard_history', '1', '0', '6', '2021-06-29 09:38:32', '4835b188-66fa-4027-b7b8-05f557e0bc1c', NULL, NULL),
('R_Products DD', 'Products design ', '6', 'SFDC::Account,MDA::r_products_object__gc,SFDC::Contact', '1', '2', '0', '2021-07-17 03:53:03', '49c19f48-46b1-4005-bc60-d033027e2aaf', NULL, NULL),
('New', '', '2', 'MDA::company,MDA::company_person', '0', '0', '0', '2021-05-25 11:35:44', '60932456-4be9-4f25-afbb-b2c7969b70c0', NULL, NULL),
('RJEYS - Int', 'This is the test DD', '7', 'MDA::company,SFDC::Account,SFDC::AccountHistory,MDA::gsuser', '0', '3', '0', '2021-06-29 06:04:06', '61b545e9-275b-4d81-a726-c6c500c96dc2', NULL, NULL),
('dd_demo_1', 'This is a demo data design.', '3', 'SFDC::Account,MDA::orders__gc', '0', '0', '0', '2021-06-29 07:39:35', '70001e8e-6d8d-43b5-8a1b-75c3c5b36809', NULL, NULL),
('test11', '', '2', 'SFDC::Account,MDA::amttable__gc', '0', '0', '0', '2021-07-19 02:14:37', '8a308a36-ffa4-4d5a-b85a-df1f2ba7141c', NULL, NULL),
('Apple_Design', '', '6', 'MDA::apple_customer__gc,MDA::apple_products__gc,MDA::apple_orders__gc', '0', '3', '0', '2021-07-03 10:34:14', 'aab68704-085d-4cbe-bb6a-95416ce8ca9a', NULL, NULL),
('DD', '', '', '', '', '', '', '2021-07-21 07:07:42', 'b3154941-5e01-416b-9932-f5786fd1b50e', NULL, NULL),
('Design 2', '', '3', 'SFDC::Account,MDA::company', '0', '1', '0', '2021-07-19 14:55:31', 'b5001a28-a100-4a23-8a66-70da9bf748d3', NULL, NULL),
('Data_Designer_Test_Bhavana', '', '1', 'SFDC::Account', '0', '0', '0', '2021-07-18 18:10:32', 'b5b117c9-4d67-4b41-9d58-92d1bde72345', NULL, NULL),
('emp final', '', '2', 'MDA::emp_final_data__gc', '1', '0', '0', '2021-05-27 14:12:30', 'b5caea27-a0e9-41ed-bf04-6dc5c41334c5', NULL, NULL),
('DD Test', '', '3', 'SFDC::Account,MDA::company', '0', '1', '0', '2021-07-21 13:49:40', 'bb235010-01cf-4b7e-b635-ec49ecc7944f', NULL, NULL),
('DD with data from multiple sources', '', '2', 'SFDC::Account,MDA::account_summary__gc', '0', '0', '0', '2021-06-29 13:15:38', 'c84361ba-d0b8-42c9-b97b-1fcfc1aa60f5', NULL, NULL),
('Test_Deepika_DD', '', '4', 'MDA::account_summary__gc,MDA::linkedin_account_details__gc', '1', '1', '1', '2021-05-24 15:55:05', 'cb44fa97-6d0f-4642-9aed-2f873ea43ac0', NULL, NULL),
('dd_demo_s', '', '3', 'SFDC::Account,MDA::customer__gc', '0', '1', '0', '2021-07-01 09:41:47', 'cbfebb95-f225-416c-9ed0-2b0a1d3fffea', NULL, NULL),
('dd_orders_cust_product_B', 'This is a sample data designer.', '5', 'MDA::orders__gc,MDA::customer__gc,MDA::products__gc', '0', '2', '0', '2021-06-29 08:43:47', 'cface95f-4eb0-46d4-81cb-721c023dfec0', NULL, NULL),
('Design DB', '', '3', 'SFDC::Account,SFDC::Contact', '0', '1', '0', '2021-07-19 14:38:17', 'e353e737-d475-4b64-90c8-84a1fbae862a', NULL, NULL),
('DD for ROBOTICS', '', '3', 'SFDC::JBCXM__GSRelationship__c,SFDC::Contact', '0', '1', '0', '2021-06-30 05:41:01', 'e742b77c-5649-46da-aa66-c1911b2a3a1a', NULL, NULL),
('DD Test1', '', '3', 'SFDC::College__c,MDA::department__gc', '1', '0', '0', '2021-07-21 14:00:17', 'e76c8639-85e8-4e98-8f3a-4b039aafb94e', NULL, NULL),
('dd_demo_12', '', '3', 'SFDC::Account,MDA::apple_int_rel_test__gc', '0', '1', '0', '2021-07-13 08:35:08', 'eea5f5ed-3c70-4017-945a-3a7c370df4b6', NULL, NULL),
('R_Products DDAA', '', '3', 'SFDC::Account,MDA::company', '0', '1', '0', '2021-07-22 01:34:34', 'f38d288b-5150-453f-b29f-38379c02bbb5', NULL, NULL),
('INT_1', '', '5', 'SFDC::Account,SFDC::Contact,MDA::apple_hw_sw_data__gc', '0', '2', '0', '2021-07-13 09:16:03', 'f8841ed0-7887-4ea7-8c11-2cc41a2775af', NULL, NULL),
('DD_Test2_Bhavana', '', '9', 'SFDC::Account,SFDC::Contact,SFDC::Opportunity', '0', '6', '0', '2021-07-18 19:01:20', 'f91375f4-db75-43d1-a147-cf998e97422d', NULL, NULL),
('to import', '', '1', 'MDA::transactions__gc', '0', '0', '0', '2021-05-21 06:44:13', 'fd3d226c-6c87-40cb-9e19-ce6c07abbb7c', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `DELLBOOMI_email_templates`
--

CREATE TABLE `DELLBOOMI_email_templates` (
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isPublished` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `builderVersion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tokens` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tokensCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variantCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variantNames` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fileName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `folder_detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `createdByName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifiedByName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maxUsageDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templateId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Is_Required` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DELLBOOMI_email_templates`
--

INSERT INTO `DELLBOOMI_email_templates` (`title`, `isPublished`, `builderVersion`, `tokens`, `tokensCount`, `active`, `variantCount`, `variantNames`, `fileName`, `images`, `folder_detail`, `createdDate`, `modifiedDate`, `createdByName`, `modifiedByName`, `maxUsageDate`, `templateId`, `Is_Required`, `comments`) VALUES
('emailtemarun', 'false', '2.0', 'Name', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-15 12:35:00', '2021-07-15 12:36:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '0bc1d635-9c5a-41d1-ac3a-4c7fea3d5dea', NULL, NULL),
('Rainy Season Discount', 'false', '2.0', '{}', '0', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-07 23:19:00', '2021-06-07 23:26:00', 'Rebecca Tripti', 'Rebecca Tripti', '2021-06-08 06:31', '1b61990c-143e-47d6-ada3-212a1366a435', NULL, NULL),
('Admin: RJEYS Reminder Email', 'false', '2.0', 'Candidate, Candidate', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-09 04:09:00', '2021-06-09 04:14:00', 'Deepika Nasika', 'Deepika Nasika', '2021-07-10 07:22', '27df0eca-01e5-4523-80a2-ea5aa580a2b9', NULL, NULL),
('BB_Email template', 'false', '2.0', 'name', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-14 06:25:00', '2021-07-14 06:27:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-15 04:04', '56eea2ea-8ed2-40c7-a97f-4d0fe982212b', NULL, NULL),
('Test email template JO', 'false', '2.0', 'Name, Sender', '2', 'Yes', '2', 'Default, german', '[]', '[]', '/All/Uncategorized', '2021-07-04 00:11:00', '2021-07-04 00:19:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-04 07:47', '575daf1b-b773-4918-a7a2-64763f1e46ea', NULL, NULL),
('practice', 'false', '2.0', 'name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-15 05:18:00', '2021-07-15 05:25:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-21 07:49', '74820cce-9606-42d4-8a2a-538ca783ecad', NULL, NULL),
('thankyou  myntra', 'false', '2.0', 'customer&nbsp; &nbsp;', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-10 04:35:00', '2021-06-10 06:27:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-10 14:39', '46593894-801a-4940-8847-69068976c480', NULL, NULL),
('Test Survey Emai', 'false', '2.0', 'null', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-09 07:24:00', '2021-06-09 07:25:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-04 00:32', 'd5634a7f-6fa8-4ac6-a61d-4cf8dc345a87', NULL, NULL),
('Deal for Forum food transit', 'false', '2.0', 'Place holder 1', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-09 02:46:00', '2021-06-09 02:48:00', 'Rebecca Tripti', 'Rebecca Tripti', '2021-06-09 09:56', '4c36dd21-d5e0-4092-b3a9-b8030f9872a9', NULL, NULL),
('survey email template for  csat tut', 'false', '2.0', 'name, null, null', '3', 'Yes', '2', 'Default, Telugu', '[]', '[report]', '', '2021-07-13 23:53:00', '2021-07-14 00:10:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-14 07:27', 'e7237f66-c055-4c5c-bef2-10743076f3aa', NULL, NULL),
('Avinash_Email Test Template', 'false', '2.0', 'Name', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-07 02:53:00', '2021-07-07 02:56:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-07 10:28', '81fd59bb-742d-47fe-b0e6-35208a09720e', NULL, NULL),
('bindu_nps survey', 'false', '2.0', 'name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-04 07:08:00', '2021-07-04 07:24:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-04 14:28', '76a3b9e3-47be-4b50-93bb-4921ba7dd157', NULL, NULL),
('csatarun', 'false', '2.0', ' Name', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-15 10:40:00', '2021-07-15 10:42:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'f04bcf70-26e5-4343-bbdb-fbacef50c8c1', NULL, NULL),
('email_template', 'false', '2.0', '', '', 'Yes', '1', 'email_template', '', '', '', '2021-07-15 22:13:00', '2021-07-15 22:13:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'de858fe6-dfcf-4f3e-85c1-83083f0c5b45', NULL, NULL),
('Mail the list of contacts in CSV', 'false', '2.0', 'Place holder 2', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-09 05:37:00', '2021-06-09 05:40:00', 'Rebecca Tripti', 'Rebecca Tripti', '2021-06-09 12:47', '47dd7579-4b91-49fb-874e-822489c037c4', NULL, NULL),
('Jo_Survey', 'false', '2.0', 'name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-14 08:27:00', '2021-07-14 08:35:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-14 16:00', '576b1f9c-76a2-4abd-8691-5e642d5d5b70', NULL, NULL),
('survey email template', 'false', '2.0', 'firstname', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-06-29 09:16:00', '2021-06-29 09:22:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-03 16:53', 'b7a9d90f-01bd-4f53-904a-e828af00984c', NULL, NULL),
('Apple_Email_Escalation_Template', 'false', '2.0', 'NAme, null, Name', '3', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-04 05:42:00', '2021-07-04 05:45:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-17 18:41', 'e93ab38b-7581-458a-a98f-19e99741ce01', NULL, NULL),
('NPS_Template_Sandhya', 'false', '2.0', 'Name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 07:11:00', '2021-07-14 07:14:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'e2087cc7-0f5e-458c-9848-a221a961a36b', NULL, NULL),
('Csat Template Tutorial', 'false', '2.0', 'name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 04:41:00', '2021-07-14 04:43:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-14 12:10', 'c3805669-cb2e-465f-a65a-40e3c8add58b', NULL, NULL),
('survey nps template_bt', 'false', '2.0', 'name, sender', '2', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-04 05:03:00', '2021-07-04 07:07:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'fc7487dc-d75f-4084-b18e-6817ef4974a8', NULL, NULL),
('Test', 'false', '2.0', 'Name', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 02:21:00', '2021-07-14 02:29:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-14 09:49', '83dc27e3-fb75-452c-90b4-9b99942395fd', NULL, NULL),
('Test RJEYS welcome email', 'false', '2.0', 'Candidate, Candidate', '2', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-06-07 10:16:00', '2021-06-07 10:19:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-14 10:22', '22760e94-2445-4379-b9d0-430ed4c96ad0', NULL, NULL),
('jo_template offer', 'false', '2.0', 'name', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-07 02:53:00', '2021-07-07 02:56:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'c066cd8b-3471-4c2d-b5d5-b2a236784a5f', NULL, NULL),
('survey email for vaccine', 'false', '2.0', 'name, colony, city, null', '4', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-10 01:42:00', '2021-06-10 07:30:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-10 14:56', 'ed887d0b-2a82-4fbf-80ff-f41d5121b5af', NULL, NULL),
('Test_Email_Survey', 'false', '2.0', 'Place holder 1, NAme, null, null, null', '5', 'Yes', '1', 'Default', '[]', '[report]', '', '2021-07-12 02:44:00', '2021-07-12 03:59:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-12 10:39', 'ff420311-fa35-4337-8bc3-1cf17d677236', NULL, NULL),
('meeting', 'false', '2.0', 'name', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-14 22:20:00', '2021-07-14 22:23:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '68a19cc0-3c9e-4f86-b187-b4afbeeebb1c', NULL, NULL),
('Survey Email', 'false', '2.0', 'null', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-04 06:21:00', '2021-07-04 06:22:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-04 14:47', '9715f137-1b16-41a6-82ed-695d2f187a23', NULL, NULL),
('email_template', 'false', '2.0', 'name', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 08:53:00', '2021-07-14 08:57:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-21 18:41', '839f0a09-81bd-48a1-a224-4c4e7523e905', NULL, NULL),
('Apple_CSAT', 'false', '2.0', 'Team, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-04 07:41:00', '2021-07-04 07:42:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'dbb120ce-2e0b-48cf-80e4-629aa8a2eba6', NULL, NULL),
('title', 'false', '2.0', '', '', 'No', '1', 'Default', '', '', '/All/Uncategorized', '2021-07-17 12:25:00', '2021-07-17 12:25:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'd56ae5ba-25a6-47ba-8001-dad6d5458a93', NULL, NULL),
('Email_Chain_Sandhya', 'false', '2.0', 'Name', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 07:15:00', '2021-07-14 07:17:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-14 14:43', '3717e98b-6efa-4642-a721-7fa22388462f', NULL, NULL),
('Test2', 'false', '2.0', 'null, user', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-29 01:28:00', '2021-06-29 01:37:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-29 09:05', '142c154f-ad16-4556-b3ad-d5e858a3fca2', NULL, NULL),
('csatavinash', 'false', '2.0', 'name', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-16 11:31:00', '2021-07-16 11:31:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '7be3df59-9493-4078-a300-d0eae9a96323', NULL, NULL),
('NPS ', 'false', '2.0', 'Name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-16 08:56:00', '2021-07-16 08:59:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-21 07:33', 'c690e5cd-fe50-4ca0-b683-2f2da0c1e3e0', NULL, NULL),
('airtel', 'false', '2.0', '', '', 'No', '1', 'Default', '', '', '', '2021-07-14 10:32:00', '2021-07-14 10:32:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '021f330e-3efd-481a-8e6b-2b982f2382e3', NULL, NULL),
('CSAT CIT', 'false', '2.0', 'name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 23:39:00', '2021-07-14 23:44:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-15 08:13', '31b4c8e3-f500-4b70-a940-82ebca27fbc4', NULL, NULL),
('omada genric', 'false', '2.0', 'null', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 23:19:00', '2021-07-14 23:20:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '7db87e04-003c-4255-aae7-26238786fa30', NULL, NULL),
('template jo genric ', 'false', '2.0', 'name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-15 02:34:00', '2021-07-15 22:06:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '7b0dd8c0-8e31-43d3-b69c-0cc6a8c7ddc9', NULL, NULL),
('Kia_First_Service', 'false', '2.0', 'Place holder 1', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-08 23:21:00', '2021-06-08 23:25:00', 'Rebecca Tripti', 'Rebecca Tripti', '2021-06-09 06:49', 'fade5724-c48a-4953-b846-d7ec0b2431bb', NULL, NULL),
('Practice-A remainder Email', 'false', '2.0', 'name', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-17 21:45:00', '2021-07-17 21:46:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '0528d60c-8c41-41c6-bf11-1e09918fe4fc', NULL, NULL),
('RJEYS Project Plan Template', 'false', '2.0', 'user', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-10 00:21:00', '2021-06-10 00:24:00', 'Deepika Nasika', 'Deepika Nasika', '2021-07-10 12:56', '3b57dd7d-8b98-4a80-982d-3d34b3c709c1', NULL, NULL),
('omada nps', 'false', '2.0', ' NAME, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 22:56:00', '2021-07-14 22:56:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'f815da7c-24e1-4a35-ab98-f4d8b440a386', NULL, NULL),
('Admin: RJEYS Induction Headsup Email', 'false', '2.0', 'Candidate, Candiate', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-09 04:02:00', '2021-06-09 04:26:00', 'Deepika Nasika', 'Deepika Nasika', '2021-07-21 07:09', '9bc44410-b8d7-481c-b5f4-55cca728fc98', NULL, NULL),
('deltek_generic', 'false', '2.0', ' name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-15 00:43:00', '2021-07-15 04:53:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-15 07:55', '3d19cac5-d3cf-4364-9b31-cd4e04d65c9d', NULL, NULL),
('NPS_TEMPLATE_BHAVANA', 'false', '2.0', '', '', 'No', '1', 'Default', '', '', '', '2021-07-16 11:39:00', '2021-07-16 11:39:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '4f65ac52-000a-4a19-a972-d8d8af1f9822', NULL, NULL),
('csatarun', 'false', '2.0', '', '', 'No', '1', 'Default', '', '', '', '2021-07-15 10:38:00', '2021-07-15 10:38:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'c270f7ec-7826-4c01-b9c5-a3bca4894a40', NULL, NULL),
('remainder mail ', 'false', '2.0', 'name, colony, city', '3', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-09 01:35:00', '2021-06-10 07:29:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-10 16:57', '6c493091-72e9-492b-8ad2-f4d7516d6670', NULL, NULL),
('Copy of Test_Email_Survey', 'false', '2.0', 'Place holder 1, NAme, null, null', '4', 'Yes', '1', 'Default', '[]', '[report]', '', '2021-07-12 02:44:00', '2021-07-12 03:08:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '2d4cebee-5191-4fac-a5ba-65f4b553f5be', NULL, NULL),
('Apple_Email Template', 'false', '2.0', 'Place holder 1', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-04 04:49:00', '2021-07-04 05:00:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'db3686ab-9d8c-4aae-a7af-4c3e091f4929', NULL, NULL),
('Airtalk Welcome', 'false', '2.0', 'Place holder 1', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-09 03:46:00', '2021-06-09 03:47:00', 'Rebecca Tripti', 'Rebecca Tripti', '', 'd33f6a25-efe9-4a5b-aaee-3c6128f0e1a7', NULL, NULL),
('KIA_Feedback', 'false', '2.0', 'Place holder 1', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-08 23:40:00', '2021-06-08 23:46:00', 'Rebecca Tripti', 'Rebecca Tripti', '2021-06-09 06:51', '1369b3c0-da98-4e6c-b4e0-b91104246642', NULL, NULL),
('CSAT_Template_Sandhya', 'false', '2.0', 'Name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 07:18:00', '2021-07-14 07:20:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-15 15:57', '5eb81d57-e6d0-4e08-9ca2-deaa1d103692', NULL, NULL),
('omada health', 'false', '2.0', '{}', '0', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 19:08:00', '2021-07-14 19:12:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-15 02:41', 'ea8534b2-4e50-42e2-8188-54b80e90e76f', NULL, NULL),
(' upgrade prime account', 'false', '2.0', 'subscriber , subscriber ', '2', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-06-07 22:22:00', '2021-06-10 05:18:00', 'Rebecca Tripti', 'Rebecca Tripti', '2021-06-08 07:13', 'a37daf68-6f6e-4a1e-91db-cbfadf92cc2c', NULL, NULL),
('Airtalk : Heads Up to disable', 'false', '2.0', '{}', '0', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-09 03:57:00', '2021-06-09 03:58:00', 'Rebecca Tripti', 'Rebecca Tripti', '2021-06-10 11:00', '790735a5-037e-4bf6-a427-e6e5fe671f78', NULL, NULL),
('Apple_CSAT_Survey_Template', 'false', '2.0', 'Name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-04 11:09:00', '2021-07-04 11:16:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-14 11:01', '08cac3f0-cdf8-4ff3-9afd-c04d5843449b', NULL, NULL),
('Test RJEYS Outreach', 'false', '2.0', 'null', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-12 09:18:00', '2021-07-12 09:19:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'e5b79c17-fb02-42fc-94b2-b33f8b59e7a9', NULL, NULL),
('remaindermail zomato', 'false', '2.0', 'customer&nbsp; ', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-10 06:20:00', '2021-06-10 06:34:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-11 13:48', '40b5780c-9210-4ffe-9522-3c54ec34c410', NULL, NULL),
('CSat email template', 'false', '2.0', '', '', 'No', '1', 'Default', '', '', '', '2021-07-13 23:24:00', '2021-07-13 23:24:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'f8950358-98ce-43d4-bc7e-d3963801ce1d', NULL, NULL),
('R_Airpods Email Welcome Template', 'false', '2.0', 'Name', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-10 06:05:00', '2021-07-10 06:07:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-10 13:52', 'dbfda6cf-414b-4ad2-8fc9-c0421c97cf0f', NULL, NULL),
('invite  mail ', 'false', '2.0', 'student', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-06-09 00:44:00', '2021-06-09 01:41:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-09 10:42', 'bfcee3f3-a328-4e73-9c0f-6da560581d5c', NULL, NULL),
('thanks mail zomato', 'false', '2.0', 'customer&nbsp; ', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-10 06:25:00', '2021-06-10 06:34:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-29 09:20', '83e3b681-e600-45e1-b1c9-e15a1d43784a', NULL, NULL),
('Apple_Email_Temp', 'false', '2.0', 'Name', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-04 04:50:00', '2021-07-04 05:15:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-12 09:16', 'b0eeb18f-6f32-4938-b92f-279cb1b98183', NULL, NULL),
('Airtalk: Warning to disconnect', 'false', '2.0', '{}', '0', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-09 03:54:00', '2021-06-09 03:56:00', 'Rebecca Tripti', 'Rebecca Tripti', '2021-06-11 11:02', '03994653-8004-4b0f-9042-043c32998d25', NULL, NULL),
('RJEYS', 'false', '2.0', 'name&nbsp;', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-15 23:18:00', '2021-07-15 23:43:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-16 11:09', 'bc0c436b-0edc-40de-91be-165881ca798b', NULL, NULL),
('Practice-A Survey Email', 'false', '2.0', ' name&nbsp;, null', '2', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-17 21:43:00', '2021-07-17 22:48:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-18 05:56', '51428b29-da69-47a0-b978-e35e19ccda74', NULL, NULL),
('meeting', 'false', '2.0', ' name', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 22:28:00', '2021-07-14 22:30:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-20 23:06', '66d4a770-f5ce-43e9-b118-55b1bddb7ada', NULL, NULL),
('Test email template JO tutorial', 'false', '2.0', 'name', '1', 'Yes', '2', 'Default, Telugu', '[]', '[]', '', '2021-07-14 02:00:00', '2021-07-14 02:12:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-14 10:53', '21f0ba37-53d3-486b-9944-6ff75341ea52', NULL, NULL),
('kitkat _email chain', 'false', '2.0', 'NAME', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-16 19:25:00', '2021-07-16 19:30:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'd943d68f-7fc3-4629-9f36-8497b3e8f715', NULL, NULL),
('Test Outreaches Apple', 'false', '2.0', 'Name, null, null', '3', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-12 09:51:00', '2021-07-12 10:03:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '08e92179-8a0e-4e9c-a12f-1899f5e9651f', NULL, NULL),
('practice', 'false', '2.0', '', '', 'No', '1', 'Default', '', '', '', '2021-07-15 23:27:00', '2021-07-15 23:27:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'ba101dff-d6a9-4a56-939e-adc2247a139b', NULL, NULL),
('Manager Feedback', 'false', '2.0', 'Employee, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-08 03:01:00', '2021-06-08 05:38:00', 'Rebecca Tripti', 'Rebecca Tripti', '2021-06-08 10:07', '59086394-08c0-4c5c-a1c1-8f5623c17c59', NULL, NULL),
('Apple Business Expansion', 'false', '2.0', 'Place holder 1', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-10 00:28:00', '2021-07-10 00:30:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-10 07:38', '36ea621c-5eb2-40a9-98a9-96ec9a1e987f', NULL, NULL),
('Inline survey template', 'false', '2.0', 'null', '1', 'Yes', '1', 'Default', '[Report Attachment 1, Associate_Admin.pdf]', '[]', '/All/Uncategorized', '2021-07-10 12:52:00', '2021-07-11 07:36:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-10 20:07', 'ca1ae951-0ed4-4017-8f08-82d9af0c4ee9', NULL, NULL),
('Email template_1', 'false', '2.0', 'name', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-14 07:18:00', '2021-07-14 07:19:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-14 18:03', 'db42de29-8f3e-495e-90af-2d08d311ba13', NULL, NULL),
('Apple_Email Template', 'false', '2.0', 'Place holder 1', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-04 05:19:00', '2021-07-04 05:19:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-05 12:42', '32da1f44-16b7-47f7-8d47-4edb7c6a1253', NULL, NULL),
('Email_Template', 'false', '2.0', 'Name', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-14 03:05:00', '2021-07-14 03:07:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'aa33a547-0553-4739-ab61-f7b8ca4da242', NULL, NULL),
('OMADA CSAT SURVEY', 'false', '2.0', ' NAME, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 22:25:00', '2021-07-14 22:25:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-17 15:01', 'a73e214f-d11f-46f0-94ea-3c270766742c', NULL, NULL),
('Welcome offer', 'false', '2.0', 'Name&nbsp;', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 12:29:00', '2021-07-14 12:31:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'f94faefa-1504-43e4-9c58-153fbec3b91f', NULL, NULL),
('gainsight team', 'false', '2.0', ' NAME, null, null', '3', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 03:10:00', '2021-07-14 03:50:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '29e0a892-e9fd-4910-be0c-1d4298329a7d', NULL, NULL),
('test final template_int', 'false', '2.0', 'fullname, null', '2', 'Yes', '2', 'Default, test', '[]', '[]', '', '2021-07-12 01:31:00', '2021-07-12 02:26:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-12 08:53', '3e6749b4-8af6-454b-acd7-d4d6c3409d55', NULL, NULL),
('Admin: RJEYS Welcome mail', 'false', '2.0', 'user, company, user', '3', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-08 01:31:00', '2021-06-09 04:07:00', 'Deepika Nasika', 'Deepika Nasika', '2021-07-13 13:00', 'c442695a-2b55-4834-b624-4f944f03bae6', NULL, NULL),
('Template for JO Sample', 'false', '2.0', 'fullname, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-12 02:58:00', '2021-07-12 03:07:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-13 13:42', '197e33f5-b7af-4709-908a-3381089e6ced', NULL, NULL),
('Jo_Template_Test', 'false', '2.0', 'Name', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-07 02:25:00', '2021-07-07 02:27:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-21 07:31', 'd9b48e68-c68a-4500-b671-21ae67559612', NULL, NULL),
('Reminder', 'false', '2.0', 'Team', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-04 06:33:00', '2021-07-04 06:34:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-12 14:03', '256b1feb-9d6d-41c5-9d3b-e841f1686a49', NULL, NULL),
('NPS_R Survey', 'false', '2.0', 'Name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-16 09:35:00', '2021-07-16 09:37:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-16 18:00', '09fce520-c7f9-4a2d-819a-9980e3b8ae2b', NULL, NULL),
('Email_Template4', 'false', '2.0', 'name', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-17 10:54:00', '2021-07-17 11:28:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-17 18:30', '886f7169-de11-429b-b65b-cf88844fe476', NULL, NULL),
('test email template_tutorial', 'false', '2.0', '', '', 'No', '1', 'Default', '', '', '', '2021-07-14 01:57:00', '2021-07-14 01:57:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '32900900-952d-408a-ab56-1a47055dd778', NULL, NULL),
('Apple_Email Escalations', 'false', '2.0', 'Place holder 1, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-04 05:58:00', '2021-07-04 05:59:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-14 07:28', '947111bb-2390-45ef-9199-4065dd65291f', NULL, NULL),
('Admin : RJEYS Escalation Email', 'false', '2.0', 'customer, null, null', '3', 'Yes', '2', 'Default, Escalation email to particular CSMs', '[]', '[report]', '', '2021-06-09 04:15:00', '2021-06-26 05:46:00', 'Deepika Nasika', 'RJEYS Infinity Solutions', '', 'c753a6bb-fed0-46c3-9a94-4d9bc47f3850', NULL, NULL),
('Email_Generic Template', 'false', '2.0', '', '', 'No', '1', 'Default', '', '', '', '2021-07-04 06:22:00', '2021-07-04 06:22:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'c41201bd-6297-4801-b921-70a400fffc1b', NULL, NULL),
('Email pl_', 'false', '2.0', ' name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 21:57:00', '2021-07-14 21:58:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-15 05:10', '3f9e7b68-3b6a-4453-ac77-7de08bd880ef', NULL, NULL),
('CSAT_Test_Bindhu', 'false', '2.0', 'Name, null, Name', '3', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-16 03:16:00', '2021-07-16 03:41:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-21 08:02', '02c8f9be-bc27-423c-a13e-c8a10cf4ee3e', NULL, NULL),
('Generic_Survey_Sandhya', 'false', '2.0', 'Name, null', '2', 'Yes', '1', 'Default', '[]', '[report]', '', '2021-07-14 07:20:00', '2021-07-14 07:24:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'bfbe662a-b647-45e7-acaa-675a4db4576c', NULL, NULL),
('send_resume', 'false', '2.0', 'candidate', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-06-09 01:58:00', '2021-06-09 02:13:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-09 22:43', 'e137e8ee-55b5-46d3-bc9e-d014887db4cb', NULL, NULL),
('Apple_NPS', 'false', '2.0', 'name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-04 05:22:00', '2021-07-04 05:31:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-10 14:02', 'f2e6698f-2baa-42c1-a410-dbb10d8f720d', NULL, NULL),
('Avinash Esca', 'false', '2.0', 'Name', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-07 04:21:00', '2021-07-07 04:23:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '537318cb-0002-4a20-b0db-084563b6095e', NULL, NULL),
('scheduled time', 'false', '2.0', 'candidate ', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-06-09 02:17:00', '2021-06-09 02:27:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '5572e0ec-74b8-4010-a2b2-0568ed4954e4', NULL, NULL),
('Apple_Email_Reminder_Template', 'false', '2.0', 'name, Name', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-04 05:35:00', '2021-07-04 05:39:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-14 07:29', 'a4585978-ec27-4052-9b16-61b51ce338cd', NULL, NULL),
('Test template', 'false', '2.0', '{}', '0', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-29 01:25:00', '2021-06-29 01:26:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-21 07:47', '0e5f0848-9e43-47d4-9dca-630f4732fdd8', NULL, NULL),
('test text email template_bt', 'false', '2.0', 'firstname, csm', '2', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-04 04:52:00', '2021-07-04 04:54:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '75c10477-df75-433b-95f1-5bac6ef7d554', NULL, NULL),
('Test Survey Template', 'false', '2.0', 'FirstName, null', '2', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-04 03:01:00', '2021-07-04 03:03:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'ef448605-08e7-4b93-b88f-2524c61e9833', NULL, NULL),
('practice', 'false', '2.0', 'name', '1', 'Yes', '2', 'Default, practice1', '[]', '[]', '', '2021-07-15 22:02:00', '2021-07-15 22:16:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-16 05:18', '943711cc-942f-467e-a703-7272fa47ead5', NULL, NULL),
('citrix etemplate ', 'false', '2.0', 'name, name', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 22:27:00', '2021-07-14 22:30:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-15 09:27', '564b2c5b-de1e-422d-ae17-315ab422e813', NULL, NULL),
('Admin: RJEYS Thank You mail', 'false', '2.0', 'Candidate, Candidate', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-09 04:21:00', '2021-06-09 04:24:00', 'Deepika Nasika', 'Deepika Nasika', '2021-07-10 07:37', '0a2dd381-8830-4faa-90d7-a0dfec8a83a2', NULL, NULL),
('Kia_Second_Service', 'false', '2.0', 'Customer', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-08 23:33:00', '2021-06-08 23:34:00', 'Rebecca Tripti', 'Rebecca Tripti', '2021-06-09 06:50', '0e6f1f3e-eb01-4671-880e-4e0081625d3c', NULL, NULL),
('deltek_csat_test', 'false', '2.0', 'name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 23:12:00', '2021-07-15 00:04:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '2445aed7-9078-4878-a4cd-aec52f21b5dc', NULL, NULL),
('deltek_pl_test', 'false', '2.0', 'name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-15 00:18:00', '2021-07-15 00:26:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-15 07:39', 'f2cc257f-7fe9-4cb7-b6ae-ae73e89fb7bd', NULL, NULL),
('B_Email template', 'false', '2.0', 'name', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-14 03:10:00', '2021-07-14 03:15:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-14 10:48', 'da251bd5-c47c-4251-94f7-cdd36ef17ef5', NULL, NULL),
('Test_temprjeys', 'false', '2.0', 'Team', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 03:08:00', '2021-07-14 03:16:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'ecd1fe3c-c647-4e01-aae2-52bb4131a218', NULL, NULL),
('DisneyNetflix_Welcome', 'false', '2.0', 'Client', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-08 23:06:00', '2021-07-03 07:47:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-03 16:52', 'f8ade044-b890-45bb-976d-e62970456f5c', NULL, NULL),
('NPSavinash', 'false', '2.0', 'Name', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-16 10:48:00', '2021-07-16 10:50:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-17 15:00', '11084f0c-17ce-4d7e-b926-844f6c6904af', NULL, NULL),
('testemail_template', 'false', '2.0', '{}', '0', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-15 04:30:00', '2021-07-15 04:30:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'b8e73273-f0d9-4399-b34f-794194f85a76', NULL, NULL),
('Email_Generic Template', 'false', '2.0', 'Team', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-04 06:19:00', '2021-07-04 06:19:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-15 10:00', 'b9fb9b82-a7c8-4668-84c2-225275a98a27', NULL, NULL),
('CSAT template', 'false', '2.0', 'name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-14 09:33:00', '2021-07-14 09:35:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-14 17:05', 'd3aed761-de63-453f-a30b-0e20e3829212', NULL, NULL),
('Emailchainavinash', 'false', '2.0', 'Sir,', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-16 07:49:00', '2021-07-16 07:51:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-16 15:02', '41857832-cd3b-4e5e-82d4-dd529c8e20a5', NULL, NULL),
('Generictemplate 2', 'false', '2.0', 'team', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-16 10:34:00', '2021-07-16 20:28:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '229e145f-8a68-477f-b477-a8f8395d1749', NULL, NULL),
('Practice -A head up email', 'false', '2.0', 'name', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-17 21:41:00', '2021-07-17 21:42:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-18 04:58', '1248648f-739b-4472-86c2-93d5f02f9a15', NULL, NULL),
('Creamstone survey', 'false', '2.0', 'Client, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-17 23:06:00', '2021-06-17 23:07:00', 'Rebecca Tripti', 'Rebecca Tripti', '2021-06-18 06:22', 'f48f1441-2931-4fc8-8374-75318847ddab', NULL, NULL),
('survey mail for zomato', 'false', '2.0', 'customer&nbsp; , null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-10 05:51:00', '2021-06-10 06:10:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-10 13:47', '66c2c3e0-153b-4ece-99a2-ded56ca99e09', NULL, NULL),
('Practice-A Escalation Email', 'false', '2.0', 'name', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-17 21:47:00', '2021-07-17 21:48:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '1d993c14-535f-4a1b-8ede-4147f404d02a', NULL, NULL),
('Welcome to User Conference', 'false', '2.0', 'user, null, user', '3', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-06-07 23:53:00', '2021-06-10 01:39:00', 'Deepika Nasika', 'Deepika Nasika', '2021-06-11 08:54', '6234ad1d-980f-4d97-9af8-c93da789a0cc', NULL, NULL),
('survey for callcenter', 'false', '2.0', 'customer, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-10 04:11:00', '2021-06-10 05:04:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-10 12:12', '0f2da9c2-4708-403a-b46e-033b86a49291', NULL, NULL),
('remainder2', 'false', '2.0', 'candidate', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-06-09 02:09:00', '2021-06-09 02:16:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'aa751681-5f85-497a-bf4b-dd233549b208', NULL, NULL),
('RJEYS Induction Template', 'false', '2.0', 'user', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-10 00:03:00', '2021-06-10 00:07:00', 'Deepika Nasika', 'Deepika Nasika', '2021-06-12 07:36', '27328604-5a88-4a57-b935-f0dbf8c8a36a', NULL, NULL),
('headup mail', 'false', '2.0', 'name, colony&nbsp; &nbsp;&nbsp;, city', '3', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-09 05:10:00', '2021-06-10 07:29:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-10 14:36', 'cc75c3fb-dd19-43ec-b394-0ddc76ebe12f', NULL, NULL),
('NPS Template', 'false', '2.0', 'name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 10:25:00', '2021-07-14 10:48:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-20 18:35', '7f408d05-60a0-430c-988f-c951ef5abd29', NULL, NULL),
('Test_Email Template', 'false', '2.0', '', '', 'No', '1', 'Default', '', '', '', '2021-07-14 02:20:00', '2021-07-14 02:20:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '8eb4df36-0b35-4966-b2b1-87937f8db842', NULL, NULL),
('Survey on ROBOTICS ipad2', 'false', '2.0', 'Place holder 1, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-29 02:23:00', '2021-06-29 02:30:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-29 09:48', '1245a12d-6e05-4a3e-a7c1-19253d86f668', NULL, NULL),
('email_template', 'false', '2.0', 'Place holder 1', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-14 03:05:00', '2021-07-14 03:24:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-14 13:15', '2cedef56-c340-40bf-96a8-c49c15caeaa2', NULL, NULL),
('mail templates', 'false', '2.0', 'Place holder 2', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 03:10:00', '2021-07-14 03:15:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-14 10:52', '80ff8bfc-1b62-4583-972c-09fdec28436a', NULL, NULL),
('Tem nam', 'false', '2.0', '', '', 'No', '1', 'Default', '', '', '/All/Uncategorized', '2021-07-15 06:15:00', '2021-07-15 06:15:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '8c70fa54-3144-4dd3-88b1-9ef9c27e071b', NULL, NULL),
('Apple_Email_Text_Bindu', 'false', '2.0', 'Name', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-04 06:44:00', '2021-07-04 06:45:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-14 06:23', 'f032f0aa-5937-42c3-83b6-f4b8cac2e6f4', NULL, NULL),
('CSAT SURVEY_SINDHU', 'false', '2.0', 'Place holder 2, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 04:41:00', '2021-07-14 04:46:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '10fd31d7-152f-4aec-8bfd-ae0e69790192', NULL, NULL),
('bindu_csat_template', 'false', '2.0', 'name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-04 07:43:00', '2021-07-04 07:44:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '792971bc-8dfe-4d02-b83b-158ad5816824', NULL, NULL),
('rjyes_test_emailtemplate_jo', 'false', '2.0', 'name', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-14 01:59:00', '2021-07-14 02:05:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'aa2c89a0-1e5a-479c-a814-48b864a3338f', NULL, NULL),
('NPS_survey_test', 'false', '2.0', 'null', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 21:35:00', '2021-07-14 21:51:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'fea0508a-c731-4257-b328-a8a8c25aec13', NULL, NULL),
('Netflix Survey', 'false', '2.0', 'Client, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-17 23:06:00', '2021-07-03 09:10:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '34dd4745-5e30-4b38-a4fb-1359fa568533', NULL, NULL),
('csat_practice', 'false', '2.0', 'name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-16 03:32:00', '2021-07-16 03:34:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-16 10:58', '843bfb52-0d6a-4464-ae1d-75214e1793a2', NULL, NULL),
('page out', 'false', '2.0', 'name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-15 08:39:00', '2021-07-15 08:47:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'dabae748-b1f0-4ea2-820d-990411313c22', NULL, NULL),
(' Renewal Deal', 'false', '2.0', 'Customer', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-06-08 02:16:00', '2021-06-08 02:20:00', 'Deepika Nasika', 'Deepika Nasika', '2021-06-09 06:17', 'b0664afe-842e-4074-a3eb-3fcc1dd6f2ac', NULL, NULL),
('emailtemplate1', 'false', '2.0', 'name', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 05:28:00', '2021-07-14 05:30:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '542bca62-2a0d-4590-891f-2940fb2ac084', NULL, NULL),
('Text email_bt', 'false', '2.0', 'name, sender', '2', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-04 04:26:00', '2021-07-04 04:28:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'aee57550-510a-430d-8e67-686af9857672', NULL, NULL),
('csatsurveyarun', 'false', '2.0', 'Name', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-15 00:28:00', '2021-07-15 00:33:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '6d005c06-66d2-43a7-a6a0-beec8b960c7c', NULL, NULL),
('Shalini Test Template', 'false', '2.0', '{}', '0', 'Yes', '1', 'Default', '[]', '[image/png]', '/All/Uncategorized', '2021-06-28 07:07:00', '2021-06-28 07:08:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '1c42e9d9-8525-45ed-8d44-6a9d57c2c860', NULL, NULL),
('etemplate', 'false', '2.0', 'name, Name', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-16 03:34:00', '2021-07-16 03:40:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'e661bc90-6fe0-4076-ab65-03536f4dca7f', NULL, NULL),
('Welcome Email', 'false', '2.0', '', '', 'No', '1', 'Default', '', '', '/All/Uncategorized', '2021-05-31 04:10:00', '2021-05-31 04:10:00', 'Deepika Nasika', 'Deepika Nasika', '', '24d5be9d-3d2f-4624-b9a5-fa467d20e3e7', NULL, NULL),
('CSAT  Template 2', 'false', '2.0', 'name&nbsp;, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 23:38:00', '2021-07-15 06:08:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-15 19:30', 'c8748c73-db3d-4b4b-9194-edda0b64a29a', NULL, NULL),
('escalation template', 'false', '2.0', 'colony , city&nbsp;', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-09 04:50:00', '2021-06-10 07:28:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-09 13:00', '6c9da31a-33b5-43bd-9e46-b2928dc4f0fe', NULL, NULL),
('Test_Email A', 'false', '2.0', 'Place holder 1', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-04 06:04:00', '2021-07-04 06:05:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-04 13:12', '1c927614-012f-443a-8301-fa67bbb4d53d', NULL, NULL),
('AVINASH NPS Email', 'false', '2.0', 'Name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-07 04:04:00', '2021-07-07 04:08:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-07 11:26', '5eae549e-d450-4780-a47a-efc3efcbc146', NULL, NULL),
('Kia_Welcome', 'false', '2.0', 'Client', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-08 23:06:00', '2021-06-08 23:12:00', 'Rebecca Tripti', 'Rebecca Tripti', '2021-07-19 10:15', '8b90870b-ee98-41dd-a11a-411dbd61ccd1', NULL, NULL),
('Generic Template', 'false', '2.0', 'name, null', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 20:44:00', '2021-07-14 20:53:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-15 10:02', '50d5091f-3c87-4226-b87a-5dc5dd18ad80', NULL, NULL),
('kitkat heads up mail', 'false', '2.0', '{}', '0', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-16 19:31:00', '2021-07-16 19:33:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '69f98c9d-557f-4efb-b1b6-f66c157c2177', NULL, NULL),
('wjiooffere', 'false', '2.0', 'Name', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-07 06:02:00', '2021-07-07 06:04:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '7940864c-b7c9-4cb3-a0e8-827bd6397e93', NULL, NULL),
('invitation to customers n patners', 'false', '2.0', 'customer, customer', '2', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-08 02:04:00', '2021-06-08 03:25:00', 'Deepika Nasika', 'RJEYS Infinity Solutions', '2021-06-23 16:32', 'a8a9a6a4-2367-4dec-813c-f6e4b1120026', NULL, NULL),
(' Amazon Prime', 'false', '2.0', '&lt;Name&gt;, &lt;Company Name&gt;.&nbsp;, null', '3', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-14 05:50:00', '2021-07-14 06:06:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', '06de4396-03a6-49b4-a37b-d5a184d51943', NULL, NULL),
('Escalation ', 'false', '2.0', 'Sir', '1', 'Yes', '1', 'Default', '[]', '[]', '', '2021-07-04 06:35:00', '2021-07-04 06:36:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'b2932978-da08-4311-9611-be7b41299cc0', NULL, NULL),
('thankyou mail vaccine', 'false', '2.0', 'name, colony, city', '3', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-09 01:42:00', '2021-06-10 07:30:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-10 15:32', '91fea0ec-6500-400a-b9a1-4fba423ed267', NULL, NULL),
('Airtalk Bill payment reminder', 'false', '2.0', '{}', '0', 'Yes', '1', 'Default', '[]', '[]', '', '2021-06-09 03:53:00', '2021-06-10 05:17:00', 'Rebecca Tripti', 'Rebecca Tripti', '2021-06-11 11:02', '14b4860f-c11d-4d75-9012-6683b4881005', NULL, NULL),
('Avinash NPS reminder', 'false', '2.0', 'Name', '1', 'Yes', '1', 'Default', '[]', '[]', '/All/Uncategorized', '2021-07-07 04:18:00', '2021-07-07 04:19:00', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '', 'd3ac3b94-5225-4395-ab6d-14c930e2597b', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `DELLBOOMI_ingest_jobs`
--

CREATE TABLE `DELLBOOMI_ingest_jobs` (
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `connectorId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `connectorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraFields` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ignoredFields` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objectInfos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compareExecutionMap` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `schedule` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scheduled` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastExecutionDetail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `modifiedDate` date DEFAULT NULL,
  `createdByName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifiedByName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scheduleType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastRunDate` date DEFAULT NULL,
  `accountDetail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jobInfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `syncInfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataLoadDTO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Is_Required` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DELLBOOMI_journey_orchestrator`
--

CREATE TABLE `DELLBOOMI_journey_orchestrator` (
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Model_Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Model_Type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Survey_Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `Relationship_Type_Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `folder_detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastUsedDate` datetime DEFAULT NULL,
  `noOfDays` smallint(50) DEFAULT NULL,
  `AO_Participant_Source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Report_Ids` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Report_Names` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Is_Required` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DELLBOOMI_journey_orchestrator`
--

INSERT INTO `DELLBOOMI_journey_orchestrator` (`Name`, `code`, `type`, `id`, `status`, `Model_Name`, `Model_Type`, `Survey_Name`, `created_date`, `modified_date`, `Relationship_Type_Name`, `folder_detail`, `lastUsedDate`, `noOfDays`, `AO_Participant_Source`, `Report_Ids`, `Report_Names`, `Is_Required`, `comments`) VALUES
('Survey', '8d5c3203f6db499388653ac2d75b5b1a', 'COMPANY', '8d5c3203-f6db-4993-8865-3ac2d75b5b1a', 'NEW', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-05-31 04:15:00', '2021-05-31 04:15:00', '', '/All/Uncategorized', '2021-05-31 11:15:05', 52, '', '', '', NULL, NULL),
('Survey_IFB_Service_Feedback Program', '77243277ed894725989ba162c4ae3ba6', 'COMPANY', '77243277-ed89-4725-989b-a162c4ae3ba6', 'NEW', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'Survey_IFB_Service_Feedback', '2021-06-05 05:48:00', '2021-06-09 02:47:00', '', '/All/Uncategorized', '2021-06-05 12:48:48', 47, 'QUERY_BUILDER', '', '', NULL, NULL),
('Food plaza Program', '22dd55ec944644cda3af3cc88d7883d9', 'COMPANY', '22dd55ec-9446-44cd-a3af-3cc88d7883d9', 'NEW', 'Generic Survey', 'NON_TRANSACTIONAL', 'Food plaza', '2021-06-07 07:52:00', '2021-06-07 22:28:00', '', '/All/Uncategorized', '2021-06-07 14:52:43', 45, 'POWER_LIST', '', '', NULL, NULL),
('Manager feedback', '1991c4b459494024a36c93d18360da22', 'COMPANY', '1991c4b4-5949-4024-a36c-93d18360da22', 'NEW', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'Manager_Feedback', '2021-06-08 05:40:00', '2021-06-10 03:39:00', '', '/All/MGMT Dashboard Reports', '2021-06-08 12:40:30', 44, '', '', '', NULL, NULL),
('Manager_Feedback Program', 'f72594ae09694747bd45b2505bddfcbe', 'COMPANY', 'f72594ae-0969-4747-bd45-b2505bddfcbe', 'NEW', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'Manager_Feedback', '2021-06-08 01:55:00', '2021-06-10 03:39:00', '', '/All/MGMT Dashboard Reports', '2021-06-08 08:55:31', 45, '', '', '', NULL, NULL),
('Airtalk NPS Survey', 'a0d1c50f00f843799ba2ee6cd9191a21', 'COMPANY', 'a0d1c50f-00f8-4379-9ba2-ee6cd9191a21', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'Plabo: Generic Survey', '2021-06-09 22:53:00', '2021-06-10 04:00:00', '', '/All/MGMT Dashboard Reports', '2021-06-11 11:03:21', 42, 'QUERY_BUILDER', '', '', NULL, NULL),
('fNPS Survey on callcenters Program', '66a67ba93a514403b3ed44c581f6d349', 'COMPANY', '66a67ba9-3a51-4403-b3ed-44c581f6d349', 'PROCESSING', 'Generic Survey', 'NON_TRANSACTIONAL', 'Clone of NPS Survey on callcenters', '2021-06-10 04:06:00', '2021-06-10 05:12:00', '', '/All/Greg Haugen', '2021-06-15 12:13:29', 37, 'POWER_LIST', '', '', NULL, NULL),
('CSAT survey_zomato delivery', 'fa5b97fdc6054477a71135169e2b44f4', 'COMPANY', 'fa5b97fd-c605-4477-a711-35169e2b44f4', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'survey_zomato delivery', '2021-06-10 05:39:00', '2021-06-10 06:47:00', '', '/All/Greg Haugen', '2021-06-13 13:48:12', 39, 'POWER_LIST', '', '', NULL, NULL),
('Test - JO Type', 'b2a25a26b825414ca069b22ba3cfbc0b', 'COMPANY', 'b2a25a26-b825-414c-a069-b22ba3cfbc0b', 'NEW', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-06-07 10:35:00', '2021-06-08 09:49:00', '', '/All/Uncategorized', '2021-06-07 17:35:09', 45, 'POWER_LIST', '', '', NULL, NULL),
('ggggg', '11b3e0fa8d6c40efaf34dd5701db6a88', 'COMPANY', '11b3e0fa-8d6c-40ef-af34-dd5701db6a88', 'NEW', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-06-08 09:52:00', '2021-06-08 09:52:00', '', '/All/Uncategorized', '2021-06-08 16:52:19', 44, '', '', '', NULL, NULL),
('new-generic survey on vaccine', '07e513f43a5c44fcb2a4ef6d8370525f', 'COMPANY', '07e513f4-3a5c-44fc-b2a4-ef6d8370525f', 'PROCESSING', 'Generic Survey', 'NON_TRANSACTIONAL', 'generic survey on vaccination', '2021-06-10 03:58:00', '2021-06-10 20:36:00', '', '/All/Greg Haugen', '2021-06-12 14:57:49', 40, 'POWER_LIST', '', '', NULL, NULL),
('Renewal Program', '997cc6282a234864961006be4c2218d0', 'COMPANY', '997cc628-2a23-4864-9610-06be4c2218d0', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-06-08 21:54:00', '2021-06-08 23:17:00', '', '/All/Uncategorized', '2021-06-09 06:18:47', 44, 'CSV', '', '', NULL, NULL),
('Kia_New_Customer', '1d4d61fa49634c959f606ced089eacdb', 'COMPANY', '1d4d61fa-4963-4c95-9f60-6ced089eacdb', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-06-08 22:44:00', '2021-06-10 03:37:00', '', '/All/MGMT Dashboard Reports', '2021-06-09 06:52:19', 44, 'POWER_LIST', '', '', NULL, NULL),
('Forum Food Transit', 'd28e7f9c286e4950bf51839c9c08c932', 'COMPANY', 'd28e7f9c-286e-4950-bf51-839c9c08c932', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-06-09 00:48:00', '2021-06-10 03:37:00', '', '/All/MGMT Dashboard Reports', '2021-06-09 09:56:24', 44, 'QUERY_BUILDER', '', '', NULL, NULL),
('TestReb', '502b8e409f054276bc5d29800cc408f3', 'COMPANY', '502b8e40-9f05-4276-bc5d-29800cc408f3', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-06-09 05:10:00', '2021-06-09 05:46:00', '', '/All/Uncategorized', '2021-06-09 12:47:14', 43, 'CSV', '', '', NULL, NULL),
('Welcome Airtalk', '424053eaa03a4ecd9d3621e054f8facd', 'COMPANY', '424053ea-a03a-4ecd-9d36-21e054f8facd', 'NEW', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-06-09 03:49:00', '2021-06-09 03:51:00', '', '/All/Uncategorized', '2021-06-09 10:49:03', 44, 'POWER_LIST', '', '', NULL, NULL),
('student_interview_call', 'd0cb535233444051be0192a820bf17b0', 'COMPANY', 'd0cb5352-3344-4051-be01-92a820bf17b0', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-06-09 02:06:00', '2021-06-09 03:42:00', '', '/All/Greg Haugen', '2021-06-10 20:44:26', 42, 'POWER_LIST', '', '', NULL, NULL),
('Admin: Generic Survey on Exhibition Program', 'eef683a2bd564c7aa474ff417d781872', 'COMPANY', 'eef683a2-bd56-4c7a-a474-ff417d781872', 'NEW', 'Generic Survey', 'NON_TRANSACTIONAL', 'Admin: Generic Survey on Exhibition', '2021-06-09 03:37:00', '2021-06-09 03:37:00', '', '/All/Uncategorized', '2021-06-09 10:37:08', 44, '', '', '', NULL, NULL),
('Generic Survey model - 2021 Q2', 'aad7220beea246f0a0fb37998fdd4ea9', 'COMPANY', 'aad7220b-eea2-46f0-a0fb-37998fdd4ea9', 'PROCESSING', 'Generic Survey', 'NON_TRANSACTIONAL', 'generic survey on vaccination', '2021-06-09 07:20:00', '2021-06-09 07:40:00', '', '/All/Uncategorized', '2021-06-11 14:41:03', 41, 'POWER_LIST', '', '', NULL, NULL),
('RJEYS-New Customer Onboarding-2021 Q2', '35b9120ae5f94d3089d7a54cfa8bbf4b', 'COMPANY', '35b9120a-e5f9-4d30-89d7-a54cfa8bbf4b', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-06-09 23:51:00', '2021-06-10 00:36:00', '', '/All/Customer 360', '2021-06-16 07:37:40', 37, 'CSV', '', '', NULL, NULL),
('generic survey on vaccine', '96b8a3791f2d46198838c7baff8a969f', 'COMPANY', '96b8a379-1f2d-4619-8838-c7baff8a969f', 'PROCESSING', 'Generic Survey', 'NON_TRANSACTIONAL', 'generic survey on vaccination', '2021-06-09 23:02:00', '2021-06-10 03:48:00', '', '/All/Greg Haugen', '2021-06-10 10:12:36', 43, 'CSV', '', '', NULL, NULL),
('survey_zomato delivery Program', 'd08bd8c74ea148e99ca08a4d2748403f', 'COMPANY', 'd08bd8c7-4ea1-48e9-9ca0-8a4d2748403f', 'NEW', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'survey_zomato delivery', '2021-06-10 05:37:00', '2021-06-10 05:37:00', '', '/All/Uncategorized', '2021-06-10 12:37:40', 42, '', '', '', NULL, NULL),
('Forum_Customer Generic Survey', '7a5d50843c6b410d97a9e29ce48cf7af', 'COMPANY', '7a5d5084-3c6b-410d-97a9-e29ce48cf7af', 'PROCESSING', 'Generic Survey', 'NON_TRANSACTIONAL', 'Admin: Generic Survey on Exhibition', '2021-06-10 01:24:00', '2021-06-23 03:45:00', '', '/All/Customer 360', '2021-06-12 12:40:18', 40, 'POWER_LIST', '', '', NULL, NULL),
('Survey for relationhsip Program', 'f00c66346e754bd2a28e2b0827709760', 'RELATIONSHIP', 'f00c6634-6e75-4bd2-a28e-2b0827709760', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'Survey for relationhsip', '2021-06-28 22:54:00', '2021-06-29 02:04:00', 'RJEYS Apple HW', '/All/Uncategorized', '2021-06-29 09:20:38', 24, 'QUERY_BUILDER', '', '', NULL, NULL),
('NPS Survey on Reliance Program', '646d29fbb997480c91e26c4a73af546d', 'COMPANY', '646d29fb-b997-480c-91e2-6c4a73af546d', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'NPS Survey on Reliance', '2021-07-03 16:59:00', '2021-07-03 17:32:00', '', '/All/Uncategorized', '2021-07-04 00:34:52', 19, 'QUERY_BUILDER', 'a1U5e000000qrjWEAQ', 'Account group by rating', NULL, NULL),
('Creamstone', '19a455f49b7c42789c3b3e31ffb7f778', 'COMPANY', '19a455f4-9b7c-4278-9c3b-3e31ffb7f778', 'PROCESSING', 'Generic Survey', 'NON_TRANSACTIONAL', 'Cream Stone : Generic Survey', '2021-06-17 22:47:00', '2021-06-17 23:21:00', '', '/All/MGMT Dashboard Reports', '2021-06-18 06:27:04', 35, 'POWER_LIST', '', '', NULL, NULL),
('R App NPS', '61f7d9993980411a9d51ac91ca60bd02', 'COMPANY', '61f7d999-3980-411a-9d51-ac91ca60bd02', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'Apple_NPS', '2021-07-04 05:12:00', '2021-07-04 05:41:00', '', '', '2021-07-07 12:41:50', 15, 'QUERY_BUILDER', '', '', NULL, NULL),
('test', '572809b9c64248559c39a9bdd2f7aff1', 'USER', '572809b9-c642-4855-9c39-a9bdd2f7aff1', 'NEW', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-06-18 08:35:00', '2021-06-18 08:35:00', '', '/All/MGMT Dashboard Reports', '2021-06-18 15:35:25', 34, '', '', '', NULL, NULL),
('Apple_Rjeys_JO', 'c34b5dac4e254e66bf1e1b708bfbc88d', 'COMPANY', 'c34b5dac-4e25-4e66-bf1e-1b708bfbc88d', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-04 03:46:00', '2021-07-04 07:06:00', '', '/All/Jamf Now/C360 | Jamf Now ', '2021-07-04 12:08:51', 18, 'QUERY_BUILDER, QUERY_BUILDER', '', '', NULL, NULL),
('R_Airpods NPS 1', 'c96de925979d48eaa0daf530a2e148ae', 'COMPANY', 'c96de925-979d-48ea-a0da-f530a2e148ae', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'Apple_NPS', '2021-07-10 07:04:00', '2021-07-10 08:53:00', '', '', '2021-07-10 14:41:25', 12, 'QUERY_BUILDER, QUERY_BUILDER', '', '', NULL, NULL),
('csat_practice', '66534585c7db4736a8dda8adb6b1cbfa', 'COMPANY', '66534585-c7db-4736-a8dd-a8adb6b1cbfa', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'csat_practice', '2021-07-16 03:35:00', '2021-07-16 04:05:00', '', '/All/Uncategorized', '2021-07-16 10:59:34', 7, 'POWER_LIST', '', '', NULL, NULL),
('csatsurveyarun', 'cf39e009d54e49bf884279dd706db8ec', 'COMPANY', 'cf39e009-d54e-49bf-8842-79dd706db8ec', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'csatsurveyarun', '2021-07-15 00:32:00', '2021-07-15 10:55:00', '', '', '2021-07-16 15:57:25', 6, 'QUERY_BUILDER', '', '', NULL, NULL),
('Apple_CSAT', '29921f8feb5e4727a26e9dc9799e7857', 'COMPANY', '29921f8f-eb5e-4727-a26e-9dc9799e7857', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'Apple_NPS', '2021-07-04 05:54:00', '2021-07-15 08:28:00', '', '', '2021-07-05 13:04:05', 17, 'QUERY_BUILDER', '', '', NULL, NULL),
('Program for relationship', '5ba3b81012c2435089d1f6c55c0efc10', 'RELATIONSHIP', '5ba3b810-12c2-4350-89d1-f6c55c0efc10', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-06-28 02:46:00', '2021-06-28 04:51:00', 'RJEYS Apple HW', '/All/Customer 360', '2021-06-28 10:47:05', 25, 'POWER_LIST', '', '', NULL, NULL),
('Apple csat', 'c45a6ddf3d14493c8f42a2cdd5f37726', 'COMPANY', 'c45a6ddf-3d14-493c-8f42-a2cdd5f37726', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'Apple_CSAT', '2021-07-04 07:58:00', '2021-07-04 08:14:00', '', '', '2021-07-04 15:14:22', 18, 'QUERY_BUILDER', '', '', NULL, NULL),
('Apple_Generic_Survey_JO', 'bfe9a54110f84bc9a9eba3de4519aa2f', 'COMPANY', 'bfe9a541-10f8-4bc9-a9eb-a3de4519aa2f', 'PROCESSING', 'Generic Survey', 'NON_TRANSACTIONAL', 'Apple_NPS_Survey_S', '2021-07-04 09:14:00', '2021-07-04 09:28:00', '', '/All/Jamf Now/C360 | Jamf Now ', '2021-07-05 03:35:01', 18, 'QUERY_BUILDER', '', '', NULL, NULL),
('Relationship JO for Robotics', 'a445166edc414d049680de15c48db8bc', 'RELATIONSHIP', 'a445166e-dc41-4d04-9680-de15c48db8bc', 'PROCESSING', 'Generic Survey', 'NON_TRANSACTIONAL', 'Relationship Survey on ROBOTICS', '2021-06-28 22:04:00', '2021-06-29 09:33:00', 'RJEYS Apple HW', '/All/MGMT Dashboard Reports', '2021-06-29 09:48:43', 24, 'POWER_LIST, QUERY_BUILDER', '', '', NULL, NULL),
('Apple', '8a689cc05ec04949b2d11872bdb9ac9d', 'COMPANY', '8a689cc0-5ec0-4949-b2d1-1872bdb9ac9d', 'NEW', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-03 22:27:00', '2021-07-03 23:34:00', '', '/All/Uncategorized', '2021-07-04 05:27:31', 19, 'CSV', '', '', NULL, NULL),
('Test JO Program', '985d94119ebb4a03b61e893d35ca0476', 'COMPANY', '985d9411-9ebb-4a03-b61e-893d35ca0476', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-04 00:21:00', '2021-07-04 00:47:00', '', '/All/Uncategorized', '2021-07-04 07:48:10', 19, 'QUERY_BUILDER', '', '', NULL, NULL),
('Welcome Email to Netflix from Disney', '2bc2e12b303343d5b2e6822b5d880849', 'COMPANY', '2bc2e12b-3033-43d5-b2e6-822b5d880849', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-03 06:39:00', '2021-07-03 09:52:00', '', '/All/MGMT Dashboard Reports', '2021-07-03 16:56:24', 19, 'QUERY_BUILDER', '', '', NULL, NULL),
('jo_bt', '77b4c5e434b6437b828c8ee07ec2c943', 'COMPANY', '77b4c5e4-34b6-437b-828c-8ee07ec2c943', 'NEW', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-04 04:07:00', '2021-07-04 04:35:00', '', '/All/Uncategorized', '2021-07-04 11:07:17', 19, 'QUERY_BUILDER', '', '', NULL, NULL),
('Apple CSAT 1', '1ad96d601bb248b4bba149744ecff793', 'COMPANY', '1ad96d60-1bb2-48b4-bba1-49744ecff793', 'NEW', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'Apple_CSAT 1', '2021-07-04 10:20:00', '2021-07-04 10:23:00', '', '', '2021-07-04 17:20:41', 18, 'QUERY_BUILDER', '', '', NULL, NULL),
('Apple_CSAT_Survey_JO', '6e50265faeca4fac836c1f4359752d9a', 'COMPANY', '6e50265f-aeca-4fac-836c-1f4359752d9a', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'Apple_CSAT_SURVEY', '2021-07-04 10:56:00', '2021-07-04 11:18:00', '', '/All/Jamf Now/C360 | Jamf Now ', '2021-07-04 18:24:00', 18, 'QUERY_BUILDER', '', '', NULL, NULL),
('Test JO text Program', '9a4706db36474bc9b9f00d455a4a3f5a', 'COMPANY', '9a4706db-3647-4bc9-b9f0-0d455a4a3f5a', 'NEW', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-04 04:55:00', '2021-07-04 05:02:00', '', '/All/Uncategorized', '2021-07-04 11:55:55', 18, 'QUERY_BUILDER', '', '', NULL, NULL),
('Apple_NPS_Survey_JO', '76831d6e72154853b61cf5ab18ef8c05', 'COMPANY', '76831d6e-7215-4853-b61c-f5ab18ef8c05', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'Apple_NPS_Survey_S', '2021-07-04 05:27:00', '2021-07-04 05:47:00', '', '/All/Jamf Now/C360 | Jamf Now ', '2021-07-07 12:48:22', 15, 'QUERY_BUILDER', '', '', NULL, NULL),
('csatavinash', '131db5fa741e4288b5e5047efa98334c', 'COMPANY', '131db5fa-741e-4288-b5e5-047efa98334c', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'csatavinash', '2021-07-16 11:32:00', '2021-07-16 12:08:00', '', '', '2021-07-16 18:50:48', 6, 'QUERY_BUILDER', '', '', NULL, NULL),
('Test_JO', '4b502f86ccd1483a9dd0d1e1ac068a12', 'COMPANY', '4b502f86-ccd1-483a-9dd0-d1e1ac068a12', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-07 02:29:00', '2021-07-07 02:46:00', '', '/All/Uncategorized', '2021-07-07 09:38:50', 16, 'QUERY_BUILDER', '', '', NULL, NULL),
('R_Email Chain Relationship', '12e7d17a22ea4a1a9ab9c502865a5893', 'RELATIONSHIP', '12e7d17a-22ea-4a1a-9ab9-c502865a5893', 'NEW', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-10 02:40:00', '2021-07-10 03:37:00', 'RJEYS Apple HW', '', '2021-07-10 09:40:44', 13, 'QUERY_BUILDER', '', '', NULL, NULL),
('Apple_EmailChain_Bindu', 'eb2d9cb1ccd14c99a83f3885d854d382', 'COMPANY', 'eb2d9cb1-ccd1-4c99-a83f-3885d854d382', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-04 06:43:00', '2021-07-04 06:53:00', '', '', '2021-07-04 13:54:01', 18, 'QUERY_BUILDER', '', '', NULL, NULL),
('R_Airpods NPS', '8ef92187dff6431e99b9386bc6d37dae', 'COMPANY', '8ef92187-dff6-431e-99b9-386bc6d37dae', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'Apple_NPS_Survey_S', '2021-07-10 06:54:00', '2021-07-10 07:02:00', '', '/All/Uncategorized', '2021-07-14 14:03:16', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('Test text Survey_bt', 'd7ebd386b23b4aa188e07b234d2af5a3', 'COMPANY', 'd7ebd386-b23b-4aa1-88e0-7b234d2af5a3', 'NEW', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-04 06:11:00', '2021-07-04 06:13:00', '', '/All/Uncategorized', '2021-07-04 13:11:33', 18, 'QUERY_BUILDER', '', '', NULL, NULL),
('CSAT TEMPLATE_SINDHU', '318ac1a0f2ef4ab5afe3591780b8b339', 'COMPANY', '318ac1a0-f2ef-4ab5-afe3-591780b8b339', 'NEW', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'CSAT SURVEY _SINDHU', '2021-07-14 04:34:00', '2021-07-14 04:47:00', '', '/All/Uncategorized', '2021-07-14 11:34:13', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('Apple Email', '8a1b0e2822924822ace53ebc6e3cc4ba', 'COMPANY', '8a1b0e28-2292-4822-ace5-3ebc6e3cc4ba', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-04 06:04:00', '2021-07-10 02:45:00', '', '', '2021-07-04 13:13:08', 18, 'QUERY_BUILDER', '', '', NULL, NULL),
('Apple_Generic', 'bb72e329db484d4fa387f5d55432bea6', 'COMPANY', 'bb72e329-db48-4d4f-a387-f5d55432bea6', 'PROCESSING', 'Generic Survey', 'NON_TRANSACTIONAL', 'Apple_Generic', '2021-07-04 06:26:00', '2021-07-04 06:37:00', '', '', '2021-07-14 13:38:01', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('bindu jo nps program', 'ca8c9efcc38e4eea9b4efbca05af184e', 'COMPANY', 'ca8c9efc-c38e-4eea-9b4e-fbca05af184e', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'bindu nps survey', '2021-07-04 07:15:00', '2021-07-04 07:28:00', '', '', '2021-07-07 14:28:36', 15, 'QUERY_BUILDER', '', '', NULL, NULL),
('Apple Generic 1', 'da8a8ff01ae44169973f7636c01b9e41', 'COMPANY', 'da8a8ff0-1ae4-4169-973f-7636c01b9e41', 'PROCESSING', 'Generic Survey', 'NON_TRANSACTIONAL', 'Apple_Generic', '2021-07-04 07:43:00', '2021-07-04 07:47:00', '', '', '2021-07-05 14:48:07', 17, 'QUERY_BUILDER', '', '', NULL, NULL),
('bindu csat program', 'ab6d1728dafc4d3fa80a91ed2d6c68a4', 'COMPANY', 'ab6d1728-dafc-4d3f-a80a-91ed2d6c68a4', 'NEW', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'bindu csat survey', '2021-07-04 07:45:00', '2021-07-04 08:04:00', '', '', '2021-07-04 14:45:14', 18, 'QUERY_BUILDER', '', '', NULL, NULL),
('Email Avinash Test Mail', '685a31636e094376ba70941b25433e69', 'COMPANY', '685a3163-6e09-4376-ba70-941b25433e69', 'NEW', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-07 02:59:00', '2021-07-07 03:01:00', '', '/All/Uncategorized', '2021-07-07 09:59:06', 16, 'QUERY_BUILDER', '', '', NULL, NULL),
('jotemplateoffer', 'ceacda259d1b4195b2f8c97822f27c5a', 'COMPANY', 'ceacda25-9d1b-4195-b2f8-c97822f27c5a', 'NEW', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-07 02:59:00', '2021-07-07 03:12:00', '', '/All/Greg Haugen', '2021-07-07 09:59:10', 16, 'QUERY_BUILDER, QUERY_BUILDER', '', '', NULL, NULL),
('Apple_Relationship_S', 'a74616eafa4746dfa4fcc7f08e2eca0e', 'RELATIONSHIP', 'a74616ea-fa47-46df-a4fc-c7f08e2eca0e', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'Apple_NPS_Survey_S', '2021-07-10 07:05:00', '2021-07-10 07:30:00', 'RJEYS Apple HW', '/All/Jamf Now/C360 | Jamf Now ', '2021-07-10 14:18:57', 12, 'QUERY_BUILDER', '', '', NULL, NULL),
('Email_Avinash Test mail', '2ad76e43b668497caedb7239f941860e', 'COMPANY', '2ad76e43-b668-497c-aedb-7239f941860e', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-07 03:13:00', '2021-07-07 03:28:00', '', '/All/Uncategorized', '2021-07-07 10:28:58', 16, 'QUERY_BUILDER', '', '', NULL, NULL),
('JO for Netflix_Disney', '05471791fd2e4bdd9e068fb6a81cf038', 'COMPANY', '05471791-fd2e-4bdd-9e06-8fb6a81cf038', 'NEW', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'CSAT Survey', '2021-07-04 06:27:00', '2021-07-08 13:52:00', '', '/All/MGMT Dashboard Reports', '2021-07-04 13:27:13', 18, '', '', '', NULL, NULL),
('WJIOOffer', '6a8139d72ab742ce9bf9de1dcbb9642e', 'COMPANY', '6a8139d7-2ab7-42ce-9bf9-de1dcbb9642e', 'NEW', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-07 05:57:00', '2021-07-07 06:10:00', '', '', '2021-07-07 12:57:44', 15, 'QUERY_BUILDER', '', '', NULL, NULL),
('Survey for JO Sample Program', '40dfc5501bdb433e8f2509e181758b14', 'COMPANY', '40dfc550-1bdb-433e-8f25-09e181758b14', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'Survey for JO Sample', '2021-07-12 03:05:00', '2021-07-12 03:28:00', '', '/All/Uncategorized', '2021-07-12 10:33:34', 11, 'QUERY_BUILDER', '', '', NULL, NULL),
('csatsurveyarun', 'f0e25747bd92453c8bfad4b4fd00b184', 'COMPANY', 'f0e25747-bd92-453c-8bfa-d4b4fd00b184', 'NEW', 'Generic Survey', 'NON_TRANSACTIONAL', 'deltek_generic', '2021-07-17 07:49:00', '2021-07-17 07:52:00', '', '', '2021-07-17 14:49:58', 5, 'POWER_LIST', '', '', NULL, NULL),
('R_Airpods Email Template', '35c87c467b344554b1d13505b95b1c6e', 'RELATIONSHIP', '35c87c46-7b34-4554-b1d1-3505b95b1c6e', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-10 06:07:00', '2021-07-10 06:52:00', 'RJEYS Apple HW', '', '2021-07-10 13:52:59', 12, 'QUERY_BUILDER', '', '', NULL, NULL),
('R_Airpods NPS survey', '87c736874bd34971bf52cb77edbb46cd', 'RELATIONSHIP', '87c73687-4bd3-4971-bf52-cb77edbb46cd', 'NEW', 'NPS Survey', 'NON_TRANSACTIONAL', 'Airpods_NPS', '2021-07-10 08:59:00', '2021-07-10 09:28:00', 'RJEYS Apple HW', '', '2021-07-10 15:59:45', 12, 'POWER_LIST, QUERY_BUILDER', '', '', NULL, NULL),
('R_Apple NPS Relationship', '460d8da749984dd9b9ae4ec833503bb7', 'RELATIONSHIP', '460d8da7-4998-4dd9-b9ae-4ec833503bb7', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'Airpods_NPS', '2021-07-10 21:06:00', '2021-07-10 22:07:00', 'RJEYS Apple HW', '', '2021-07-11 05:07:07', 12, 'QUERY_BUILDER', '', '', NULL, NULL),
('In line survey', '989f7456596142e186f2cf0ac42d3673', 'COMPANY', '989f7456-5961-42e1-86f2-cf0ac42d3673', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'Apple_NPS', '2021-07-10 12:58:00', '2021-07-11 07:43:00', '', '/All/Uncategorized', '2021-07-10 20:08:41', 12, 'POWER_LIST', 'a1U5e000000qrjWEAQ', 'Account group by rating', NULL, NULL),
('Test CSAT Survey6', '9fdb0e4979814f108416765d80102fc4', 'COMPANY', '9fdb0e49-7981-4f10-8416-765d80102fc4', 'NEW', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'binndu test6', '2021-07-11 06:55:00', '2021-07-12 09:12:00', '', '/All/Uncategorized', '2021-07-11 13:55:10', 11, 'QUERY_BUILDER', '', '', NULL, NULL),
('csat tutorial 2', '4405a69991b84a499c7ff2e32648ab2e', 'COMPANY', '4405a699-91b8-4a49-9c7f-f2e32648ab2e', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'CSAT survey Tutorial', '2021-07-14 04:43:00', '2021-07-14 05:09:00', '', '', '2021-07-14 12:10:59', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('Admin: NPS survey on Reliance Jio Fiber Customers Program', '3c04284a19634235a0ec241f83747c8d', 'COMPANY', '3c04284a-1963-4235-a0ec-241f83747c8d', 'NEW', 'Generic Survey', 'NON_TRANSACTIONAL', 'Admin: NPS survey on Reliance Jio Fiber Customers', '2021-07-03 16:54:00', '2021-07-11 10:08:00', '', '/All/Uncategorized', '2021-07-03 23:54:42', 19, '', '', '', NULL, NULL),
('NPS Program', 'bdf7a9b43a9b4b0dac085a1d59ac0b5d', 'COMPANY', 'bdf7a9b4-3a9b-4b0d-ac08-5a1d59ac0b5d', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'NPS survey_', '2021-07-14 10:52:00', '2021-07-14 11:02:00', '', '/All/Uncategorized', '2021-07-14 18:05:27', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('FINAL SURVEY TEST_INT Program', '0999785c4e6a463499b3bf80cc4a065d', 'COMPANY', '0999785c-4e6a-4634-99b3-bf80cc4a065d', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'FINAL SURVEY TEST_INT', '2021-07-12 00:40:00', '2021-07-12 02:26:00', '', '', '2021-07-12 08:54:26', 11, 'QUERY_BUILDER', '', '', NULL, NULL),
('test_jo', '1e6ffd74e0864c4bab5c71f879fd36a2', 'COMPANY', '1e6ffd74-e086-4c4b-ab5c-71f879fd36a2', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'FINAL SURVEY TEST_INT', '2021-07-12 03:28:00', '2021-07-12 09:10:00', '', '/All/Jamf Now/C360 | Jamf Now ', '2021-07-12 10:41:05', 11, 'POWER_LIST, QUERY_BUILDER', '622034bb-cfa5-4cad-b96a-c0fe37c798b5', 'Copy of [DD] Apple_Report_2', NULL, NULL),
('Final _ Jo_Using_Powerlist', '668a50277afe47e69b3cd687381fd0d9', 'COMPANY', '668a5027-7afe-47e6-9b3c-d687381fd0d9', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-12 01:54:00', '2021-07-12 02:15:00', '', '', '2021-07-12 09:53:00', 11, 'POWER_LIST, QUERY_BUILDER, POWER_LIST', '', '', NULL, NULL),
('Test Jo Email chain_t', '5115b51bc95142ad8cf295b41de852ae', 'COMPANY', '5115b51b-c951-42ad-8cf2-95b41de852ae', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-13 23:08:00', '2021-07-13 23:23:00', '', '', '2021-07-14 06:23:57', 9, 'QUERY_BUILDER', '', '', NULL, NULL),
('csat Survey_tut', '5fd2df0ddf6e47369998b851d854d691', 'COMPANY', '5fd2df0d-df6e-4736-9998-b851d854d691', 'NEW', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'CSAT survey Demo_b', '2021-07-13 23:47:00', '2021-07-13 23:49:00', '', '', '2021-07-14 06:47:21', 9, 'QUERY_BUILDER', '', '', NULL, NULL),
('CSAT survey Demo_b Program', 'e2ce1ca6c33c41adac7fb615f215e4e9', 'COMPANY', 'e2ce1ca6-c33c-41ad-ac7f-b615f215e4e9', 'NEW', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'CSAT survey Demo_b', '2021-07-13 23:39:00', '2021-07-13 23:43:00', '', '/All/Uncategorized', '2021-07-14 06:39:17', 9, 'QUERY_BUILDER', '', '', NULL, NULL),
('NPS_survey', 'c30f4fa2aa93447ca87f2bbb9b52a92e', 'COMPANY', 'c30f4fa2-aa93-447c-a87f-2bbb9b52a92e', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'NPS survey_', '2021-07-14 11:28:00', '2021-07-15 02:43:00', '', '/All/Jamf Now/Dashboards | Jamf Now /Jamf Now | Team', '2021-07-21 18:34:23', 1, 'QUERY_BUILDER', '', '', NULL, NULL),
('CSATJo_tut', '7005fa3ec7294956a05bd0a183039ce9', 'COMPANY', '7005fa3e-c729-4956-a05b-d0a183039ce9', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'csat survey tut', '2021-07-14 00:14:00', '2021-07-14 00:26:00', '', '', '2021-07-14 07:29:31', 9, 'POWER_LIST', 'a1U5e000000rr1TEAQ', 'report for csat tut', NULL, NULL),
('Csat_survey', '520dcc1409bd45de823e18cfca5ce134', 'COMPANY', '520dcc14-09bd-45de-823e-18cfca5ce134', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'CSAT_survey1', '2021-07-14 11:03:00', '2021-07-14 23:06:00', '', '/All/Jamf Now/Dashboards | Jamf Now /Jamf Now | Team', '2021-07-14 18:24:54', 8, 'QUERY_BUILDER, QUERY_BUILDER', '', '', NULL, NULL),
('CSAT survey 2 prm', '5d743de794f946daadfac13b49728e1e', 'COMPANY', '5d743de7-94f9-46da-adfa-c13b49728e1e', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'CSAT Survey 2', '2021-07-14 23:47:00', '2021-07-15 11:08:00', '', '', '2021-07-15 07:47:36', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('Sample E Mail Template', '89446f8cd7484253b366d12e11f6a2cf', 'COMPANY', '89446f8c-d748-4253-b366-d12e11f6a2cf', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-14 02:31:00', '2021-07-14 02:49:00', '', '/All/Uncategorized', '2021-07-14 09:49:21', 9, 'QUERY_BUILDER', '', '', NULL, NULL),
('rjyes_test_emailchain', 'f4314b9e42a2425c802e2ac8d50ade61', 'COMPANY', 'f4314b9e-42a2-425c-802e-2ac8d50ade61', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-14 01:50:00', '2021-07-15 02:41:00', '', '', '2021-07-14 10:22:23', 9, 'QUERY_BUILDER', '', '', NULL, NULL),
('Jo_Testing_Sharath', '3aa8154d7af442339cef5128de11982a', 'COMPANY', '3aa8154d-7af4-4233-9cef-5128de11982a', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'Apple_CSAT_SURVEY', '2021-07-14 03:45:00', '2021-07-14 04:01:00', '', '/All/Uncategorized', '2021-07-14 11:03:43', 9, 'QUERY_BUILDER', '', '', NULL, NULL),
('B-template jo', '6176a69a59eb43918326f23feca3a41c', 'COMPANY', '6176a69a-59eb-4391-8326-f23feca3a41c', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-14 03:28:00', '2021-07-14 03:48:00', '', '', '2021-07-14 10:48:19', 9, 'QUERY_BUILDER', '', '', NULL, NULL),
('email_template_jo', 'bcbfce11ef02459a965c2bd4bfdd1dee', 'COMPANY', 'bcbfce11-ef02-459a-965c-2bd4bfdd1dee', 'NEW', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-14 03:32:00', '2021-07-14 03:53:00', '', '/All/Uncategorized', '2021-07-14 10:32:50', 9, 'QUERY_BUILDER', '', '', NULL, NULL),
('CSAT citprogram', 'd645dcdbc0a840ed95e332651b7d2b50', 'COMPANY', 'd645dcdb-c0a8-40ed-95e3-32651b7d2b50', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'CSAT CIT', '2021-07-14 23:46:00', '2021-07-15 02:42:00', '', '/All/Jamf Now/Dashboards | Jamf Now /Jamf Now | Team', '2021-07-15 08:15:09', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('mail template jo', '27f297bd56f14b1185292728e4c4ff55', 'COMPANY', '27f297bd-56f1-4b11-8529-2728e4c4ff55', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-14 03:28:00', '2021-07-14 03:52:00', '', '/All/Uncategorized', '2021-07-14 10:53:02', 9, 'QUERY_BUILDER', '', '', NULL, NULL),
('csat', 'a1a0d0652e754dc3a85cbca970d42fd8', 'COMPANY', 'a1a0d065-2e75-4dc3-a85c-bca970d42fd8', 'NEW', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'CSAT SURVEY _SINDHU', '2021-07-14 04:35:00', '2021-07-14 04:35:00', '', '', '2021-07-14 11:35:39', 8, '', '', '', NULL, NULL),
('GAINSIGHT TEMPLATE JO', 'a50cef81cc4e4988857b7450eb6b2653', 'COMPANY', 'a50cef81-cc4e-4988-857b-7450eb6b2653', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-14 03:27:00', '2021-07-14 03:53:00', '', '/All/Uncategorized', '2021-07-14 10:53:30', 9, 'QUERY_BUILDER', '', '', NULL, NULL),
('Test Generic Survey', 'e24699ba56b04203ad6d3f7c3a591d46', 'COMPANY', 'e24699ba-56b0-4203-ad6d-3f7c3a591d46', 'NEW', 'Generic Survey', 'NON_TRANSACTIONAL', 'Test NPS surevey', '2021-07-04 03:14:00', '2021-07-14 04:18:00', '', '/All/Uncategorized', '2021-07-04 10:14:27', 19, 'POWER_LIST', '', '', NULL, NULL),
('Amazon CSAT Survey Program', '8c992c519de14a409eefc1767442d451', 'COMPANY', '8c992c51-9de1-4a40-9eef-c1767442d451', 'NEW', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'Amazon CSAT Survey', '2021-07-14 06:02:00', '2021-07-14 06:04:00', '', '/All/Uncategorized', '2021-07-14 13:02:08', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('Amazon CSAT Survey Program', '4513faa13efa4ade8d3cc9e6f697445c', 'COMPANY', '4513faa1-3efa-4ade-8d3c-c9e6f697445c', 'NEW', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'Amazon CSAT Survey', '2021-07-14 06:06:00', '2021-07-14 06:29:00', '', '/All/Uncategorized', '2021-07-14 13:06:49', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('omada genric', '4980498c6aee4836a1bb457cc6d24f09', 'COMPANY', '4980498c-6aee-4836-a1bb-457cc6d24f09', 'PROCESSING', 'Generic Survey', 'NON_TRANSACTIONAL', 'omada genric', '2021-07-14 23:21:00', '2021-07-15 02:18:00', '', '', '2021-07-15 06:29:00', 8, 'POWER_LIST', '', '', NULL, NULL),
('citrix powerlist', 'd89fdbba540b4122b3cda083811ba8d2', 'COMPANY', 'd89fdbba-540b-4122-b3cd-a083811ba8d2', 'PROCESSING', 'Generic Survey', 'NON_TRANSACTIONAL', 'Generic survey_', '2021-07-15 02:16:00', '2021-07-15 02:27:00', '', '/All/Jamf Now/Dashboards | Jamf Now /Jamf Now | Team', '2021-07-15 09:29:42', 8, 'POWER_LIST', '', '', NULL, NULL),
('meeting', '5bb1b800ffbd4613bfc9747c6089f6da', 'COMPANY', '5bb1b800-ffbd-4613-bfc9-747c6089f6da', 'NEW', 'NPS Survey', 'NON_TRANSACTIONAL', 'Nps_Survey_sandhya', '2021-07-14 22:33:00', '2021-07-14 22:49:00', '', '/All/Uncategorized', '2021-07-15 05:33:46', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('CSAT_Sandhya', 'a64da2f2fcb843e885a2d0df4e095510', 'COMPANY', 'a64da2f2-fcb8-43e8-85a2-d0df4e095510', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'CSAT_Survey_Sandhya', '2021-07-14 08:13:00', '2021-07-14 08:54:00', '', '', '2021-07-14 15:54:03', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('test_Jo_Bhavana', '81c9fc81598244318d3c7241db5780a7', 'COMPANY', '81c9fc81-5982-4431-8d3c-7241db5780a7', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-14 06:01:00', '2021-07-14 06:15:00', '', '', '2021-07-14 13:15:54', 8, 'POWER_LIST', '', '', NULL, NULL),
('Bb-template jo', '5e337fa005134905a464a193423acc45', 'COMPANY', '5e337fa0-0513-4905-a464-a193423acc45', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'CSAT survey Tutorial', '2021-07-14 06:38:00', '2021-07-14 06:50:00', '', '', '2021-07-14 13:50:16', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('Email_Chain_Sandhya', '46b0efeda276432abbc0ca6e1b47d897', 'COMPANY', '46b0efed-a276-432a-bbc0-ca6e1b47d897', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-14 07:30:00', '2021-07-14 07:43:00', '', '', '2021-07-14 14:44:03', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('NPS_Sandhya', 'a956b09300074ad89cdca287e1646d08', 'COMPANY', 'a956b093-0007-4ad8-9cdc-a287e1646d08', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'Nps_Survey_sandhya', '2021-07-14 08:00:00', '2021-07-14 08:08:00', '', '', '2021-07-14 15:09:02', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('Program_33', '268083b9025c46dc88c473747f5cd12b', 'COMPANY', '268083b9-025c-46dc-88c4-73747f5cd12b', 'NEW', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'S_survey', '2021-07-14 08:37:00', '2021-07-14 08:38:00', '', '', '2021-07-14 15:37:34', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('Programe_1', '5a5794120502471dbfde82a11ceecf0d', 'COMPANY', '5a579412-0502-471d-bfde-82a11ceecf0d', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-14 07:24:00', '2021-07-14 07:51:00', '', '', '2021-07-14 14:51:42', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('Generic Survey', 'c12c071901a84391b7b93cd1f4cde9c4', 'COMPANY', 'c12c0719-01a8-4391-b7b9-3cd1f4cde9c4', 'PROCESSING', 'Generic Survey', 'NON_TRANSACTIONAL', 'Apple_NPS_Survey_S', '2021-07-14 08:54:00', '2021-07-14 08:59:00', '', '', '2021-07-14 16:02:40', 8, 'POWER_LIST', '', '', NULL, NULL),
('email_template_jo', '5be96db18374431c856e516533355c4e', 'COMPANY', '5be96db1-8374-431c-856e-516533355c4e', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-14 08:58:00', '2021-07-14 09:15:00', '', '', '2021-07-14 16:15:41', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('CSAT _program', 'e962f6b3b27143b5ba156206b0cb857b', 'COMPANY', 'e962f6b3-b271-43b5-ba15-6206b0cb857b', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'CSAT_survey1', '2021-07-14 09:36:00', '2021-07-14 10:04:00', '', '', '2021-07-14 17:06:41', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('jo genric prm', '1b622ab2239c48b09c14e3c77d5ce4b6', 'COMPANY', '1b622ab2-239c-48b0-9c14-e3c77d5ce4b6', 'PROCESSING', 'Generic Survey', 'NON_TRANSACTIONAL', 'generic', '2021-07-15 02:39:00', '2021-07-15 03:00:00', '', '/All/Uncategorized', '2021-07-15 10:03:14', 8, 'POWER_LIST', '', '', NULL, NULL),
('nps_survey_practice', 'f762712d5dfd4e92adb7c4217c5a286c', 'COMPANY', 'f762712d-5dfd-4e92-adb7-c4217c5a286c', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'NPS_survey_test', '2021-07-14 21:54:00', '2021-07-14 22:51:00', '', '', '2021-07-15 05:51:09', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('emailchain', '9839f2b8ea0c42738f770c4c4d300e14', 'COMPANY', '9839f2b8-ea0c-4273-8f77-0c4c4d300e14', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-14 11:41:00', '2021-07-15 02:44:00', '', '/All/Jamf Now/Dashboards | Jamf Now /Jamf Now | Team', '2021-07-14 18:44:28', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('omada health2', 'd49b45eee317438ab1ebf17068808de0', 'COMPANY', 'd49b45ee-e317-438a-b1eb-f17068808de0', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-14 19:36:00', '2021-07-14 19:41:00', '', '', '2021-07-15 02:41:34', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('omada nps', 'bcf9576d5db647adbdef2cd84ce1b9fd', 'COMPANY', 'bcf9576d-5db6-47ad-bdef-2cd84ce1b9fd', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'omada nps survey2', '2021-07-14 23:03:00', '2021-07-16 09:55:00', '', '', '2021-07-15 06:17:07', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('A_Product Survey', 'e91b69a9941d4cb2a44fa303861a2b44', 'COMPANY', 'e91b69a9-941d-4cb2-a44f-a303861a2b44', 'NEW', 'NPS Survey', 'NON_TRANSACTIONAL', 'NPS survey_', '2021-07-21 00:34:00', '2021-07-21 00:34:00', '', '', '2021-07-21 07:34:45', 2, '', '', '', NULL, NULL),
('Generic Program', 'ee0a3e515b7e4601be9e0ff6cc316e5e', 'COMPANY', 'ee0a3e51-5b7e-4601-be9e-0ff6cc316e5e', 'PROCESSING', 'Generic Survey', 'NON_TRANSACTIONAL', 'Generic survey_', '2021-07-14 20:54:00', '2021-07-14 21:04:00', '', '', '2021-07-15 04:06:21', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('deltek_csat_survey_test', 'f2b581796b84481da0be75e0bd2d9413', 'COMPANY', 'f2b58179-6b84-481d-a0be-75e0bd2d9413', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'deltek_csat_survey', '2021-07-14 23:26:00', '2021-07-15 00:30:00', '', '', '2021-07-15 07:31:27', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('csatarun', '6b52822eea8d49eaa69948166f91aadf', 'COMPANY', '6b52822e-ea8d-49ea-a699-48166f91aadf', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'csatarun', '2021-07-15 10:43:00', '2021-07-15 12:30:00', '', '', '2021-07-16 19:30:56', 6, 'QUERY_BUILDER', '', '', NULL, NULL),
('omada health_sindhu', '7d95a28a9a1840bea932c4d06e4d2193', 'COMPANY', '7d95a28a-9a18-40be-a932-c4d06e4d2193', 'NEW', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-14 19:06:00', '2021-07-14 21:49:00', '', '', '2021-07-15 02:06:05', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('CSAT SURVEY OMADA', '254cb311c3274623a57d14687d93601a', 'COMPANY', '254cb311-c327-4623-a57d-14687d93601a', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'OMADA CSAT SURVEY', '2021-07-14 22:26:00', '2021-07-14 22:50:00', '', '', '2021-07-15 05:50:16', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('PL Program', '54a40964fa9d4f23839f36ddfed2926f', 'COMPANY', '54a40964-fa9d-4f23-839f-36ddfed2926f', 'PROCESSING', 'Generic Survey', 'NON_TRANSACTIONAL', 'Survey by_PL', '2021-07-14 21:59:00', '2021-07-14 22:09:00', '', '', '2021-07-15 05:11:26', 8, 'POWER_LIST', '', '', NULL, NULL),
('OMADA _SINDHU', '28de81ef1b894da487e59a1a019f3502', 'COMPANY', '28de81ef-1b89-4da4-87e5-9a1a019f3502', 'NEW', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'OMADA CSAT SURVEY', '2021-07-14 22:06:00', '2021-07-14 22:11:00', '', '', '2021-07-15 05:06:55', 8, 'QUERY_BUILDER', '', '', NULL, NULL),
('deltek_nps_pl', '3aeb3f14efdd4a5798f3e26facdb1f4f', 'COMPANY', '3aeb3f14-efdd-4a57-98f3-e26facdb1f4f', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'deltek_nps', '2021-07-15 00:32:00', '2021-07-15 00:38:00', '', '', '2021-07-15 07:40:05', 8, 'POWER_LIST', '', '', NULL, NULL),
('deltek_generic_test', '6c370c3370ab414fb272d951a68cc62c', 'COMPANY', '6c370c33-70ab-414f-b272-d951a68cc62c', 'PROCESSING', 'Generic Survey', 'NON_TRANSACTIONAL', 'deltek_generic', '2021-07-15 00:47:00', '2021-07-15 00:54:00', '', '', '2021-07-15 07:56:06', 8, 'POWER_LIST', '', '', NULL, NULL),
('meeting', 'ca352ed007d84bc690f9f31164eae9ef', 'COMPANY', 'ca352ed0-07d8-4bc6-90f9-f31164eae9ef', 'NEW', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'sandhya csat survey2', '2021-07-15 08:58:00', '2021-07-15 08:58:00', '', '/All/Uncategorized', '2021-07-15 15:58:18', 7, '', '', '', NULL, NULL),
('email_Chain_Bhavana', '40201c66260d4cef84e4033406ef72fd', 'COMPANY', '40201c66-260d-4cef-84e4-033406ef72fd', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-15 11:42:00', '2021-07-15 11:57:00', '', '', '2021-07-15 18:57:24', 7, 'POWER_LIST', '', '', NULL, NULL),
('emailtemarun', 'bedb48c51c4a427aa72c37b48541d8bf', 'COMPANY', 'bedb48c5-1c4a-427a-a72c-37b48541d8bf', 'NEW', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-15 12:37:00', '2021-07-15 12:52:00', '', '', '2021-07-15 19:37:30', 7, 'QUERY_BUILDER', '', '', NULL, NULL),
('Avinash NPS', 'd6ae39fbc3014aa29ef1fb3514b5801d', 'COMPANY', 'd6ae39fb-c301-4aa2-9ef1-fb3514b5801d', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'Avinash_NPS Survey', '2021-07-07 03:54:00', '2021-07-15 22:10:00', '', '', '2021-07-08 11:26:58', 14, 'QUERY_BUILDER', '', '', NULL, NULL),
('practice', 'ab0bce95b92b4485b65759d04ef63710', 'COMPANY', 'ab0bce95-b92b-4485-b657-59d04ef63710', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-15 22:08:00', '2021-07-15 22:18:00', '', '/All/Uncategorized', '2021-07-16 05:18:33', 7, 'POWER_LIST', '', '', NULL, NULL),
('demo', 'd93995c2994340f8a1f8447c769a05ac', 'COMPANY', 'd93995c2-9943-40f8-a1f8-447c769a05ac', 'NEW', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-16 03:14:00', '2021-07-16 03:22:00', '', '/All/Uncategorized', '2021-07-16 10:14:47', 7, 'POWER_LIST', '', '', NULL, NULL),
('practice', 'd0dde41f99e143b3be9fd1d6be3e9d96', 'COMPANY', 'd0dde41f-99e1-43b3-be9f-d1d6be3e9d96', 'NEW', 'Generic Survey', 'NON_TRANSACTIONAL', 'deltek_generic', '2021-07-16 00:46:00', '2021-07-16 00:48:00', '', '/All/Uncategorized', '2021-07-16 07:46:33', 7, 'CSV', '', '', NULL, NULL),
('JO_Bindhu', '20b3b7283aea4d1cba0d852964c24958', 'COMPANY', '20b3b728-3aea-4d1c-ba0d-852964c24958', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'Test_Survey', '2021-07-16 03:21:00', '2021-07-16 03:54:00', '', '', '2021-07-16 10:39:03', 7, 'CSV, CSV', '', '', NULL, NULL),
('CSAT_R', 'e2cc8555f87c4af29febf77510dc9952', 'COMPANY', 'e2cc8555-f87c-4af2-9feb-f77510dc9952', 'NEW', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'bindu csat survey', '2021-07-16 03:30:00', '2021-07-20 10:30:00', '', '', '2021-07-16 10:30:30', 7, 'QUERY_BUILDER', '', '', NULL, NULL),
('B-template jo', '920c4c255b6948dfaaceb3058bdd28a8', 'COMPANY', '920c4c25-5b69-48df-aace-b3058bdd28a8', 'PROCESSING', 'Generic Survey', 'NON_TRANSACTIONAL', 'Generic survey_', '2021-07-16 05:39:00', '2021-07-16 05:52:00', '', '/All/Uncategorized', '2021-07-16 12:53:02', 6, 'CSV', '', '', NULL, NULL),
('npsavinash', 'd45c4d834d254b298ae78fa305b380b3', 'COMPANY', 'd45c4d83-4d25-4b29-8ae7-8fa305b380b3', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'NPSavinash', '2021-07-16 10:51:00', '2021-07-16 10:59:00', '', '', '2021-07-18 18:01:09', 4, 'QUERY_BUILDER', '', '', NULL, NULL),
('demo', 'ead632ae9aae4a6ca352bc3d27abaeab', 'COMPANY', 'ead632ae-9aae-4a6c-a352-bc3d27abaeab', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-16 04:06:00', '2021-07-16 05:42:00', '', '', '2021-07-16 11:10:04', 7, 'CSV', '', '', NULL, NULL),
('Name pro Rjeys', '2b842a77487e4d0a951bdceb3d3c165c', 'COMPANY', '2b842a77-487e-4d0a-951b-dceb3d3c165c', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-16 09:50:00', '2021-07-16 09:58:00', '', '', '2021-07-16 16:58:38', 6, 'CSV', '', '', NULL, NULL),
('emailchainavinash', '520573163d4240cbabf76c58b720ec0e', 'COMPANY', '52057316-3d42-40cb-abf7-6c58b720ec0e', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-16 07:52:00', '2021-07-16 08:02:00', '', '', '2021-07-16 15:02:40', 6, 'QUERY_BUILDER', '', '', NULL, NULL),
('AArunNPS2', 'fb5d963b29f34b7d96bc9f0c3d7b95d5', 'COMPANY', 'fb5d963b-29f3-4b7d-96bc-9f0c3d7b95d5', 'NEW', 'NPS Survey', 'NON_TRANSACTIONAL', 'AArunNPS', '2021-07-07 05:31:00', '2021-07-16 09:57:00', '', '', '2021-07-07 12:31:09', 15, 'QUERY_BUILDER', '', '', NULL, NULL),
('Avinash_NPS', 'a281a1646ff040e29f3308a1eb3602cc', 'COMPANY', 'a281a164-6ff0-40e2-9f33-08a1eb3602cc', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'Avinash_NPS', '2021-07-16 09:04:00', '2021-07-16 09:33:00', '', '', '2021-07-16 16:13:41', 6, 'QUERY_BUILDER', '', '', NULL, NULL),
('Generic@survey', '675ccb21a66c450daa809ef4692cb06c', 'COMPANY', '675ccb21-a66c-450d-aa80-9ef4692cb06c', 'NEW', 'Generic Survey', 'NON_TRANSACTIONAL', 'Generic survey_', '2021-07-16 10:26:00', '2021-07-16 20:56:00', '', '', '2021-07-16 17:26:29', 6, '', '', '', NULL, NULL),
('omada health CSAT survey', '562a1161de2b448a9fcfe1e50795e85a', 'COMPANY', '562a1161-de2b-448a-9fcf-e1e50795e85a', 'PROCESSING', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'omada health CSAT survey', '2021-07-14 19:51:00', '2021-07-16 12:41:00', '', '', '2021-07-16 19:41:57', 6, 'QUERY_BUILDER', '', '', NULL, NULL),
('Power', '37ed6235325b4cf99f4f54353c2ec5be', 'COMPANY', '37ed6235-325b-4cf9-9f4f-54353c2ec5be', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'NPS survey_', '2021-07-17 07:54:00', '2021-07-17 07:59:00', '', '', '2021-07-18 15:01:16', 4, 'POWER_LIST', '', '', NULL, NULL),
('B program4', '18ee177e236747ca95ed7aba1e5232df', 'COMPANY', '18ee177e-2367-47ca-95ed-7aba1e5232df', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-17 11:25:00', '2021-07-17 11:29:00', '', '', '2021-07-17 18:30:15', 5, 'CSV', '', '', NULL, NULL),
('S name program', '8dd9ab3209fd45519a4ac2fdbbbce2fb', 'COMPANY', '8dd9ab32-09fd-4551-9a4a-c2fdbbbce2fb', 'NEW', 'Customer Satisfaction Survey', 'TRANSACTIONAL', 'Apple_CSAT', '2021-07-17 12:38:00', '2021-07-18 09:30:00', '', '', '2021-07-17 19:38:27', 5, 'QUERY_BUILDER', '', '', NULL, NULL),
('Practice A1', '76749ebd52354293b7dd3bc78244ba55', 'COMPANY', '76749ebd-5235-4293-b7dd-3bc78244ba55', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'Practice A1', '2021-07-17 22:49:00', '2021-07-17 22:56:00', '', '/All/Uncategorized', '2021-07-18 05:57:54', 5, 'QUERY_BUILDER', '', '', NULL, NULL),
('Practice-A Program', 'a0b9c1774946490d8e5008a65fe4e5f7', 'COMPANY', 'a0b9c177-4946-490d-8e50-08a65fe4e5f7', 'PROCESSING', 'NPS Survey', 'NON_TRANSACTIONAL', 'Practice-A survey', '2021-07-17 21:49:00', '2021-07-18 09:28:00', '', '', '2021-07-18 05:00:51', 5, 'QUERY_BUILDER', '', '', NULL, NULL),
('JO for IBM', '9bac89c426514d2392e4565b92b6608d', 'COMPANY', '9bac89c4-2651-4d23-92e4-565b92b6608d', 'PROCESSING', 'Email Chain', 'NON_TRANSACTIONAL', '', '2021-07-19 03:11:00', '2021-07-19 03:15:00', '', '/All/Uncategorized', '2021-07-19 10:15:59', 4, 'POWER_LIST', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `DELLBOOMI_mda_objects`
--

CREATE TABLE `DELLBOOMI_mda_objects` (
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fieldsCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recordsCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `actualRecords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `liveRowsCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `volume` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateKeysCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateKeys` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duplicateRecordsCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formulaFieldsCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formulaFields` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `requiredFieldsCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hasLookupButNotRequiredCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hasLookupButNotRequired` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hasUpdateKeys` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifiedDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifiedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `collecitonId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Is_Required` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DELLBOOMI_milestones`
--

CREATE TABLE `DELLBOOMI_milestones` (
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastModifiedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `Is_Required` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DELLBOOMI_playbooks`
--

CREATE TABLE `DELLBOOMI_playbooks` (
  `entity_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cta_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `task_count` float DEFAULT NULL,
  `Is_Required` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DELLBOOMI_playbooks`
--

INSERT INTO `DELLBOOMI_playbooks` (`entity_type`, `is_active`, `cta_type`, `name`, `description`, `id`, `task_count`, `Is_Required`, `comments`) VALUES
('ACCOUNT', 'Yes', 'Expansion', 'email playbook', '', 'a0x5e000000zdc4AAA', 1, NULL, NULL),
('RELATIONSHIP', 'Yes', 'Expansion', 'product development', '', 'a0x5e000000zcNFAAY', 1, NULL, NULL),
('RELATIONSHIP', 'Yes', 'Expansion', 'product development', '', 'a0x5e000000zcNKAAY', 1, NULL, NULL),
('ACCOUNT', 'Yes', 'Objective', 'pb', '', 'a0x5e000000zXAFAA2', 1, NULL, NULL),
('ACCOUNT', 'Yes', 'Expansion', 'playbook for int cta', 'playbook for int cta', 'a0x5e000000yzxjAAA', 1, NULL, NULL),
('ACCOUNT', 'Yes', 'Activity', 'cta_2_7', 'testing', 'a0x5e000000yzyIAAQ', 3, NULL, NULL),
('ACCOUNT', 'Yes', 'Lifecycle', 'Training a new Customer', '', 'a0x5e000000yDC8AAM', 6, NULL, NULL),
('ACCOUNT', 'Yes', 'Risk', 'No Response', '', 'a0x5e000000yDCNAA2', 1, NULL, NULL),
('ACCOUNT', 'Yes', 'Objective', 'Sell', '', 'a0x5e000000yDCXAA2', 1, NULL, NULL),
('ACCOUNT', 'Yes', 'Expansion', 'Audi Expansion', '', 'a0x5e000000yDC3AAM', 1, NULL, NULL),
('ACCOUNT', 'Yes', 'Lifecycle', 'review of customer', '', 'a0x5e000000yDCDAA2', 4, NULL, NULL),
('ACCOUNT', 'Yes', 'Expansion', 'customer company expansion', '', 'a0x5e000000yDCSAA2', 4, NULL, NULL),
('ACCOUNT', 'Yes', 'Risk', 'Decline in usage', '', 'a0x5e000000xXK1AAM', 5, NULL, NULL),
('ACCOUNT', 'Yes', 'Risk', 'Loss of Power User', '', 'a0x5e000000xXK2AAM', 3, NULL, NULL),
('ACCOUNT', 'Yes', 'Risk', 'Loss of Exec Sponsor', '', 'a0x5e000000xXK3AAM', 5, NULL, NULL),
('ACCOUNT', 'Yes', 'Risk', 'Collections', '', 'a0x5e000000xXK4AAM', 6, NULL, NULL),
('ACCOUNT', 'Yes', 'Risk', 'NPS Detractor', '', 'a0x5e000000xXK5AAM', 5, NULL, NULL),
('ACCOUNT', 'Yes', 'Expansion', 'NPS Promoter', '', 'a0x5e000000xXK6AAM', 3, NULL, NULL),
('ACCOUNT', 'Yes', 'Lifecycle', '120 Days Until Renewal', '', 'a0x5e000000xXK7AAM', 6, NULL, NULL),
('ACCOUNT', 'Yes', 'Lifecycle', 'Annual Review', '', 'a0x5e000000xXK8AAM', 7, NULL, NULL),
('ACCOUNT', 'Yes', 'Lifecycle', 'New Customer signed on', '', 'a0x5e000000xXK9AAM', 5, NULL, NULL),
('ACCOUNT', 'Yes', 'Risk', 'Onboarding > X days', '', 'a0x5e000000xXKAAA2', 4, NULL, NULL),
('ACCOUNT', 'Yes', 'Risk', 'No engagement', '', 'a0x5e000000xXKBAA2', 4, NULL, NULL),
('ACCOUNT', 'Yes', 'Risk', 'Lapsed Renewal', '', 'a0x5e000000xXKCAA2', 5, NULL, NULL),
('RELATIONSHIP', 'Yes', 'Lifecycle', 'Annual Review', '', 'a0x5e000000yqG1AAI', 2, NULL, NULL),
('ACCOUNT', 'Yes', 'Expansion', 'test', '', 'a0x5e000000zPxpAAE', 1, NULL, NULL),
('ACCOUNT', 'Yes', 'Risk', 'R_Apple Produts', '', 'a0x5e000000zKsKAAU', 1, NULL, NULL),
('ACCOUNT', 'Yes', 'Activity', 'R Apple_Meeting', 'New product launch', 'a0x5e000000zKsFAAU', 0, NULL, NULL),
('ACCOUNT', 'Yes', 'Risk', 'playbook_S', '', 'a0x5e000000zKsAAAU', 1, NULL, NULL),
('ACCOUNT', 'Yes', 'Activity', 'Apple new Product Launch', 'Meeting for New Product Launch', 'a0x5e000000zKsPAAU', 1, NULL, NULL),
('ACCOUNT', 'Yes', 'Expansion', 'Apple Business Expansion', 'About Business Expansion Review', 'a0x5e000000zKsUAAU', 1, NULL, NULL),
('RELATIONSHIP', 'Yes', 'Risk', 'Reminder Email Relationship', '', 'a0x5e000000zKseAAE', 1, NULL, NULL),
('ACCOUNT', 'Yes', 'Objective', 'campaign', '', 'a0x5e000000yja7AAA', 1, NULL, NULL),
('RELATIONSHIP', 'Yes', 'Expansion', 'Renewal for Act fiber plan 1234', '', 'a0x5e000000yq2dAAA', 2, NULL, NULL),
('RELATIONSHIP', 'Yes', 'Objective', 'Playbook for Send Plan details', '', 'a0x5e000000yq2iAAA', 1, NULL, NULL),
('RELATIONSHIP', 'Yes', 'Objective', 'Crossell Shoes', '', 'a0x5e000000zb2OAAQ', 1, NULL, NULL),
('ACCOUNT', 'Yes', 'Risk', 'Test_Risk_Playbook', '', 'a0x5e000000zKxGAAU', 3, NULL, NULL),
('ACCOUNT', 'Yes', 'Objective', 'Improvise the usage', '', 'a0x5e000000yq7MAAQ', 4, NULL, NULL),
('RELATIONSHIP', 'Yes', 'Risk', 'No response', '', 'a0x5e000000yqG6AAI', 2, NULL, NULL),
('RELATIONSHIP', 'Yes', 'Objective', 'New Version', '', 'a0x5e000000yqGGAAY', 1, NULL, NULL),
('ACCOUNT', 'Yes', 'Lifecycle', 'playbook_test_B', 'sample playbook', 'a0x5e000000yuUdAAI', 2, NULL, NULL),
('RELATIONSHIP', 'Yes', 'Error', 'error', '', 'a0x5e000000yzxyAAA', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `DELLBOOMI_reports`
--

CREATE TABLE `DELLBOOMI_reports` (
  `asset_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `folder_detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `graphtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sourceobjectname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedobjects` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visualizationtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reportcount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `externalviewid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_used_in_dashboard` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dashboard_names` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_used_in_360` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layout_section_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_used_in_R360` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel_layout_section_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_used_in_jo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jo_names` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Is_Required` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DELLBOOMI_reports`
--

INSERT INTO `DELLBOOMI_reports` (`asset_name`, `asset_description`, `asset_type`, `asset_source`, `folder_detail`, `graphtype`, `sourceobjectname`, `linkedobjects`, `visualizationtype`, `reportcount`, `externalviewid`, `reference_id`, `is_used_in_dashboard`, `dashboard_names`, `is_used_in_360`, `layout_section_name`, `is_used_in_R360`, `rel_layout_section_name`, `is_used_in_jo`, `jo_names`, `created_by`, `modified_by`, `created_date`, `modified_date`, `Is_Required`, `comments`) VALUES
('SAVE', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Company', '', 'GRID', '1', '', 'c1fce549-8682-4763-b96f-43fcc8b5cdeb', 'false', '', 'true', 'Default Layout : Company reports', 'false', '', 'false', '', 'RJEYS Demo User', 'RJEYS Demo User', '2021-05-14 09:53', '2021-05-14 09:53', NULL, NULL),
('Report1', 'testing purpose', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Company', '', 'GRID', '1', '', 'f605ce9f-cbac-406b-8b24-fa6be395a294', 'false', '', 'true', 'Default Layout : Company reports, Default Layout : Company Reports, Copy of Default Layout : Company Reports', 'false', '', 'false', '', 'RJEYS Demo User', 'RJEYS Demo User', '2021-05-16 07:11', '2021-05-16 07:11', NULL, NULL),
('Motors and Products by Company', '', 'Report', 'MDA', '', 'GRAPH', 'Motors and  Products', '', 'BAR', '1', '', '7699f782-1a64-48c8-9e9f-e73ea80afc29', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Demo User', 'RJEYS Demo User', '2021-05-15 23:22', '2021-05-15 23:36', NULL, NULL),
('Motors and Products by Company 2', '', 'Report', 'MDA', '', 'GRAPH', 'Motors and  Products', '', 'COLUMN', '1', '', '5330f3b1-9184-4344-965e-77d86c4c2c31', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Demo User', 'RJEYS Demo User', '2021-05-15 23:26', '2021-05-15 23:36', NULL, NULL),
('ML_Campaign', '', 'Report', 'MDA', '', 'GRID', 'MovieLand Campaign', '', 'GRID', '1', '', 'b46d03ae-be81-490c-8c37-d7627494cb7f', 'false', '', 'false', '', 'false', '', 'false', '', 'Rebecca Tripti', 'Rebecca Tripti', '2021-05-16 05:56', '2021-05-16 06:01', NULL, NULL),
('Report123', 'Testing purpose', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Company', '', 'GRID', '1', '', 'c40a2143-bb55-4dc9-aace-b17658efb7da', 'false', '', 'true', 'Default Layout : Company reports, Default Layout : Company Reports, Copy of Default Layout : Company Reports', 'false', '', 'false', '', 'RJEYS Demo User', 'RJEYS Demo User', '2021-05-16 07:12', '2021-05-16 07:33', NULL, NULL),
('Report1233', 'Testing purpose', 'Report', 'SFDC', '/All/Uncategorized', '', 'Account', '[]', 'List', '1', '', 'a1U5e000000pGSIEA2', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Demo User', 'RJEYS Demo User', '2021-05-16 07:34', '2021-05-16 07:34', NULL, NULL),
('Account_Report_Builder_Analysis', '', 'Report', 'SFDC', '', 'LIST', 'Account', '[JBCXM__CustomerInfo__c]', 'Chart', '1', '', 'a1U5e000000pHWvEAM', 'true', 'Test_DB, Motors and Products dashboard', 'false', '', 'false', '', 'false', '', 'Deepika Nasika', 'Deepika Nasika', '2021-05-17 02:54', '2021-05-17 02:55', NULL, NULL),
('All CTAs', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'Call To Action', '[]', 'List', '1', '', 'a1U5e000000pGSDEA2', 'true', 'Test_DB, Admin:Employee_DD', 'true', 'Default Layout : Section/Embed Page BInRaSai, Default Layout : reports related to  CTA', 'true', 'Default Layout : Call To Action', 'false', '', 'Shalini Ranga', 'RJEYS Infinity Solutions', '2021-05-16 06:44', '2021-07-05 08:26', NULL, NULL),
('CTA\'s information by Account', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'Call To Action', '[]', 'List', '1', '', 'a1U5e000000pJ2zEAE', 'true', 'Admin:Employee_DD', 'true', 'Default Layout : reports related to  CTA', 'true', 'Default Layout : Call To Action', 'false', '', 'Deepika Nasika', 'Deepika Nasika', '2021-05-18 00:33', '2021-06-19 06:36', NULL, NULL),
('Top 5 salaried Employees', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Employees', '', 'GRID', '1', '', 'd6e0430f-a6b0-46b1-8576-47b4563c50e2', 'false', '', 'false', '', 'false', '', 'false', '', 'Deepika Nasika', 'Deepika Nasika', '2021-05-19 02:14', '2021-05-19 02:14', NULL, NULL),
('Top 7 salaried employees', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Employees', '', 'GRID', '1', '', 'e0e2ec6d-e97e-4929-969a-19f4749e373d', 'false', '', 'false', '', 'false', '', 'false', '', 'Deepika Nasika', 'Deepika Nasika', '2021-05-19 03:44', '2021-05-19 03:44', NULL, NULL),
('Top 3 salaries', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Emp1', '', 'GRID', '1', '', 'ad66bfef-29bf-4f65-b9df-6558b0f68600', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-05-19 04:54', '2021-05-19 04:54', NULL, NULL),
('Top 3 salaries of employees', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Emp1', '', 'GRID', '1', '', '25338746-4df7-4bec-a236-93b3078f49d9', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-05-19 04:55', '2021-05-19 04:56', NULL, NULL),
('Top 3 employees', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Employees', '', 'GRID', '1', '', 'cb0e0245-1675-4801-885e-521bf80bfa5e', 'false', '', 'false', '', 'false', '', 'false', '', 'Deepika Nasika', 'RJEYS Infinity Solutions', '2021-05-18 23:40', '2021-05-19 05:36', NULL, NULL),
('Employee_Job_History_Dep_Report', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'Job_History__c', '[Department_Details__c, Employee_Details__c]', 'List', '1', 'e0b5d891-ec77-4313-913d-bea357e35299', 'a1U5e000000pUomEAE', 'true', 'Admin:Employee_DD', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-05-25 03:53', '2021-05-25 03:53', NULL, NULL),
('Previous Employees Contact Information_Report', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'Job_History__c', '[Location_Details__c, Country_Details__c, Employee_Details__c, Region_Details__c]', 'List', '1', 'e0b5d891-ec77-4313-913d-bea357e35299', 'a1U5e000000pUorEAE', 'true', 'Admin:Employee_DD', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-05-25 04:20', '2021-05-25 04:20', NULL, NULL),
('Employees_Commission_Null_Include_Dep_Report', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'Employee_Details__c', '[Department_Details__c]', 'List', '1', '3b9edebb-8537-4b2c-a525-3e47a3c5afbe', 'a1U5e000000pUowEAE', 'true', 'Admin:Employee_DD', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-05-25 04:44', '2021-05-25 04:45', NULL, NULL),
('Get Employees by Postal Code Report', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'Employee_Details__c', '[Location_Details__c, Country_Details__c, Region_Details__c]', 'List', '1', '3b9edebb-8537-4b2c-a525-3e47a3c5afbe', 'a1U5e000000pUt9EAE', 'true', 'Admin:Employee_DD', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-05-25 04:51', '2021-05-25 04:51', NULL, NULL),
('Dept wise Emp Details', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Emp_final_data', '', 'GRID', '1', '', '640440b1-20d8-4acd-a007-894461b2efec', 'false', '', 'false', '', 'false', '', 'false', '', 'Deepika Nasika', 'Deepika Nasika', '2021-05-26 05:03', '2021-05-27 00:01', NULL, NULL),
('Designation Wise Emp Details', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Emp_final_data', '', 'GRID', '1', '', 'f549b159-5457-4fb7-9575-8dfb2c499957', 'false', '', 'false', '', 'false', '', 'false', '', 'Deepika Nasika', 'Deepika Nasika', '2021-05-26 05:08', '2021-05-27 00:02', NULL, NULL),
('Dept Wise Summary', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Emp_final_data', '', 'GRID', '1', '', 'c7ef2e4a-928b-4957-b62e-cb93bab065f1', 'false', '', 'false', '', 'false', '', 'false', '', 'Deepika Nasika', 'Deepika Nasika', '2021-05-26 05:18', '2021-05-26 05:54', NULL, NULL),
('Emp Final Report', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Emp_final_data', '', 'GRID', '1', '', '1e26909a-f6a8-44b0-ac0e-d9e080134b93', 'false', '', 'false', '', 'false', '', 'false', '', 'Deepika Nasika', 'Deepika Nasika', '2021-05-26 02:23', '2021-05-26 23:59', NULL, NULL),
('Designation Wise Summary', '', 'Report', 'MDA', '/All/Uncategorized', 'GRAPH', 'Emp_final_data', '', 'COLUMN', '1', '', '6f855816-83a7-4ba2-a82e-0017bd4cce90', 'false', '', 'false', '', 'false', '', 'false', '', 'Deepika Nasika', 'Deepika Nasika', '2021-05-26 05:55', '2021-05-26 06:01', NULL, NULL),
('newreport_load of customers', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'Account', '[JBCXM__CustomerInfo__c]', 'List', '1', '', 'a1U5e000000pcsBEAQ', 'true', 'Motors and Products dashboard', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-05-27 02:36', '2021-05-27 02:36', NULL, NULL),
('load to person', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Person', '', 'GRID', '1', '', 'ad36e9ce-a466-4f39-b6ba-254c857a713d', 'false', '', 'true', 'Copy of Default Layout : Person Reports, Default Layout : Person Reports', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-05-27 07:38', '2021-05-27 07:38', NULL, NULL),
('test_compperson', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Company Person', '', 'GRID', '1', '', '3b728beb-31b6-4f3c-90fd-6ff008858fe4', 'false', '', 'true', 'Default Layout : Company Person Reports, Copy of Default Layout : Company Person Reports', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-05-28 04:35', '2021-05-28 04:37', NULL, NULL),
('load to company person', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Company Person', '', 'GRID', '1', '', '65ddf016-7fef-4aad-b937-ebd40a78c8fe', 'false', '', 'true', 'Default Layout : Company Person Reports, Copy of Default Layout : Company Person Reports', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'Deepika Nasika', '2021-05-27 07:38', '2021-05-28 06:08', NULL, NULL),
('Admin: New Customers', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'Account', '[]', 'List', '1', '', 'a1U5e000000poHyEAI', 'true', 'Test_DB, rjyes_practice_dashboard, Admin: New Customers', 'false', '', 'false', '', 'false', '', 'Rebecca Tripti', 'Rebecca Tripti', '2021-06-04 06:00', '2021-06-04 06:00', NULL, NULL),
('Email_log_Report', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Email Logs', '', 'GRID', '1', '', '6296921a-8021-4070-bcc1-1aac93607a0d', 'false', '', 'false', '', 'false', '', 'false', '', 'Deepika Nasika', 'Deepika Nasika', '2021-06-10 06:16', '2021-06-10 06:16', NULL, NULL),
('Configure_Aliases_Account', '', 'Report', 'SFDC', '', 'STACKED-BAR', 'Account', '[JBCXM__CustomerInfo__c]', 'Chart', '1', '', 'a1U5e000000pHbDEAU', 'true', 'Rjeys_Bhavana1, RJEYS_OBJ_TEST_Dashboard', 'false', '', 'false', '', 'false', '', 'Deepika Nasika', 'Deepika Nasika', '2021-05-17 05:53', '2021-06-18 03:41', NULL, NULL),
('new_customerinfo', '', 'Report', 'SFDC', '/All/Uncategorized', 'WIDGET', 'Customer Info', '[]', 'Chart', '1', '', 'a1U5e000000pgLYEAY', 'false', '', 'true', 'Copy of Default Layout : Customer Info Reports', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-05-28 00:31', '2021-06-12 04:00', NULL, NULL),
('Test', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Account Scorecard History', '', 'GRID', '1', '', '65edfa1d-9100-4632-8731-e5f8696b8e7c', 'true', 'rjyes_practice_dashboard, obj', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-14 00:42', '2021-06-14 00:42', NULL, NULL),
('shalini test', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'Call To Action', '[]', 'List', '1', '', 'a1U5e000000qqAAEAY', 'false', '', 'true', 'Default Layout : Section/Embed Page BInRaSai, Default Layout : Call to Action Reports', 'false', '', 'false', '', 'Shalini Ranga', 'Shalini Ranga', '2021-06-17 07:55', '2021-06-17 07:55', NULL, NULL),
('custom color', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Employees', '', 'GRID', '1', '', 'a9ff2c20-7fa3-4ecb-8622-efc7df89ccb3', 'true', 'Custom color setting on Report', 'false', '', 'false', '', 'false', '', 'Rebecca Tripti', 'Rebecca Tripti', '2021-06-19 03:36', '2021-06-19 03:36', NULL, NULL),
('Account group by rating', '', 'Report', 'SFDC', '', 'STACKED-COLUMN', 'Account', '[]', 'Chart', '1', '', 'a1U5e000000qrjWEAQ', 'true', 'Account rating, Rjeys_Bhavana1, obj, Admin: New Customers, Rjeys_Dashboard, Overall Rev', 'false', '', 'false', '', 'true', 'NPS Survey on Reliance Program,In line survey', 'Rebecca Tripti', 'Rebecca Tripti', '2021-06-19 01:54', '2021-06-19 02:45', NULL, NULL),
('Accounts grouped by Industry', '', 'Report', 'SFDC', '', 'LIST', 'Account', '[]', 'Chart', '1', '', 'a1U5e000000qrjREAQ', 'true', 'Test_DB, Overall Rev', 'false', '', 'false', '', 'false', '', 'Rebecca Tripti', 'Rebecca Tripti', '2021-06-19 01:48', '2021-06-19 02:45', NULL, NULL),
('Admin: Creamstone Contacts', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'Contact', '[]', 'List', '1', '', 'a1U5e000000poHtEAI', 'true', 'Admin: New Customers', 'true', 'Copy of Default Layout : CreamStone Contacts report, Default Layout : CreamStone Contacts report', 'true', 'Default Layout : Contact', 'false', '', 'Rebecca Tripti', 'Rebecca Tripti', '2021-06-04 05:39', '2021-06-19 10:21', NULL, NULL),
('department color setting', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Department', '', 'GRID', '1', '', '1c7910c2-b73a-4b32-88ed-e8ffe2f7baca', 'false', '', 'false', '', 'false', '', 'false', '', 'Rebecca Tripti', 'Rebecca Tripti', '2021-06-19 03:50', '2021-06-19 03:50', NULL, NULL),
('Widget report', '', 'Report', 'SFDC', '/All/Uncategorized', 'WIDGET', 'Account', '[]', 'Chart', '1', '', 'a1U5e000000qrjbEAA', 'false', '', 'false', '', 'false', '', 'false', '', 'Deepika Nasika', 'Deepika Nasika', '2021-06-19 06:46', '2021-06-19 06:46', NULL, NULL),
('Report on milestone', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'Milestone', '[]', 'List', '1', '', 'a1U5e000000qzxnEAA', 'false', '', 'false', '', 'true', 'Default Layout : Milestone', 'false', '', 'Deepika Nasika', 'Deepika Nasika', '2021-06-25 08:56', '2021-06-25 08:56', NULL, NULL),
('top 5 salaries', 'top 5 salaries', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Top 5 salaried Employees', '', 'GRID', '1', '', '7093fd00-84b2-4410-8672-7300bbd5f3ad', 'false', '', 'false', '', 'false', '', 'false', '', 'Bindu t', 'Bindu t', '2021-06-26 03:03', '2021-06-26 03:03', NULL, NULL),
('Report2 on milestone', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'Milestone', '[]', 'List', '1', '', 'a1U5e000000r08BEAQ', 'false', '', 'false', '', 'true', 'Default Layout : Milestone', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-26 03:30', '2021-06-26 03:30', NULL, NULL),
('avinash test 1', 'testing data graph', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'cust data', '', 'GRID', '1', '', 'f9a20ab7-e6ba-4840-9c71-ebc59593d56c', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 12:04', '2021-06-28 12:04', NULL, NULL),
('RJEYS - Batch 2 - Report on Cust obj', '', 'Report', 'MDA', '', 'GRAPH', 'RJEYS - batch 2 - cust obj3', '', 'LINE', '1', '', '6810b1b5-41ab-4d6a-bc50-67aaaada59fc', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 08:33', '2021-06-28 08:34', NULL, NULL),
('RJEYS - Batch 2 - Report on Cust obj 2', '', 'Report', 'MDA', '/All/Uncategorized', 'GRAPH', 'RJEYS - batch 2 - cust obj3', '', 'LINE', '1', '', 'd513cb74-dd96-45bf-831b-6825780b5537', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 08:35', '2021-06-28 08:35', NULL, NULL),
('Mobile_Brand 1', '', 'Report', 'MDA', '', 'GRID', 'Mobile_Brands', '', 'GRID', '1', '', '462db4dc-2cb6-4745-851d-28725d360e55', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 08:37', '2021-06-28 08:37', NULL, NULL),
('st', '', 'Report', 'MDA', '/All/Uncategorized', 'GRAPH', 'Studentacc', '', 'LINE', '1', '', '4579dd20-d4bd-4b3d-8820-0cf51858dc9d', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 08:44', '2021-06-28 08:44', NULL, NULL),
('Orders_B', '', 'Report', 'MDA', '', 'GRID', 'Orders', '', 'GRID', '1', '', '40b6a348-ac8a-45a2-b4a1-e677a40a063d', 'true', 'Orders_B', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 18:54', '2021-06-28 21:40', NULL, NULL),
('Orders_agg_B', '', 'Report', 'MDA', '', 'GRAPH', 'Orders', '', 'BAR', '1', '', 'b7aef563-9677-4f5c-8cbc-f043977fd4cd', 'true', 'Orders_B', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 19:03', '2021-06-28 21:40', NULL, NULL),
('R_Mobile', 'Mobile sale By Brand wise', 'Report', 'MDA', '', 'GRID', 'R_Mobiles', '', 'GRID', '1', '', '4b925ebc-709b-49e3-aca6-0f32bf5cf089', 'true', 'Mobiles, R Brand Mobies, Overall Rev', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 19:28', '2021-06-28 20:17', NULL, NULL),
('empnew', '', 'Report', 'MDA', '', 'GRID', 'Employe New', '', 'GRID', '1', '', '5e734180-70c5-4675-8b0a-374d318d5564', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 09:17', '2021-06-28 23:46', NULL, NULL),
('R_Mobile Price', 'Mobile sale By Brand wise', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'R_Mobiles', '', 'GRID', '1', '', 'a9109747-e6ae-4906-942a-0aa090b942f6', 'true', 'Mobiles, R Brand Mobies', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 20:20', '2021-06-28 20:20', NULL, NULL),
('R_Mobile Overall', 'Mobile sale By Brand wise', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'R_Mobiles', '', 'GRID', '1', '', 'daf9d7a4-d2ee-4aaf-925a-5fade4cd12dc', 'true', 'Mobiles, R Brand Mobies', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 20:20', '2021-06-28 20:20', NULL, NULL),
('Customer Data', '', 'Report', 'MDA', '', 'GRAPH', 'Customer Details', '', 'PIE', '1', '', '138ca86c-feb9-4060-a158-888bc6ddb152', 'true', 'Customer Details', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 22:59', '2021-06-28 23:00', NULL, NULL),
('R_sales', '', 'Report', 'MDA', '', 'GRID', 'R_sales', '', 'GRID', '1', '', '7afe04e5-91c9-4803-8e62-73624cb6e0e3', 'true', 'R_Sales', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 21:32', '2021-06-28 21:32', NULL, NULL),
('RJEYS - Int 2', 'Published from data designer, for design: RJEYS - Int', 'Report', 'MDA', '/All/Uncategorized', 'GRAPH', 'RJEYS - Int', '', 'COLUMN_LINE', '1', '', 'af69c161-f4e7-4f99-9c98-f8efbdfb1fe3', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 23:28', '2021-06-28 23:29', NULL, NULL),
('data', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'data', '', 'GRID', '1', '', '6928f113-d239-442a-88a7-40d1cb2a54ef', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-28 23:50', '2021-06-28 23:50', NULL, NULL),
('[DD] dd_demoreport', 'Published from data designer, for design: dd_demo_1', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'dd_demo_1', '', 'GRID', '1', '', 'fbb3b33b-3ff6-4558-ad62-cfdf4887eab8', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-29 01:03', '2021-06-29 01:03', NULL, NULL),
('SP in SS: Objectives List', 'description', 'Report', 'SFDC', '', '', 'Call To Action', '[]', 'List', '1', '', 'a1U5e000000r6i4EAA', 'false', '', 'true', 'Default Layout : Section/Embed Page BInRaSai, Default Layout : Call to Action Reports', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-29 03:28', '2021-06-29 03:28', NULL, NULL),
('amazonfile', '', 'Report', 'MDA', '', 'GRID', 'Amazonfile', '', 'GRID', '1', '', '3cdba99e-620e-4213-89ca-f16cd0da7a80', 'true', 'CSM Apple', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-29 00:13', '2021-06-29 23:47', NULL, NULL),
('Electronic Products Data', '', 'Report', 'MDA', '', 'GRAPH', 'Electronic Details', '', 'COLUMN_LINE', '1', '', 'bfb5da93-1f26-4019-b01d-da7284602e15', 'true', 'Electronical Producte Details', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-29 03:25', '2021-06-29 03:29', NULL, NULL),
('SP in SS: Task Details', 'description', 'Report', 'SFDC', '', '', 'CSTask', '[]', 'List', '1', '', 'a1U5e000000r6mHEAQ', 'false', '', 'false', '', 'true', 'Default Layout : CSTask', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-29 05:25', '2021-06-29 05:25', NULL, NULL),
('SP in SS: Timeline Details', '', 'Report', 'MDA', '', 'GRID', 'Activity Timeline', '', 'GRID', '1', '', 'eb5e07d5-ef05-4a0f-b637-1c6c464416f6', 'false', '', 'false', '', 'true', 'Default Layout : Activity Timeline', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-29 05:26', '2021-06-29 05:26', NULL, NULL),
('[DD] DD_orders_cust_product_B', 'Published from data designer, for design: dd_orders_cust_product_B', 'Report', 'MDA', '', 'GRID', 'dd_orders_cust_product_B', '', 'GRID', '1', '', '2301a5c7-48c6-477a-873d-c2dc51a8670f', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-29 05:38', '2021-06-29 05:48', NULL, NULL),
('calendar data', '', 'Report', 'MDA', '', 'GRAPH', 'Calendar_rjeys', '', 'COLUMN', '1', '', '6d7a8ff4-e7a3-4c13-82bb-6cdc438691f6', 'true', 'RJEYS_OBJ_TEST_Dashboard, calendar data', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-29 21:06', '2021-06-29 21:09', NULL, NULL),
('EMP Data', '', 'Report', 'MDA', '', 'GRAPH', 'Emp_Rjeys', '', 'STACKED_COLUMN', '1', '', '9b3223f1-bc60-49e6-b0f8-4f84f03fb9b4', 'true', 'EMP Data', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-30 03:30', '2021-06-30 03:31', NULL, NULL),
('Product_Rjeys data Table', '', 'Report', 'MDA', '', 'GRID', 'Product_Rjeys', '', 'GRID', '1', '', '0f959ebb-4460-499d-80d7-89302673e87f', 'true', 'Product_Rjeys Table', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-30 07:35', '2021-06-30 07:36', NULL, NULL),
('Product_Rjeys data Graph', '', 'Report', 'MDA', '', 'GRAPH', 'Product_Rjeys', '', 'AREA', '1', '', 'a0d7a5de-4d0f-453c-87cb-2f55680bd9e9', 'true', 'Product_Rjeys Graph', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-30 07:36', '2021-06-30 07:36', NULL, NULL),
('Gainsight', '', 'Report', 'MDA', '/All/Uncategorized', 'GRAPH', 'RJESY Emp Exp Details', '', 'WIDGET', '1', '', '719414a8-dcee-4ba8-a545-a21de353862b', 'true', 'RJEYS Emp Exp', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-30 22:07', '2021-06-30 22:13', NULL, NULL),
('RJEYS Infinity Solutions', '', 'Report', 'MDA', '/All/Uncategorized', 'GRAPH', 'RJESY Emp Exp Details', '', 'WIDGET', '1', '', 'd0cc1a18-6e28-4691-99f1-ff47315ad633', 'true', 'RJEYS Emp Exp', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-30 22:14', '2021-06-30 22:14', NULL, NULL),
('SATYAM COMPUTER SERVICES', '', 'Report', 'MDA', '/All/Uncategorized', 'GRAPH', 'RJESY Emp Exp Details', '', 'WIDGET', '1', '', 'a3e71e4b-16d1-403b-9365-b8cb401cc967', 'true', 'RJEYS Emp Exp', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-30 22:15', '2021-06-30 22:15', NULL, NULL),
('JPMORGAN CHASE', '', 'Report', 'MDA', '/All/Uncategorized', 'GRAPH', 'RJESY Emp Exp Details', '', 'WIDGET', '1', '', 'b3289fbf-0aa1-4bed-8955-8250fd7ccc16', 'true', 'RJEYS Emp Exp', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-30 22:16', '2021-06-30 22:16', NULL, NULL),
('Portware India', '', 'Report', 'MDA', '/All/Uncategorized', 'GRAPH', 'RJESY Emp Exp Details', '', 'WIDGET', '1', '', '6c50a4bb-9524-43db-a55d-debf213bd6fe', 'true', 'RJEYS Emp Exp', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-30 22:16', '2021-06-30 22:16', NULL, NULL),
('Experience Details', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'RJESY Emp Exp Details', '', 'GRID', '1', '', 'd7209471-4682-4062-9b8e-a6e0b955fb93', 'true', 'RJEYS Emp Exp', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-06-30 22:26', '2021-06-30 22:26', NULL, NULL),
('R Dep Report', '', 'Report', 'MDA', '/All/Uncategorized', 'GRAPH', 'R Dep', '', 'PIE', '1', '', '463d537c-c857-4ebf-b0d0-5ac4ecc19808', 'true', 'R Emp Dashboard, dashboard', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-02 04:38', '2021-07-02 04:38', NULL, NULL),
('R Emp Report', 'Emp Test Report', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'R Emp', '', 'GRID', '1', '', '40b7133c-85e6-4ff8-a42a-b6f855d57b76', 'true', 'R Emp Test Dashboard', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-02 15:58', '2021-07-02 15:58', NULL, NULL),
('[DD] Apple_Report', 'Published from data designer, for design: Apple_Design', 'Report', 'MDA', '', 'GRID', 'Apple_Design', '', 'GRID', '1', '', 'bd3f74f7-b0aa-4c05-ac1d-81b01220f1d8', 'true', 'Apple_Report_1, sdufge', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-03 04:46', '2021-07-03 04:50', NULL, NULL),
('Emp_Rjeys_S', '', 'Report', 'MDA', '/All/Uncategorized', 'GRAPH', 'Emp_Rjeys_S', '', 'COLUMN_LINE', '1', '', '499eee16-9e7b-4c13-839d-9e4f535fc481', 'true', 'Emp_Rjeys_S', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-03 07:04', '2021-07-03 07:04', NULL, NULL),
('MB_Bill_Report', '', 'Report', 'MDA', '/All/Uncategorized', 'GRAPH', 'MB_BIlling', '', 'PIE', '1', '', 'eb6d83e7-c8b1-4dd5-92e7-70b65a377c6b', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-03 08:38', '2021-07-03 08:38', NULL, NULL),
('Apple_C360_Scorecard_RelationShip', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'Scorecard Configuration', '[]', 'List', '1', '', 'a1U5e000000rDhKEAU', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-05 07:36', '2021-07-05 07:36', NULL, NULL),
('Apple_Scorecard_RelationShip_C360', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Apple_ScoreCard Scorecard Fact - Company', '', 'GRID', '1', '', 'e26a9423-11c7-43aa-88f4-59f9393b3e5a', 'true', 'rjyes_practice_dashboard', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-05 07:40', '2021-07-05 07:40', NULL, NULL),
('usage data', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Reliance_Usage_Data', '', 'GRID', '1', '', '05dbda2b-9395-46dd-b4a0-481fc380fceb', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-11 10:44', '2021-07-11 10:44', NULL, NULL),
('Copy of [DD] Apple_Report_2', 'Published from data designer, for design: Apple_Design', 'Report', 'MDA', '', 'GRAPH', 'Apple_Design', '', 'AREA', '1', '', '622034bb-cfa5-4cad-b96a-c0fe37c798b5', 'true', 'sdufge, Apple_Report_2, dashboard', 'false', '', 'false', '', 'true', 'test_jo', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-03 04:50', '2021-07-06 03:23', NULL, NULL),
('Tetst_ReportBuilder', '', 'Report', 'MDA', '/All/Uncategorized', 'GRAPH', 'Customer Details', '', 'LINE', '1', '', 'ca8bc542-beb5-400b-b0b7-3c1e93bbd470', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-07 02:15', '2021-07-07 02:15', NULL, NULL),
('Success plan report', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'CTA Group', '[]', 'List', '1', '', 'a1U5e000000rKBvEAM', 'false', '', 'false', '', 'true', 'Default Layout : CTA Group', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-11 10:49', '2021-07-11 10:49', NULL, NULL),
('Copy of Tetst_ReportBuilder 2', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Customer Details', '', 'GRID', '1', '', '41e45eef-3154-4cc8-ba57-b8c655057c17', 'true', 'Dashboard_Test', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-07 02:19', '2021-07-07 02:19', NULL, NULL),
('report on low volume', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Test for Low volume Mapping', '', 'GRID', '1', '', 'ef26b7b4-b2e5-4306-a122-7a5d9fdf89a1', 'false', '', 'false', '', 'true', 'Default Layout : Test for Low volume Mapping', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-11 10:56', '2021-07-11 10:56', NULL, NULL),
('CTA Group', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'CTA Group', '[]', 'List', '1', '', 'a1U5e000000rKG8EAM', 'false', '', 'false', '', 'true', 'Default Layout : CTA Group', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-11 11:20', '2021-07-11 11:20', NULL, NULL),
('RJEYS_ObJ_Test_Report', '', 'Report', 'MDA', '', 'GRID', 'RJEYS_OBJ_Test', '', 'GRID', '1', '', 'f895090c-725e-484c-ae94-85f3412261db', 'true', 'RJEYS_OBJ_TEST_Dashboard, Rjeys_Dashboard', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-12 23:09', '2021-07-12 23:14', NULL, NULL),
('Call to Actions Report', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'Call To Action', '[]', 'List', '1', '', 'a1U5e000000rJq3EAE', 'false', '', 'true', 'Default Layout : Section/Embed Page BInRaSai, Default Layout : reports related to  CTA, Default Layout : Call to Action Reports', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-09 21:06', '2021-07-09 21:06', NULL, NULL),
('rjyes_practice_report', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'rjeys_practice_test', '', 'GRID', '1', '', '82bcc7e6-6159-4e0d-acee-dbb11c99443b', 'true', 'rjyes_practice_dashboard', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-13 00:18', '2021-07-13 00:18', NULL, NULL),
('CTA Group', '', 'Report', 'SFDC', '', '', 'CTA Group', '[]', 'List', '1', '', 'a1U5e000000rKGDEA2', 'false', '', 'false', '', 'true', 'Default Layout : CTA Group', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-11 11:23', '2021-07-12 23:07', NULL, NULL),
('sales_report', '', 'Report', 'MDA', '/All/Uncategorized', 'GRAPH', 'Practice_Customer(J-2)', '', 'PIE', '1', '', '5e63e4d7-ef3d-440b-8990-443c33b47dd3', 'true', 'Practice(J), rjeys batch training dashboard1', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-13 00:37', '2021-07-13 00:37', NULL, NULL),
('sales_report(J)', '', 'Report', 'MDA', '/All/Uncategorized', 'GRAPH', 'Practice_Sales(J)', '', 'STACKED_COLUMN', '1', '', 'feef802d-74b8-4772-992b-18717c6a4754', 'true', 'Practice(J)', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-13 00:41', '2021-07-13 00:42', NULL, NULL),
('rjeys_bhavana', '', 'Report', 'MDA', '/All/Uncategorized', 'GRAPH', 'Rjeys_Bhavana_1', '', 'COLUMN', '1', '', 'ee94907d-f0a6-4669-bdf8-de3ad5934f38', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-13 00:13', '2021-07-13 00:43', NULL, NULL),
('rjeys_sindhu_1', '', 'Report', 'MDA', '/All/Uncategorized', 'GRAPH', 'Rjeys_sindhu_1', '', 'COLUMN', '1', '', '9e16971e-f4ef-4f0b-b1d3-9fb9ef70157e', 'true', 'Rjeys_sindhu_1', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-13 00:47', '2021-07-13 00:47', NULL, NULL),
('obj', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'RJEYS_OBJ_Test', '', 'GRID', '1', '', 'e487b388-2f1d-4687-a002-8b67a59e0d79', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-13 01:42', '2021-07-13 01:42', NULL, NULL),
('report for csat tut', '', 'Report', 'SFDC', '/All/Uncategorized', 'AREA', 'Contact', '[]', 'Chart', '1', '', 'a1U5e000000rr1TEAQ', 'false', '', 'false', '', 'false', '', 'true', 'CSATJo_tut', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-14 00:06', '2021-07-14 00:08', NULL, NULL),
('Test - UI Path', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'Company', '', 'GRID', '1', '', 'a8763187-5ed6-417d-a800-0207196a01d7', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-14 23:44', '2021-07-14 23:44', NULL, NULL),
('c', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'Account', '[]', 'List', '1', '', 'a1U5e000000s1yvEAA', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-16 23:35', '2021-07-16 23:35', NULL, NULL),
('Report practice1', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'Account', '[JBCXM__CustomerInfo__c]', 'List', '1', '', 'a1U5e000000s23DEAQ', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-17 10:36', '2021-07-17 10:36', NULL, NULL),
('Report 2 practice', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'Customer Info', '[]', 'List', '1', '', 'a1U5e000000s23IEAQ', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-17 10:37', '2021-07-17 10:37', NULL, NULL),
('Practice- A', '', 'Report', 'MDA', '/All/Uncategorized', 'GRAPH', 'Practice - A', '', 'COLUMN', '1', '', '4607e07d-0b23-410c-b769-efb36f1f8950', 'true', 'Practice -A', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-17 21:14', '2021-07-17 21:15', NULL, NULL),
('[DD] DD_Report_Bhavana', 'Published from data designer, for design: Data_Designer_Test_Bhavana', 'Report', 'MDA', '', 'GRID', 'Data_Designer_Test_Bhavana', '', 'GRID', '1', '', '914d5735-9884-4016-8e77-c7e491599286', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-18 11:56', '2021-07-18 11:59', NULL, NULL),
('[DD] DD_report_2_bhavana', 'Published from data designer, for design: Data_Designer_Test_Bhavana', 'Report', 'MDA', '', 'GRAPH', 'Data_Designer_Test_Bhavana', '', 'BAR', '1', '', 'ba4ec810-a22f-4dbd-9ee4-d9951033146e', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-18 11:59', '2021-07-18 11:59', NULL, NULL),
('[DD] DD_Test_2_report_Bhavana', 'Published from data designer, for design: DD_Test2_Bhavana', 'Report', 'MDA', '', 'GRID', 'DD_Test2_Bhavana', '', 'GRID', '1', '', 'eb8c3250-133a-44c1-ab48-a778656a3b14', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-18 12:43', '2021-07-18 12:44', NULL, NULL),
('A-report DB', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'Account', '[User]', 'List', '1', '12633d66-0f20-4fb4-b6b9-8d9003b4e960', 'a1U5e000000s6DUEAY', 'true', 'CSM Apple', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-19 07:28', '2021-07-19 08:56', NULL, NULL),
('Rjeys _Dataspace b', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'Account', '[]', 'List', '1', 'd6a1e112-5484-40e6-a5e3-0014a2b768a6', 'a1U5e000000s6ccEAA', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-19 11:23', '2021-07-19 11:23', NULL, NULL),
('[DD] Report 1B', 'Published from data designer, for design: Design 2', 'Report', 'MDA', '', 'GRID', 'Design 2', '', 'GRID', '1', '', '1be338e6-6e65-4ef6-b2e7-2e0bb9af91e9', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-19 11:43', '2021-07-20 03:08', NULL, NULL),
('[DD] Design DB-B', 'Published from data designer, for design: Design DB', 'Report', 'MDA', '', 'GRID', 'Design DB', '', 'GRID', '1', '', '1363d2c7-1a7d-4105-99d6-404646727821', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-20 03:07', '2021-07-20 03:08', NULL, NULL),
('Sponser tracking object', '', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'ST OBJECT', '', 'GRID', '1', '', 'ab413fc6-8c04-4df8-a917-fc7be696f679', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-20 03:34', '2021-07-20 03:36', NULL, NULL),
('Case', '', 'Report', 'SFDC', '/All/Uncategorized', '', 'Case', '[]', 'List', '1', '', 'a1U5e000000s76gEAA', 'false', '', 'false', '', 'true', 'Default Layout : Case', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-20 03:40', '2021-07-20 03:40', NULL, NULL),
('[DD] IBM report for Lalitha', 'Published from data designer, for design: IBM DD', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'IBM DD', '', 'GRID', '1', '', 'f4f0b6af-06f7-4b71-9fed-33c2de03b03a', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-21 02:48', '2021-07-21 02:48', NULL, NULL),
('[DD] IBM DD-2', 'Published from data designer, for design: IBM DD', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'IBM DD', '', 'GRID', '1', '', '839b1bba-44d8-46e6-933e-1130c5a14f69', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-21 03:34', '2021-07-21 03:34', NULL, NULL),
('[DD] DD test', 'Published from data designer, for design: DD Test', 'Report', 'MDA', '/All/Uncategorized', 'GRID', 'DD Test', '', 'GRID', '1', '', 'd7404c4b-05ac-417c-b563-9c51cb509fbe', 'false', '', 'false', '', 'false', '', 'false', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', '2021-07-21 06:58', '2021-07-21 06:58', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `DELLBOOMI_rules`
--

CREATE TABLE `DELLBOOMI_rules` (
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scheduled` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noOfDays` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruleFor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taskCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `actionCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sourceInfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `actionInfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdByName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifiedByName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruleChains` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optimizedRuleLogs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compareStats` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `corrupted` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `modifiedDate` date DEFAULT NULL,
  `lastRunDate` date DEFAULT NULL,
  `objectInfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `folderDetail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `actionIds` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Is_Required` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DELLBOOMI_schedule`
--

CREATE TABLE `DELLBOOMI_schedule` (
  `entityName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entityType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startTimeStr` datetime DEFAULT NULL,
  `endTimeStr` datetime DEFAULT NULL,
  `lastSuccessTimeStr` datetime DEFAULT NULL,
  `lastFailureTimeStr` datetime DEFAULT NULL,
  `failingSinceStr` datetime DEFAULT NULL,
  `nextRunTimeStr` datetime DEFAULT NULL,
  `timeZoneName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cronText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cronExpression` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jobIdentifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scheduleId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenantId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailIdList` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailIdListSuccess` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Is_Required` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DELLBOOMI_scorecards`
--

CREATE TABLE `DELLBOOMI_scorecards` (
  `id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entityType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exceptions` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filters` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `schemeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groupRollup` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `measureCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `measureGroupCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filtersEnabled` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exceptionConfigured` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `measureList` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `factId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `createdBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifiedDate` date DEFAULT NULL,
  `modifiedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `factSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accountScorecard` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Is_Required` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DELLBOOMI_scorecards`
--

INSERT INTO `DELLBOOMI_scorecards` (`id`, `name`, `description`, `entityType`, `exceptions`, `filters`, `schemeName`, `groupRollup`, `measureCount`, `measureGroupCount`, `filtersEnabled`, `exceptionConfigured`, `measureList`, `rules`, `factId`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `factSize`, `accountScorecard`, `Is_Required`, `comments`) VALUES
('1I005FL3Q74GSNV8U80U65E8PBU866KLERBQ', 'Scorecard', '', 'Account', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Numeric(0-100)', 'Yes', '6', '2', 'Yes', 'Yes', 'Debug Release, Launch Release, Bug Free, Similar bugs, New bugs, Similar complaints', '[]', '1', '2021-05-16', 'Shalini Ranga', '2021-06-14', 'Deepika Nasika', '0', 'true', 'Yes', ''),
('1I005FL3Q74GSNV8U8YG3LUDUB0JAMRFXLCC', 'New Scorecard', '', 'Account', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Numeric(0-100)', 'Yes', '2', '0', 'Yes', 'Yes', 'Bug Free, No of Clicks per Feature', '[]', '2', '2021-05-16', 'Shalini Ranga', '2021-05-16', 'Shalini Ranga', '0', 'true', 'No', ''),
('1I005FL3Q74GSNV8U8T9L3D69SO3MLV791KG', 'Grade_Rjeys', '', 'Account', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Grade(A-F)', 'Yes', '3', '1', 'Yes', 'Yes', 'High, Low, Medium', '[]', '10', '2021-07-01', 'RJEYS Infinity Solutions', '2021-07-01', 'RJEYS Infinity Solutions', '0', 'true', 'No', ''),
('1I005FL3Q74GSNV8U8X2X6M8TTL8RWF0GYCB', 'Scorecard for Netflix Disney', '', 'Account', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Numeric(0-100)', 'Yes', '4', '2', 'Yes', 'Yes', 'Similar bugs, Disney Movie usage, New bugs, Disney Episodes usage', '[]', '12', '2021-07-04', 'RJEYS Infinity Solutions', '2021-07-04', 'RJEYS Infinity Solutions', '0', 'true', 'Yes', ''),
('1I005FL3Q74GSNV8U8EQFQIIYXFTV39A6FOA', 'Apple_ScoreCard', '', 'Account', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Grade(A-F)', 'Yes', '5', '1', 'Yes', 'Yes', 'Apple_TV, Apple_Iphone, Apple_Airpods, Apple_Ipad, Apple_Macbook', '[]', '15', '2021-07-04', 'RJEYS Infinity Solutions', '2021-07-04', 'RJEYS Infinity Solutions', '0', 'true', 'No', ''),
('1I005FL3Q74GSNV8U81OVW92FI16P88BOFXL', 'scorecard fro apple_bindu', 'appple score card in grades', 'Account', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Grade(A-F)', 'Yes', '3', '1', 'Yes', 'Yes', 'bindu_sample_scorecard_manual, bindu_bug free_sc, bindu_apple_productusage', '[]', '17', '2021-07-05', 'RJEYS Infinity Solutions', '2021-07-05', 'RJEYS Infinity Solutions', '0', 'true', 'No', ''),
('1I005FL3Q74GSNV8U8727TVYG3AIBGF17X83', 'R_Apple_SCR2.0', '', 'Account', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Color(RYG)', 'Yes', '7', '2', 'Yes', 'Yes', 'R_Tv, R_MAC_Air, R_IOS, R_Iphone, R_Mac, R_Ipad, R_ITunes', '[]', '18', '2021-07-05', 'RJEYS Infinity Solutions', '2021-07-05', 'RJEYS Infinity Solutions', '0', 'true', 'No', ''),
('1I005FL3Q74GSNV8U8OTK4F98ZHD0BVJX4W3', 'Int Apple HW  Relationship SC', '', 'Relationship', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Color(RYG)', 'Yes', '2', '1', 'Yes', 'Yes', 'Int Apple HW Usage, Int Apple HW Tickets Raised', '[]', '19', '2021-07-07', 'RJEYS Infinity Solutions', '2021-07-07', 'RJEYS Infinity Solutions', '0', 'false', 'Yes', ''),
('1I005FL3Q74GSNV8U8J476VJQ6MLYPXCBC55', 'Int Apple SW Relationship SC', '', 'Relationship', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Color(RYG)', 'Yes', '2', '1', 'Yes', 'Yes', 'Int Apple SW Usage, Int Apple SW Tickets Raised', '[]', '20', '2021-07-07', 'RJEYS Infinity Solutions', '2021-07-07', 'RJEYS Infinity Solutions', '0', 'false', 'Yes', ''),
('1I005FL3Q74GSNV8U8BP67YEY0YE8MCNKEIC', 'R_Apple I Phone Relationship SC', 'Apple I Phone Relationship SC', 'Relationship', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Color(RYG)', 'Yes', '2', '1', 'Yes', 'Yes', 'R_Apple I Phone HW Tickets Raised, R_Apple HW I Phone Usage', '[]', '23', '2021-07-11', 'RJEYS Infinity Solutions', '2021-07-11', 'RJEYS Infinity Solutions', '0', 'false', 'No', ''),
('1I005FL3Q74GSNV8U86T3D35095WVIEVT2JY', 'test relationship sc', '', 'Relationship', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Numeric(0-100)', 'Yes', '4', '1', 'Yes', 'Yes', 'Hardware Usage, Test Manual Measure, product bugs, usage of product', '[]', '24', '2021-07-21', 'RJEYS Infinity Solutions', '2021-07-21', 'RJEYS Infinity Solutions', '0', 'false', 'No', '');

-- --------------------------------------------------------

--
-- Table structure for table `DELLBOOMI_success_plan_templates`
--

CREATE TABLE `DELLBOOMI_success_plan_templates` (
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relationshipType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifiedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Is_Required` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DELLBOOMI_success_plan_templates`
--

INSERT INTO `DELLBOOMI_success_plan_templates` (`name`, `entity_type`, `relationshipType`, `createdBy`, `modifiedBy`, `Is_Required`, `comments`) VALUES
('Success_Test data', 'ACCOUNT', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', NULL, NULL),
('Cust_Success', 'ACCOUNT', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', NULL, NULL),
('In Japan', 'ACCOUNT', '', 'Rebecca Tripti', 'Rebecca Tripti', NULL, NULL),
('discounts', 'ACCOUNT', '', 'Deepika Nasika', 'Deepika Nasika', NULL, NULL),
('Festival Discount', 'ACCOUNT', '', 'Deepika Nasika', 'Deepika Nasika', NULL, NULL),
('offers', 'ACCOUNT', '', 'Deepika Nasika', 'Deepika Nasika', NULL, NULL),
('R_Template', 'ACCOUNT', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', NULL, NULL),
('Test template2', 'ACCOUNT', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', NULL, NULL),
('Test Success Plan template', 'ACCOUNT', '', 'Deepika Nasika', 'Deepika Nasika', NULL, NULL),
('Test Template', 'ACCOUNT', '', 'Deepika Nasika', 'Deepika Nasika', NULL, NULL),
('R_Airpods HW Success Plan Template', 'RELATIONSHIP', 'RJEYS Apple HW', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', NULL, NULL),
('test', 'ACCOUNT', '', 'Rebecca Tripti', 'Rebecca Tripti', NULL, NULL),
('Usage Content', 'ACCOUNT', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', NULL, NULL),
('New Version', 'RELATIONSHIP', 'RJEYS Apple SW', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', NULL, NULL),
('template shoes objectives', 'RELATIONSHIP', 'shoes', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', NULL, NULL),
('Apple_Tem', 'ACCOUNT', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', NULL, NULL),
('Action Plan template', 'RELATIONSHIP', 'RJEYS Apple HW', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', NULL, NULL),
('sp_int_2', 'ACCOUNT', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', NULL, NULL),
('R_Test Template', 'ACCOUNT', '', 'RJEYS Infinity Solutions', 'RJEYS Infinity Solutions', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `DELLBOOMI_survey`
--

CREATE TABLE `DELLBOOMI_survey` (
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `externalTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entityType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relationshipType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publishedURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usersSentCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userResponseCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `version` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Is_Required` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DELLBOOMI_survey`
--

INSERT INTO `DELLBOOMI_survey` (`name`, `description`, `externalTitle`, `entityType`, `relationshipType`, `status`, `publishedURL`, `title`, `usersSentCount`, `userResponseCount`, `startDate`, `publishDate`, `endDate`, `version`, `Is_Required`, `comments`) VALUES
('Survey_Samsung_WashingMachine', '', '', 'COMPANY', '', 'PUBLISH', 'https://ifb.gainsightcloud.com/v1/sites/CustomerFeedback', 'Survey_Samsung_WashingMachine', '0', '0', '2021-06-08 00:00:00', '2021-06-07 00:00:00', '2021-06-10 00:00:00', '2.0', NULL, NULL),
('Food plaza', 'Taste of happiness', '', 'COMPANY', '', 'PUBLISH', 'https://foodplazasurvey.gainsightcloud.com/v1/sites/FoodPlaza', 'Food plaza', '0', '0', '2021-06-07 00:00:00', '2021-06-07 00:00:00', '2021-07-07 00:00:00', '2.0', NULL, NULL),
('Admin: IFB CSAT Survey', '', '', 'COMPANY', '', 'PUBLISH', 'https://ifb.gainsightcloud.com/v1/sites/CustomerFeedback', 'IFB Service Feedback', '0', '0', '2021-06-05 00:00:00', '2021-06-05 00:00:00', '2021-06-09 00:00:00', '2.0', NULL, NULL),
('Manager_Feedback', '', '', 'COMPANY', '', 'PUBLISH', 'https://mymanagersurvey.gainsightcloud.com/v1/sites/feedback', 'Manager_Feedback', '0', '0', '2021-06-08 00:00:00', '2021-06-08 00:00:00', '2021-07-08 00:00:00', '2.0', NULL, NULL),
('Admin:Generic Anonymous Survey on Shopping mall Visitors', '', '', 'COMPANY', '', 'PUBLISH', 'https://ifb.gainsightcloud.com/v1/sites/CustomerFeedback', 'Admin:Generic Survey', '0', '0', '2021-06-09 00:00:00', '2021-06-09 00:00:00', '2021-06-12 00:00:00', '2.0', NULL, NULL),
('generic survey on vaccination', '', '', 'COMPANY', '', 'PUBLISH', 'https://mymanagersurvey.gainsightcloud.com/v1/sites/feedback', 'generic survey on vaccination', '0', '1', '2021-06-17 00:00:00', '2021-06-09 00:00:00', '2021-06-22 00:00:00', '2.0', NULL, NULL),
('Clone of NPS Survey on callcenters', 'NPS rating ', '', 'COMPANY', '', 'PUBLISH', 'https://mymanagersurvey.gainsightcloud.com/v1/sites/feedback', 'Survey on callcenters', '0', '3', '2021-06-10 00:00:00', '2021-06-10 00:00:00', '2021-06-14 00:00:00', '2.0', NULL, NULL),
('survey_zomato delivery', 'survey on food ', '', 'COMPANY', '', 'PUBLISH', 'https://mymanagersurvey.gainsightcloud.com/v1/sites/feedback', 'survey zomato delivery', '0', '1', '2021-06-10 00:00:00', '2021-06-10 00:00:00', '2021-06-15 00:00:00', '2.0', NULL, NULL),
('Admin: Generic Survey on Exhibition', '', '', 'COMPANY', '', 'PUBLISH', 'https://ifb.gainsightcloud.com/v1/sites/CustomerFeedback', 'Admin: Generic Survey on Exhibition', '0', '1', '2021-06-09 00:00:00', '2021-06-09 00:00:00', '2021-06-12 00:00:00', '2.0', NULL, NULL),
('Admin: NPS survey on Reliance Jio Fiber Customers', '', '', 'COMPANY', '', 'PUBLISH', 'https://ifb.gainsightcloud.com/v1/sites/CustomerFeedback', 'Admin: NPS survey on Shopping mall Visitors', '0', '0', '2021-07-03 00:00:00', '2021-06-09 00:00:00', '2021-07-05 00:00:00', '2.0', NULL, NULL),
('Survey for relationhsip', '', '', 'RELATIONSHIP', '', 'PUBLISH', 'https://ifb.gainsightcloud.com/v1/sites/CustomerFeedback', 'Survey for relationhsip', '0', '1', '2021-06-29 00:00:00', '2021-06-29 00:00:00', '2021-06-30 00:00:00', '2.0', NULL, NULL),
('Apple_NPS', '', '', 'RELATIONSHIP', '', 'PUBLISH', 'https://inorbitmall.gainsightcloud.com/v1/sites/ipad2', 'Apple_NPS', '0', '0', '2021-07-06 00:00:00', '2021-07-04 00:00:00', '2021-07-09 00:00:00', '2.0', NULL, NULL),
('Apple_NPS', '', '', 'RELATIONSHIP', '', 'PUBLISH', 'https://foodplazasurvey.gainsightcloud.com/v1/sites/FoodPlaza', 'Apple_NPS', '0', '0', '2021-07-05 00:00:00', '2021-07-04 00:00:00', '2021-07-15 00:00:00', '2.0', NULL, NULL),
('Apple_NPS', '', '', 'COMPANY', '', 'PUBLISH', 'https://mymanagersurvey.gainsightcloud.com/v1/sites/feedback', 'Apple_NPS', '0', '4', '2021-07-05 00:00:00', '2021-07-04 00:00:00', '2021-07-15 00:00:00', '2.0', NULL, NULL),
('Apple_Generic', '', '', 'COMPANY', '', 'PUBLISH', 'https://mymanagersurvey.gainsightcloud.com/v1/sites/feedback', 'Apple_Generic', '0', '2', '2021-07-05 00:00:00', '2021-07-04 00:00:00', '2021-07-13 00:00:00', '2.0', NULL, NULL),
('Avinash_NPS Survey', '', '', 'COMPANY', '', 'PUBLISH', 'https://mymanagersurvey.gainsightcloud.com/v1/sites/feedback', 'Avinash_NPS Survey', '0', '1', '2021-07-07 00:00:00', '2021-07-07 00:00:00', '2021-07-12 00:00:00', '2.0', NULL, NULL),
('AArunNPS', '', '', 'COMPANY', '', 'PUBLISH', 'https://inorbitmall.gainsightcloud.com/v1/sites/inorbitmall', 'AArunNPS', '0', '0', '2021-07-07 00:00:00', '2021-07-07 00:00:00', '2021-07-14 00:00:00', '2.0', NULL, NULL),
('NPS Survey on Reliance', '', '', 'COMPANY', '', 'PUBLISH', 'https://ifb.gainsightcloud.com/v1/sites/CustomerFeedback', 'NPS Survey on Reliance', '0', '1', '2021-07-04 00:00:00', '2021-07-03 00:00:00', '2021-07-06 00:00:00', '2.0', NULL, NULL),
('Test_Bindhu', '', '', 'COMPANY', '', 'PUBLISH', 'https://mymanagersurvey.gainsightcloud.com/v1/sites/feedback', 'testbbb', '0', '0', '2021-07-17 00:00:00', '2021-07-16 00:00:00', '2021-07-20 00:00:00', '2.0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `DELOITTE_scorecards`
--

CREATE TABLE `DELOITTE_scorecards` (
  `id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `entityType` varchar(255) DEFAULT NULL,
  `exceptions` varchar(255) DEFAULT NULL,
  `filters` varchar(255) DEFAULT NULL,
  `schemeName` varchar(255) DEFAULT NULL,
  `groupRollup` varchar(255) DEFAULT NULL,
  `measureCount` varchar(255) DEFAULT NULL,
  `measureGroupCount` varchar(255) DEFAULT NULL,
  `filtersEnabled` varchar(255) DEFAULT NULL,
  `exceptionConfigured` varchar(255) DEFAULT NULL,
  `measureList` varchar(255) DEFAULT NULL,
  `rules` varchar(255) DEFAULT NULL,
  `factId` varchar(255) DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedDate` date DEFAULT NULL,
  `modifiedBy` varchar(255) DEFAULT NULL,
  `factSize` varchar(255) DEFAULT NULL,
  `accountScorecard` varchar(255) DEFAULT NULL,
  `Is_Required` varchar(50) DEFAULT NULL,
  `comments` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DELOITTE_scorecards`
--

INSERT INTO `DELOITTE_scorecards` (`id`, `name`, `description`, `entityType`, `exceptions`, `filters`, `schemeName`, `groupRollup`, `measureCount`, `measureGroupCount`, `filtersEnabled`, `exceptionConfigured`, `measureList`, `rules`, `factId`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `factSize`, `accountScorecard`, `Is_Required`, `comments`) VALUES
('1I005FL3Q74GSNV8U80U65E8PBU866KLERBQ', 'Scorecard', '', 'Account', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Numeric(0-100)', 'Yes', '6', '2', 'Yes', 'Yes', 'Debug Release, Launch Release, Bug Free, Similar bugs, New bugs, Similar complaints', '[]', '1', '2021-05-16', 'Shalini Ranga', '2021-06-14', 'Deepika Nasika', '0', 'true', 'Yes', ''),
('1I005FL3Q74GSNV8U8YG3LUDUB0JAMRFXLCC', 'New Scorecard', '', 'Account', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Numeric(0-100)', 'Yes', '2', '0', 'Yes', 'Yes', 'Bug Free, No of Clicks per Feature', '[]', '2', '2021-05-16', 'Shalini Ranga', '2021-05-16', 'Shalini Ranga', '0', 'true', 'Yes', ''),
('1I005FL3Q74GSNV8U8T9L3D69SO3MLV791KG', 'Grade_Rjeys', '', 'Account', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Grade(A-F)', 'Yes', '3', '1', 'Yes', 'Yes', 'High, Low, Medium', '[]', '10', '2021-07-01', 'RJEYS Infinity Solutions', '2021-07-01', 'RJEYS Infinity Solutions', '0', 'true', 'Yes', ''),
('1I005FL3Q74GSNV8U8X2X6M8TTL8RWF0GYCB', 'Scorecard for Netflix Disney', '', 'Account', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Numeric(0-100)', 'Yes', '4', '2', 'Yes', 'Yes', 'Similar bugs, Disney Movie usage, New bugs, Disney Episodes usage', '[]', '12', '2021-07-04', 'RJEYS Infinity Solutions', '2021-07-04', 'RJEYS Infinity Solutions', '0', 'true', 'No', ''),
('1I005FL3Q74GSNV8U8EQFQIIYXFTV39A6FOA', 'Apple_ScoreCard', '', 'Account', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Grade(A-F)', 'Yes', '5', '1', 'Yes', 'Yes', 'Apple_TV, Apple_Iphone, Apple_Airpods, Apple_Ipad, Apple_Macbook', '[]', '15', '2021-07-04', 'RJEYS Infinity Solutions', '2021-07-04', 'RJEYS Infinity Solutions', '0', 'true', 'Yes', ''),
('1I005FL3Q74GSNV8U81OVW92FI16P88BOFXL', 'scorecard fro apple_bindu', 'appple score card in grades', 'Account', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Grade(A-F)', 'Yes', '3', '1', 'Yes', 'Yes', 'bindu_sample_scorecard_manual, bindu_bug free_sc, bindu_apple_productusage', '[]', '17', '2021-07-05', 'RJEYS Infinity Solutions', '2021-07-05', 'RJEYS Infinity Solutions', '0', 'true', 'Yes', ''),
('1I005FL3Q74GSNV8U8727TVYG3AIBGF17X83', 'R_Apple_SCR2.0', '', 'Account', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Color(RYG)', 'Yes', '7', '2', 'Yes', 'Yes', 'R_Tv, R_MAC_Air, R_IOS, R_Iphone, R_Mac, R_Ipad, R_ITunes', '[]', '18', '2021-07-05', 'RJEYS Infinity Solutions', '2021-07-05', 'RJEYS Infinity Solutions', '0', 'true', 'No', ''),
('1I005FL3Q74GSNV8U8OTK4F98ZHD0BVJX4W3', 'Int Apple HW  Relationship SC', '', 'Relationship', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Color(RYG)', 'Yes', '2', '1', 'Yes', 'Yes', 'Int Apple HW Usage, Int Apple HW Tickets Raised', '[]', '19', '2021-07-07', 'RJEYS Infinity Solutions', '2021-07-07', 'RJEYS Infinity Solutions', '0', 'false', 'No', ''),
('1I005FL3Q74GSNV8U8J476VJQ6MLYPXCBC55', 'Int Apple SW Relationship SC', '', 'Relationship', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Color(RYG)', 'Yes', '2', '1', 'Yes', 'Yes', 'Int Apple SW Usage, Int Apple SW Tickets Raised', '[]', '20', '2021-07-07', 'RJEYS Infinity Solutions', '2021-07-07', 'RJEYS Infinity Solutions', '0', 'false', 'No', ''),
('1I005FL3Q74GSNV8U8BP67YEY0YE8MCNKEIC', 'R_Apple I Phone Relationship SC', 'Apple I Phone Relationship SC', 'Relationship', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Color(RYG)', 'Yes', '2', '1', 'Yes', 'Yes', 'R_Apple I Phone HW Tickets Raised, R_Apple HW I Phone Usage', '[]', '23', '2021-07-11', 'RJEYS Infinity Solutions', '2021-07-11', 'RJEYS Infinity Solutions', '0', 'false', 'Yes', ''),
('1I005FL3Q74GSNV8U86T3D35095WVIEVT2JY', 'test relationship sc', '', 'Relationship', '{}', '{\"conditions\":[],\"expression\":\"\"}', 'Numeric(0-100)', 'Yes', '4', '1', 'Yes', 'Yes', 'Hardware Usage, Test Manual Measure, product bugs, usage of product', '[]', '24', '2021-07-21', 'RJEYS Infinity Solutions', '2021-07-21', 'RJEYS Infinity Solutions', '0', 'false', 'Yes', '');

-- --------------------------------------------------------

--
-- Table structure for table `Issue_Priority`
--

CREATE TABLE `Issue_Priority` (
  `Id` int(11) NOT NULL,
  `priority` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Issue_Priority`
--

INSERT INTO `Issue_Priority` (`Id`, `priority`) VALUES
(1, 'Low'),
(2, 'Medium'),
(3, 'High');

-- --------------------------------------------------------

--
-- Table structure for table `issue_tracker_tb`
--

CREATE TABLE `issue_tracker_tb` (
  `IssueId` int(11) NOT NULL,
  `IssueName` varchar(128) DEFAULT NULL,
  `IssueDescription` varchar(250) DEFAULT NULL,
  `IssueType` enum('Product Bug','Enhancement','Data Request') NOT NULL,
  `ProductTeam` enum('Team A','Team B','Team C') NOT NULL,
  `Area` enum('Data Management','Reports','Dashboards','Data Designer','Journey Orchestrator','Rules Engine','cockpit','C360','Scorecard','Connectors') NOT NULL,
  `Priority` enum('Low','Medium','High') NOT NULL,
  `Owner` varchar(45) DEFAULT NULL,
  `Status` enum('New','In-Progress','Re-Open','Close') NOT NULL DEFAULT 'New',
  `CreatedDate` datetime DEFAULT current_timestamp(),
  `ReportedBy` varchar(128) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `Attachements` varchar(350) DEFAULT NULL,
  `UpdatedBy` varchar(250) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_company` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `issue_tracker_tb`
--

INSERT INTO `issue_tracker_tb` (`IssueId`, `IssueName`, `IssueDescription`, `IssueType`, `ProductTeam`, `Area`, `Priority`, `Owner`, `Status`, `CreatedDate`, `ReportedBy`, `ModifiedDate`, `Attachements`, `UpdatedBy`, `user_id`, `user_company`) VALUES
(5, 'Hello', '', 'Product Bug', 'Team A', 'Data Management', 'Low', 'Bindhu', 'New', '2021-11-03 04:11:13', 'Sai', '2021-11-10 15:12:23', '', '', 0, ''),
(6, 'Hello', '', 'Product Bug', 'Team A', 'Data Management', 'Low', 'Dattasai', 'New', '2021-11-05 08:30:20', 'Dattasai/', NULL, '', '', 0, ''),
(9, 'rules', 'rules', 'Product Bug', 'Team A', 'Data Management', 'Low', 'sdws', 'New', '2021-11-02 23:54:59', 'dsdsds', NULL, '', '', 0, ''),
(10, 'Data', 'Data Space Related Issue', 'Product Bug', 'Team A', 'Data Management', 'Low', 'Dattasai Akula', 'New', '2021-11-03 19:02:07', 'Bhavana', '2021-11-19 19:50:43', '', '', 0, ''),
(11, 'Rules Engine Issue', 'RulesEngine ', 'Product Bug', 'Team A', 'Data Management', 'Low', 'Bhavya', 'New', '2021-11-05 08:26:36', 'Bhavya', '2021-11-05 15:20:56', '', '', 0, ''),
(12, 'Hello', 'zbsjh', 'Product Bug', 'Team A', 'Data Management', 'Low', 'sdsds', 'New', '2021-11-03 04:11:13', 'cx c', NULL, '', '', 0, ''),
(13, 'Welcome To My World', '', 'Product Bug', 'Team A', 'Data Management', 'Low', 'Dattasai', 'New', '2021-11-03 12:50:28', 'Dattasai', NULL, '', '', 0, ''),
(14, 'rules', 'rules', 'Product Bug', 'Team A', 'Data Management', 'Low', 'sdws', 'New', '2021-11-02 23:54:59', 'dsdsds', NULL, '', '', 0, ''),
(15, 'rules', 'rules', 'Product Bug', 'Team A', 'Data Management', 'Low', 'sdws', 'New', '2021-11-02 23:54:59', 'dsdsds', NULL, '', '', 0, ''),
(16, 'rules', 'rules', 'Product Bug', 'Team A', 'Data Management', 'Low', 'RaviKumar', 'New', '2021-11-02 23:54:59', 'RaviKumar', '2021-11-05 15:24:24', '', '', 0, ''),
(17, 'rules', 'rules', 'Product Bug', 'Team A', 'Data Management', 'Low', 'sdws', 'New', '2021-11-02 23:54:59', 'dsdsds', NULL, '', '', 0, ''),
(18, 'rules', 'wwwww', 'Product Bug', 'Team A', 'Data Management', 'Low', 'wwwww', 'New', '2021-10-29 14:48:40', 'wwwww', NULL, '', '', 0, ''),
(19, 'rules', 'rules', 'Product Bug', 'Team A', 'Data Management', 'Low', 'sdws', 'New', '2021-11-02 23:54:59', 'dsdsds', NULL, '', '', 0, ''),
(20, 'Hello', 'zbsjh', 'Product Bug', 'Team A', 'Data Management', 'Low', 'sdsds', 'New', '2021-11-03 04:11:13', 'cx c', NULL, '', '', 0, ''),
(21, 'test', 'test', 'Product Bug', 'Team A', 'Data Management', 'Low', 'test', 'New', '2021-10-29 16:52:20', 'test', NULL, '', '', 0, ''),
(22, 'Hello', 'zbsjh', 'Product Bug', 'Team A', 'Data Management', 'Low', 'sdsds', 'New', '2021-11-03 04:11:13', 'cx c', NULL, '', '', 0, ''),
(23, 'hello', 'hello', 'Product Bug', 'Team A', 'Data Management', 'Low', 'hello', 'New', '2021-10-29 19:01:34', 'hello', NULL, '', '', 0, ''),
(24, 'test', 'testttttt', 'Product Bug', 'Team A', 'Data Management', 'Low', 'hhgxshjgdjh', 'New', '2021-10-29 19:02:36', 'bhsvdjhwsvbd', NULL, '', '', 0, ''),
(25, 'bxvshcvs', 'nbsdhsb', 'Product Bug', 'Team A', 'Data Management', 'Low', 'dsvjdvsjdvhj', 'New', '2021-10-29 19:31:21', 'bhbvcgviv', NULL, '', '', 0, ''),
(26, 'Scorecard  Issue', 'Limitations of Scorecard', 'Product Bug', 'Team A', 'Data Management', 'Low', 'Bhavana', 'New', NULL, 'Bhavana', '2021-11-05 15:16:00', '', '', 0, ''),
(27, NULL, NULL, 'Product Bug', 'Team A', 'Data Management', 'Low', NULL, 'New', NULL, NULL, NULL, '', '', 0, ''),
(28, 'hjfbdhfb', 'hbhjsdbwjh', 'Product Bug', 'Team A', 'Data Management', 'Low', 'dewde', 'New', '2021-11-02 20:58:13', 'dcdsef', NULL, '', '', 0, ''),
(29, 'Hello', 'zbsjh', 'Product Bug', 'Team A', 'Data Management', 'Low', 'sdsds', 'New', '2021-11-03 04:11:13', 'cx c', NULL, '', '', 0, ''),
(30, 'rules', 'rules', 'Product Bug', 'Team A', 'Data Management', 'Low', 'sdws', 'New', '2021-11-02 23:54:59', 'dsdsds', NULL, '', '', 0, ''),
(31, 'Hello', 'zbsjh', 'Product Bug', 'Team A', 'Data Management', 'Low', 'sdsds', 'New', '2021-11-03 04:11:13', 'cx c', NULL, '', '', 0, ''),
(32, 'testttttttt', 'hjhvjhvjh', 'Product Bug', 'Team A', 'Data Management', 'Low', 'sds', 'New', '2021-11-03 11:49:41', 'dsdsd', NULL, '', '', 0, ''),
(33, 'testttttttt', 'hjhvjhvjh', 'Product Bug', 'Team A', 'Data Management', 'Low', 'sds', 'New', '2021-11-03 11:56:44', 'dsdsd', NULL, '', '', 0, ''),
(34, 'cta', 'cta issue', 'Product Bug', 'Team A', 'Data Management', 'Low', 'Dattasai Akula', 'New', '2021-11-03 12:17:44', 'Dattasai Akula', NULL, '', '', 0, ''),
(35, 'aaaaa', 'vccvj', 'Product Bug', 'Team A', 'Data Management', 'Low', 'test', 'New', '2021-11-05 08:20:24', 'test', NULL, '', '', 0, ''),
(36, 'bhdhsdbq', 'bhdcd', 'Product Bug', 'Team A', 'Data Management', 'Low', 'RaviKumar', 'New', '2021-11-05 15:09:57', 'RaviKumar', '2021-11-05 15:09:57', '', '', 0, ''),
(37, 'cbskjhub', 'vyhbvh', 'Product Bug', 'Team A', 'Data Management', 'Low', 'Bindhu', 'New', '2021-11-05 15:11:53', 'Bindhu', '2021-11-05 15:13:53', '', '', 0, ''),
(38, 'hjdbeh', 'shjdh', 'Product Bug', 'Team A', 'Data Management', 'Low', 'dsd', 'New', '2021-11-06 14:54:31', 'dsd', NULL, '', '', 0, ''),
(39, 'Report and Dashboards', '', 'Product Bug', 'Team A', 'Data Management', 'Low', 'Jagadeesh', 'New', '2021-11-06 14:59:32', 'Jagadeesh', NULL, '', '', 0, ''),
(40, '', '', 'Product Bug', 'Team A', 'Data Management', 'Low', '', 'New', '2021-11-06 15:00:06', '', NULL, '', '', 0, ''),
(41, '', '', 'Product Bug', 'Team A', 'Data Management', 'Low', '', 'New', '2021-11-06 17:16:07', '', NULL, '', '', 0, ''),
(42, 'cvdcv', 'nbxjsk', 'Product Bug', 'Team A', 'Data Management', 'Low', 'RRR', 'New', '2021-11-06 17:39:56', 'RRR', NULL, '', '', 0, ''),
(43, 'Demo Product Issue', 'Demo Product Issue.....', 'Product Bug', 'Team A', 'Data Management', 'Low', 'Sai', 'New', '2021-11-06 21:55:55', 'Sai', NULL, '', '', 0, ''),
(44, 'Demo Test', 'bxvshgdvwj', 'Product Bug', 'Team A', 'Data Management', 'Low', 'Sai', 'New', '2021-11-08 12:19:10', 'Sai', NULL, '', '', 0, ''),
(45, 'Test demo', 'brfbrfbr', 'Product Bug', 'Team A', 'Data Management', 'Low', 'RaviKumar', 'New', '2021-11-08 12:20:46', 'Sai', NULL, '', '', 0, ''),
(46, 'Scorecard', 'ScoreCard Issue', 'Product Bug', 'Team A', 'Data Management', 'Low', 'Ravi Kumar', 'New', '2021-11-13 23:02:46', 'Dattasai Akula', NULL, '', '', 0, ''),
(47, 'Dashboard', 'Dashboard Issue', 'Product Bug', 'Team A', 'Data Management', 'Low', 'Bhavana', 'New', '2021-11-15 10:49:29', '', '2021-11-15 15:03:08', '', '', 0, ''),
(48, NULL, NULL, 'Product Bug', 'Team A', 'Data Management', 'Low', NULL, 'New', '2021-11-15 16:51:45', NULL, NULL, '', '', 0, ''),
(49, NULL, NULL, 'Product Bug', 'Team A', 'Data Management', 'Low', NULL, 'New', '2021-11-15 17:01:39', NULL, NULL, '', '', 0, ''),
(50, 'test', 'test demo', 'Product Bug', 'Team A', 'Data Management', 'Low', 'Bhavana', 'New', '2021-11-18 13:34:35', '', NULL, '', '', NULL, NULL),
(51, 'test', 'testing', 'Product Bug', 'Team A', 'Data Management', 'Low', 'Manoja', 'New', '2021-11-18 13:55:03', 'Dattasai Akula', '2021-11-19 00:02:16', '', '', 4, 'RJEYS'),
(52, 'Report', 'Report Issue', 'Product Bug', 'Team C', 'Reports', 'Medium', 'Ravi Kumar', 'New', '2021-11-19 00:41:54', 'Bhavana', '2021-12-09 13:44:00', '', 'Sai', NULL, 'Box'),
(53, 'Dashboards', 'Dashboards Issues', 'Data Request', 'Team B', 'Dashboards', 'Medium', 'Phanindra', 'New', '2021-11-19 00:53:02', 'Bhavana', '2021-12-09 18:09:21', '', 'Manoja', NULL, 'Cisco'),
(54, 'Connectors', 'Connectors Issue', 'Product Bug', 'Team B', 'Connectors', 'Medium', 'Bhavya', 'New', '2021-11-19 01:02:52', 'Ravi Kumar', '2021-11-19 01:03:58', '', '', NULL, 'Box'),
(55, 'Reports Data', 'Reports Data Request', 'Data Request', 'Team A', 'Reports', 'Medium', 'Prasad', 'New', '2021-11-19 13:07:15', '', NULL, '', '', NULL, 'Box'),
(56, 'ScoreCard ', 'ScoreCard', 'Enhancement', 'Team A', 'Scorecard', 'Low', 'Ratna Raju Jetty', 'New', '2021-11-19 13:07:51', '', NULL, '', '', NULL, 'Box'),
(57, 'Customer 360 ', 'Customer 360 Bug Issue', 'Product Bug', 'Team C', 'C360', 'High', 'Rebecca', 'New', '2021-11-19 13:08:44', '', NULL, '', '', NULL, 'Box'),
(58, 'CTA ', 'Cta Issue', 'Enhancement', 'Team A', 'C360', 'Medium', 'Bindhu', 'New', '2021-11-19 13:13:34', 'Dattasai Akula', NULL, '', '', NULL, 'Box'),
(59, 'Journey Orchestrator', 'Journey Orchestrator Data Request', 'Data Request', 'Team A', 'Journey Orchestrator', 'High', 'Ravi Kumar', 'New', '2021-11-19 13:15:13', 'Bhavana', NULL, '', '', NULL, 'Box'),
(60, 'Rules Engine', 'Rules Engine Issue', 'Product Bug', 'Team A', 'Rules Engine', 'High', 'Dattasai Akula', 'New', '2021-11-19 13:17:39', 'Ratna Raju Jetty', NULL, '', '', NULL, 'Box'),
(61, 'Connectors ', 'Connectors Data importing Issue', 'Product Bug', 'Team B', 'Connectors', 'Medium', 'Phanindra Kumar', 'New', '2021-11-19 13:25:36', 'Rebecca', NULL, '', '', NULL, 'Box'),
(62, 'Data Designer', 'Data Designer Bug Issue', 'Product Bug', 'Team A', 'Data Designer', 'Medium', 'Prasad', 'New', '2021-11-19 13:25:38', 'Manoja', NULL, '', '', NULL, 'Box'),
(63, 'Data Management', 'Data Management Issue', 'Data Request', 'Team A', 'Data Management', 'Low', 'Jagadeesh Gosala', 'New', '2021-11-19 13:40:11', 'Bindhu', NULL, '', '', NULL, 'Box'),
(64, 'Demo', 'demo Purpose ', 'Data Request', 'Team A', 'Reports', 'Low', 'Prasad', 'New', '2021-11-22 02:15:59', 'Ratna Raju Jetty', NULL, '', '', NULL, 'Absorb Software'),
(65, 'Connectors', 'Connectors Issue', 'Product Bug', 'Team A', 'Connectors', 'Low', 'Ravi Kumar', 'New', '2021-11-22 11:56:30', 'Ratna Raju Jetty', NULL, '3642_', '', NULL, 'Anaplan'),
(66, 'Reports.....', 'Reports Issue', 'Data Request', 'Team C', 'Reports', 'Low', 'Phanindra Kumar', 'New', '2021-11-22 12:00:55', 'Ratna Raju Jetty', '2021-12-03 13:12:45', '', 'Sai', NULL, 'athenahealth'),
(67, 'Dashboard', 'Dashboard Issue', 'Enhancement', 'Team C', 'Dashboards', 'Low', 'Prasad', 'New', '2021-11-22 12:10:05', 'Ratna Raju Jetty', NULL, '', '', NULL, 'Anodot'),
(68, 'Rules', 'Rules Engine Issues', 'Data Request', 'Team A', 'Rules Engine', 'Low', 'Manoja', 'New', '2021-11-23 14:00:33', '', '2021-12-08 21:25:12', NULL, 'Prasad', NULL, 'DELOITTE'),
(69, 'Journey Orchestrator', 'Journey Orchestrator Issue', 'Data Request', 'Team A', 'Journey Orchestrator', 'Low', 'Bhavana', 'New', '2021-11-24 11:24:26', 'Dattasai Akula', NULL, '', NULL, NULL, 'DELOITTE'),
(70, 'Scorecard', 'Scorecard....', 'Product Bug', 'Team A', 'Scorecard', 'Low', 'Ratna Raju Jetty', 'New', '2021-11-24 11:26:40', 'Dattasai Akula', '2021-12-09 06:03:35', '', 'Prasad', NULL, 'DELOITTE'),
(71, 'CTA', 'CTA ', 'Enhancement', 'Team A', 'cockpit', 'Low', 'Rebecca', 'New', '2021-11-24 11:31:56', 'Ravi Kumar', NULL, '', NULL, NULL, 'DELOITTE'),
(72, 'Customer360', 'Customer360 Issue...', 'Product Bug', 'Team A', 'C360', 'Low', 'Bindhu', 'New', '2021-11-24 11:42:20', 'Test', NULL, '', NULL, NULL, 'DELOITTE'),
(73, 'Data Designer ', 'Data Designer ', 'Product Bug', 'Team B', 'Data Designer', 'Medium', 'Bhavya', 'New', '2021-11-24 11:51:11', 'Phanindra', NULL, '', NULL, NULL, 'DELOITTE'),
(74, 'test', 'test', 'Product Bug', 'Team B', 'Reports', 'Medium', 'test', 'New', '2021-11-24 13:18:56', 'Manoja', NULL, 'uploadedData/', NULL, NULL, 'Dell Boomi'),
(75, 'hiiii', 'helloooo', 'Product Bug', 'Team B', 'Data Management', 'Low', 'Prasad', 'New', '2021-11-24 13:31:44', 'Manoja', NULL, 'uploadedData/', NULL, NULL, 'Adthena'),
(76, 'bv', 'v chgv', 'Enhancement', 'Team A', 'Data Management', 'Low', 'Dattasai Akula', 'New', '2021-11-24 13:34:20', 'Manoja', NULL, '0', NULL, NULL, 'Adthena'),
(77, 'ddc', 'cxcdxcdv', 'Product Bug', 'Team A', 'Reports', 'Low', 'Ravi Kumar', 'New', '2021-11-24 13:47:33', 'Manoja', NULL, 'uploadedData/', NULL, NULL, 'Adthena'),
(78, 'vcvcx', 'scdvf', 'Product Bug', 'Team A', 'Reports', 'Medium', 'Prasad', 'Re-Open', '2021-11-24 13:48:54', 'Manoja', NULL, 'uploadedData/', NULL, NULL, 'Adthena'),
(79, 'cdcdcvdv', 'vdfvfgva', 'Enhancement', 'Team A', 'Dashboards', 'Medium', 'Rebecca', 'New', '2021-11-24 13:51:30', 'Manoja', NULL, 'uploadedData/', NULL, NULL, 'Adthena'),
(80, 'ncbxb', 'SND', 'Enhancement', 'Team B', 'Reports', 'Low', 'demo', 'New', '2021-11-24 13:53:53', 'Manoja', NULL, 'uploadedData/', NULL, NULL, 'Adthena'),
(81, 'test', 'test', 'Product Bug', 'Team A', 'Reports', 'Low', 'Jagadeesh Gosala', 'New', '2021-11-26 13:50:46', 'Ratna Raju Jetty', NULL, 'uploadedData/', NULL, NULL, 'CISCO'),
(82, 'gf', 'ddht', 'Product Bug', 'Team A', 'Reports', 'Low', 'Dattasai Akula', 'New', '2021-11-29 12:18:50', 'Manoja', NULL, '', NULL, NULL, 'Attraqt'),
(83, 'nghj', 'vjvnbj ', 'Product Bug', 'Team A', 'Reports', 'Low', 'Dattasai Akula', 'New', '2021-11-29 12:19:22', 'Manoja', NULL, '', NULL, NULL, 'Attraqt'),
(84, 'cndf', 'jbjsbf', 'Product Bug', 'Team A', 'Data Management', 'Low', 'Dattasai Akula', 'New', '2021-11-29 12:49:58', 'Manoja', NULL, 'uploadedData/Screenshot 2021-11-15 at 3.41.34 PM.png', NULL, NULL, 'Attraqt'),
(85, 'jknm', 'yvbjh', 'Product Bug', 'Team A', 'Reports', 'Low', 'Prasad', 'New', '2021-11-29 14:45:52', 'Manoja', NULL, 'uploadedData/images.jpeg', NULL, NULL, 'Attraqt'),
(86, 'test', 'testing............', 'Enhancement', 'Team A', 'Data Management', 'Low', 'test', 'New', '2021-11-29 17:34:36', 'Pranay', NULL, 'uploadedData/', NULL, NULL, 'AWS'),
(87, 'jcsjJNKN', 'ndjsnjfd', 'Product Bug', 'Team B', 'Reports', 'Low', 'demo', 'New', '2021-11-29 17:54:20', 'Manoja', NULL, 'uploadedData/Screenshot 2021-11-21 at 6.19.21 PM.png', NULL, NULL, 'Bizzabo'),
(88, 'bcxhfb', 'dbnjkbcvk', 'Enhancement', 'Team A', 'Data Management', 'Low', 'test', 'In-Progress', '2021-11-29 18:17:57', 'Test', NULL, 'uploadedData/Screenshot 2021-11-21 at 6.19.21 PM.png', NULL, NULL, 'Belong.co'),
(89, 'xjncjdNV D', 'CNV DB', 'Data Request', 'Team B', 'Reports', 'Low', 'Raju Kumar', 'New', '2021-11-29 18:19:02', 'Test', NULL, 'uploadedData/Screenshot 2021-11-11 at 4.34.41 PM.png', NULL, NULL, 'Bizzabo'),
(90, 'jsndi', 'jcnqjknj', 'Enhancement', 'Team B', 'Data Management', 'Medium', 'Bhavya', 'New', '2021-11-29 18:47:11', 'Ratna Raju Jetty', NULL, 'uploadedData/download.png', NULL, NULL, 'CISCO'),
(91, 'kjcns', 'msnkjabnk', 'Product Bug', 'Team B', 'Data Management', 'Medium', 'Rebecca', 'New', '2021-11-29 18:48:24', 'Pranay', NULL, 'uploadedData/Screenshot 2021-11-08 at 6.53.33 PM.png', NULL, NULL, 'AWS'),
(92, 'test', 'tesungggggg', 'Data Request', 'Team A', 'cockpit', 'High', 'Jagadeesh Gosala', 'New', '2021-11-30 14:37:30', 'Manoja', NULL, 'uploadedData/images (1).jpeg', NULL, NULL, 'Bongo'),
(93, 'ndbekdfjb', 'bnxkjwb', 'Product Bug', 'Team A', 'Reports', 'Medium', 'Bindhu', 'New', '2021-11-30 14:38:55', 'Manoja', NULL, 'uploadedData/How_to_Build_a_Secure_Login_BenBroussard_June2011.pdf', NULL, NULL, 'Adthena'),
(94, 'hello', 'bvsa', 'Product Bug', 'Team A', 'Data Management', 'Medium', 'Jagadeesh Gosala', 'New', '2021-12-03 13:39:45', 'Manoja', NULL, 'uploadedData/My pic.jpeg', NULL, NULL, 'Attraqt'),
(95, 'hellooo', 'nds nd', 'Enhancement', 'Team A', 'Reports', 'Medium', 'Ravi Kumar', 'New', '2021-12-03 13:44:02', 'Manoja', '2021-12-03 13:56:41', 'Rjeys_uploadedData/My pic.jpeg', 'Manoja', NULL, 'Brandwatch'),
(96, 'hello', 'nbdhj', 'Enhancement', 'Team B', 'Data Designer', 'Medium', 'Rebecca', 'New', '2021-12-03 14:31:30', 'Ratna', NULL, 'Customer_uploadedData/My pic.jpeg', NULL, NULL, 'Cisco'),
(97, 'test', 'testing', 'Product Bug', 'Team A', 'Data Management', 'Medium', 'Dattasai Akula', 'New', '2021-12-08 11:08:45', 'Aditya', NULL, 'Customer_uploadedData/', NULL, NULL, 'DEMODOLLOR'),
(98, 'test', 'tesing', 'Enhancement', 'Team B', 'Dashboards', 'Medium', 'Dattasai Akula', 'New', '2021-12-08 11:09:25', 'Aditya', NULL, 'Customer_uploadedData/1634307374798.jpeg', NULL, NULL, 'DEMODOLLOR'),
(99, 'test', 'testing', 'Enhancement', 'Team A', 'Reports', 'Medium', 'Ravi Kumar', 'New', '2021-12-08 11:15:29', 'Aditya', NULL, 'Customer_uploadedData/', NULL, NULL, 'DEMODOLLOR'),
(100, 'test', 'test', 'Product Bug', 'Team A', 'Dashboards', 'Medium', 'Phanindra', 'New', '2021-12-08 11:16:34', 'Prasad', NULL, 'Customer_uploadedData/', NULL, NULL, 'DEMODOLLOR'),
(101, 'hello', 'huuuu', 'Enhancement', 'Team B', 'Dashboards', 'Medium', 'Sai', 'New', '2021-12-08 11:20:58', 'Prasad', NULL, 'Customer_uploadedData/', NULL, NULL, 'DELOITTE'),
(102, 'test', 'testing..........', 'Product Bug', 'Team A', 'Reports', 'Low', 'Jagadeesh', 'In-Progress', '2021-12-09 06:01:13', 'Prasad', NULL, 'Customer_uploadedData/Screenshot 2021-12-06 at 8.50.01 PM.png', NULL, NULL, 'DELOITTE'),
(103, 'test', 'testing....', 'Product Bug', 'Team B', 'Scorecard', 'Medium', 'Bhavya', 'New', '2021-12-09 13:37:19', 'Sai', NULL, 'Gainsight_uploadedData/Screenshot 2021-12-03 at 5.18.17 PM.png', NULL, NULL, 'Belong.co'),
(104, 'test', 'testing........', 'Product Bug', 'Team A', 'Dashboards', 'Low', 'Bhavya', 'New', '2021-12-09 17:57:29', 'Manoja', NULL, 'Rjeys_uploadedData/Screenshot 2021-12-06 at 9.48.35 PM.png', NULL, NULL, 'Dell Boomi');

-- --------------------------------------------------------

--
-- Table structure for table `Issue_Type`
--

CREATE TABLE `Issue_Type` (
  `id` int(11) NOT NULL,
  `type` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Issue_Type`
--

INSERT INTO `Issue_Type` (`id`, `type`) VALUES
(1, 'Product Bug'),
(2, 'Enhancement'),
(3, 'Data Request');

-- --------------------------------------------------------

--
-- Table structure for table `pre_upgrade_customersData`
--

CREATE TABLE `pre_upgrade_customersData` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(250) DEFAULT NULL,
  `nickname` varchar(250) DEFAULT NULL,
  `domain_id` varchar(250) DEFAULT NULL,
  `file_path` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pre_upgrade_customersData`
--

INSERT INTO `pre_upgrade_customersData` (`id`, `customer_name`, `nickname`, `domain_id`, `file_path`) VALUES
(2, 'PACE', '', 'pace.com', 'images/PACE.png'),
(3, 'DEMODOLLOR', '', 'demodollor.com', 'images/DEMODOLLOR.png'),
(4, 'DELLBOOMI', '', 'dellboomi.com', 'images/DELLBOOMI.png');

-- --------------------------------------------------------

--
-- Table structure for table `Product_Team`
--

CREATE TABLE `Product_Team` (
  `id` int(11) NOT NULL,
  `product_team` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Product_Team`
--

INSERT INTO `Product_Team` (`id`, `product_team`) VALUES
(1, 'Team A'),
(2, 'Team B'),
(3, 'Team C');

-- --------------------------------------------------------

--
-- Table structure for table `Status`
--

CREATE TABLE `Status` (
  `id` int(11) NOT NULL,
  `status` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Status`
--

INSERT INTO `Status` (`id`, `status`) VALUES
(1, 'New'),
(2, 'In-Progress'),
(3, 'Re-Open'),
(4, 'Close');

-- --------------------------------------------------------

--
-- Table structure for table `usersdata`
--

CREATE TABLE `usersdata` (
  `id` int(11) NOT NULL,
  `role` enum('User','Admin') NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `number` bigint(120) DEFAULT NULL,
  `company` varchar(250) NOT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedby` varchar(250) DEFAULT NULL,
  `updateddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usersdata`
--

INSERT INTO `usersdata` (`id`, `role`, `username`, `password`, `name`, `number`, `company`, `CreatedDate`, `updatedby`, `updateddate`) VALUES
(1, 'Admin', 'ratnaraju@cisco.com', '8ecde15aeaf8f4c520dcc0f426dbcf30', 'Ratna', 9876543568, 'CISCO', '2021-11-21 20:42:38', 'Ratna Raju Jetty', '2021-12-03 14:25:09'),
(2, 'User', 'phani@deloitte.com', 'c8709bcf8d057fd071ce416c7d2eea6f', 'Phanindra', 9875674590, 'DELOITTE', '2021-11-21 20:42:38', 'Prasad', '2021-12-09 05:51:56'),
(3, 'Admin', 'prasad@deloitte.com', 'd808b1cc33e003d8ec538d170dc89d1d', 'Prasad', 9876587672, 'DELOITTE', '2021-11-21 20:42:38', 'Prasad', '2021-12-09 05:35:04'),
(4, 'User', 'dattasai@deloitte.com', 'e8c08b24c2a7aa6f54c1cf3d65a5b24f', 'Dattasai', 9876547277, 'DELOITTE', '2021-11-21 20:42:38', 'Prasad', '2021-12-09 05:53:18'),
(5, 'User', 'jagadeesh@cisco.com', '35752794e2969c0a5e23b451c152ad38', 'Jagadeesh', 7654567899, 'CISCO', '2021-11-21 20:42:38', 'Ratna', '2021-12-03 14:26:07'),
(8, 'User', 'demo@xyz.com', '662324a3c0dc4d460b1e1aa7f535ccc4', 'demo', 0, 'Demo', '2021-11-21 20:42:38', '', NULL),
(9, 'User', 'ravikumar@deloitte.com', 'addeac88289181c0d3b3622f3de2908b', 'Ravi', 9877663387, 'DELOITTE', '2021-11-21 20:42:38', 'Prasad', '2021-12-09 05:38:36'),
(11, 'User', 'bhavana@abcd.com', '8d88d6e88e0c8c442fcbbfb21c4f8f5d', 'Bhavana', 9456789023, 'ABCD', '2021-11-21 20:42:38', '', NULL),
(12, 'User', 'bhavya@helloworld.com', '14a363366e4480ea25aab705ff0b07bd', 'Bhavya', 9812345654, 'Hello World', '2021-11-21 20:42:38', '', NULL),
(13, 'User', 'rebecca@pqr.com', '2605c327407624557a0280d2e1a91cb4', 'Rebecca', 9988772255, 'PQR', '2021-11-21 20:42:38', '', NULL),
(14, 'Admin', 'manoja@rjeys.com', '5df88ff5bb111fc4d978f5cc1edb8475', 'Manoja', 9966447788, 'RJEYS', '2021-11-21 20:42:38', '', NULL),
(15, 'User', 'sai@wipro.com', '3eccf9fab6816b3a74aae3880af8f9a4', 'Sai', 9977886655, 'wipro', '2021-11-21 20:42:38', '', NULL),
(16, 'User', 'pawan@tcs.com', '9fad967186c0648127868f1641e43d40', 'Pawan', 9876543213, 'tcs', '2021-11-21 20:42:38', '', NULL),
(17, 'User', 'mani@tcs.com', 'bc18cf2016bbde692cb93ab094069bda', 'Mani', 8977553467, 'TCS', '2021-11-21 20:42:38', '', NULL),
(18, 'User', 'raju@cisco.com', '4b5ba10870c4b63ddc5233864beeaf7b', 'Raju Kumar', 9898654567, 'CISCO', '2021-11-21 20:42:38', '', NULL),
(19, 'User', 'hari@cisco.com', '522b67d1d3e3446e895d6a8743399b23', 'Hari Gurram', 9100897643, 'CISCO', '2021-11-21 20:42:38', '', NULL),
(20, 'Admin', 'testuser@demo1.com', 'dadd25ea9658be1f5e47e5d8eca044bb', 'test user', 8987675434, 'DEMO1', '2021-11-21 20:42:38', '', NULL),
(21, 'User', 'test@rjeys.com', '68a24878cc568766b735c62be5f306ed', 'Test', 9876543452, 'RJEYS', '2021-11-22 14:58:01', 'Manoja', '2021-12-03 13:35:43'),
(22, 'User', 'test@deloitte.com', '68a24878cc568766b735c62be5f306ed', 'Test', 8793845987, 'DELOITTE', '2021-11-22 15:03:47', 'Prasad', '2021-12-08 20:41:03'),
(23, 'User', 'viswa@cisco.com', 'a016eb1de6366a0b45ceb83c061cf964', 'viswa', 9876623876, 'CISCO', '2021-11-26 13:23:57', NULL, NULL),
(24, 'Admin', 'siva@wipro.com', 'd2e762cbc0639fd5bf8a0698bd31de5d', 'Siva', 9867826299, 'WIPRO', '2021-11-29 17:19:12', NULL, NULL),
(26, 'Admin', 'narayana@cloudflare.com', '3ca535aec47be0d000c3beb04d16dbd1', 'Narayana', 8976456789, 'CLOUDFLARE', '2021-11-29 17:23:16', NULL, NULL),
(27, 'Admin', 'narendra@godaddy.com', '43e5db3fc61333117cb37486796c7208', 'Narendra', 9845455312, 'GODADDY', '2021-11-29 17:25:56', NULL, NULL),
(28, 'Admin', 'pranay@aws.com', '02784c0ff412fe5c24c6d89af472adda', 'Pranay', 9876543456, 'AWS', '2021-11-29 17:32:10', NULL, NULL),
(29, 'Admin', 'saiprasad@gainsight.com', '23c9a1a65a4a8056d107d2506b0b3ba7', 'Sai', 8877451244, 'GAINSIGHT', '2021-12-03 11:57:49', 'Sai', '2021-12-03 12:43:31'),
(32, 'User', 'tester@gainsight.com', '853cb2477fe293199857a2f5760caf07', 'Test', 9876785432, 'GAINSIGHT', '2021-12-03 12:28:13', NULL, NULL),
(33, 'User', 'demo@gainsight.com', '14f4b2fc501ab14a296b1e8f621dffd6', 'Demo', 8964356356, 'GAINSIGHT', '2021-12-03 12:30:08', NULL, NULL),
(34, 'User', 'hsdb@gainsight.com', '9bda4b66986f5561943d238df8fb405b', 'hello', 9876543456, 'GAINSIGHT', '2021-12-03 12:32:10', NULL, NULL),
(35, 'User', 'world@gainsight.com', '8f6ba7e120ab7d751a722a07386b480b', 'world', 8976543272, 'GAINSIGHT', '2021-12-03 12:34:26', 'Sai', '2021-12-09 13:18:25'),
(36, 'User', 'hxvsjv@gainsight.com', '446d468354e00a05a7b8e46aa722eecc', 'hajhd', 9876543456, 'GAINSIGHT', '2021-12-03 12:34:59', NULL, NULL),
(37, 'User', 'hello@rjeys.com', '9bda4b66986f5561943d238df8fb405b', 'hello', 9876342172, 'RJEYS', '2021-12-03 13:32:38', 'Manoja', '2021-12-09 17:36:19'),
(38, 'User', 'demo@rjeys.com', '14f4b2fc501ab14a296b1e8f621dffd6', 'demo', 7678978987, 'RJEYS', '2021-12-03 13:33:32', NULL, NULL),
(39, 'User', 'hello@cisco.com', '9bda4b66986f5561943d238df8fb405b', 'hello', 9876545678, 'CISCO', '2021-12-03 14:22:43', NULL, NULL),
(40, 'User', 'demo@cisco.com', '14f4b2fc501ab14a296b1e8f621dffd6', 'demo', 7687656789, 'CISCO', '2021-12-03 14:23:20', NULL, NULL),
(41, 'Admin', 'teja@dtdc.com', 'fe44e7020798e04d946bde02a0c6d25d', 'Teja', 9876545678, 'DTDC', '2021-12-06 10:45:10', NULL, NULL),
(44, 'Admin', 'valli@dtdc.com', '94f976e970736aa5a57ee6e5823720e8', 'valli', 9876789871, 'DTDC', '2021-12-06 11:02:35', NULL, NULL),
(54, 'Admin', 'aditya@pace.com', '34ec7e9ed268ae5e9a620a358d44d434', 'Aditya', 8765456789, 'PACE', '2021-12-07 20:11:31', NULL, NULL),
(55, 'User', 'bindhu@rjeys.com', '1d6c77f1735d4a194365b16168682080', 'Bindhu', 8765456780, 'RJEYS', '2021-12-08 09:34:44', NULL, NULL),
(56, 'Admin', 'demodollar@demodollor.com', '5653c5cbe3397ceb21db78c84f1e654e', 'Demo', 9876545678, 'DEMODOLLOR', '2021-12-08 09:38:23', NULL, NULL),
(57, 'User', 'shiva@deloitte.com', 'f396b65e5316660954c37a9783fe8899', 'Shiva', 9876545671, 'DELOITTE', '2021-12-08 20:22:29', 'Prasad', '2021-12-08 20:37:30'),
(59, 'User', 'hari@deloitte.com', '522b67d1d3e3446e895d6a8743399b23', 'Hari', 9876543477, 'DELOITTE', '2021-12-08 20:24:26', 'Prasad', '2021-12-08 20:41:20'),
(60, 'User', 'sudheer@deloitte.com', 'e63c778d2b3d7d2e972821efe6288953', 'Sudheer', 9876545678, 'DELOITTE', '2021-12-08 20:26:03', NULL, NULL),
(62, 'User', 'krishna@deloitte.com', '70aa632f54c2bb52aceaaac9900c8071', 'Krishna Reddy', 8765456788, 'DELOITTE', '2021-12-08 20:30:18', NULL, NULL),
(64, 'User', 'tharun@deloitte.com', 'c76b037abc5c00f02e0780e8135ef205', 'Tharun', 7678725490, 'DELOITTE', '2021-12-08 20:31:37', 'Prasad', '2021-12-09 05:59:46'),
(65, 'User', 'rebecca@deloitte.com', '2605c327407624557a0280d2e1a91cb4', 'Rebecca', 9876543456, 'DELOITTE', '2021-12-09 05:34:53', NULL, NULL),
(66, 'User', 'dany@deloitte.com', 'adde048f138fdf5f0bb2f3499aa0e286', 'Dany', 9876543456, 'DELOITTE', '2021-12-09 05:45:49', NULL, NULL),
(67, 'User', 'jaga@gainsight.com', '394283e1b9c328f299004f28e57bd22a', 'Jaga', 8765678765, 'GAINSIGHT', '2021-12-09 12:58:36', NULL, NULL),
(68, 'User', 'bhavana@gainsight.com', '8d88d6e88e0c8c442fcbbfb21c4f8f5d', 'Bhavana', 8765434567, 'GAINSIGHT', '2021-12-09 14:45:10', NULL, NULL),
(69, 'User', 'bindhu@gainsight.com', '1d6c77f1735d4a194365b16168682080', 'Bindhu', 8765456790, 'GAINSIGHT', '2021-12-09 14:48:41', NULL, NULL),
(70, 'Admin', 'bhavana@dellboomi.com', '8d88d6e88e0c8c442fcbbfb21c4f8f5d', 'Bhavana', 9876545670, 'DELLBOOMI', '2021-12-09 15:02:15', NULL, NULL),
(72, 'User', 'hey@rjeys.com', '0e27eeefab4d81f9d93daf2466a51737', 'HelloWorld', 8765456780, 'RJEYS', '2021-12-09 17:35:49', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Area`
--
ALTER TABLE `Area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `issue_id` (`issue_id`);

--
-- Indexes for table `Company`
--
ALTER TABLE `Company`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `Issue_Priority`
--
ALTER TABLE `Issue_Priority`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `issue_tracker_tb`
--
ALTER TABLE `issue_tracker_tb`
  ADD PRIMARY KEY (`IssueId`);

--
-- Indexes for table `Issue_Type`
--
ALTER TABLE `Issue_Type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pre_upgrade_customersData`
--
ALTER TABLE `pre_upgrade_customersData`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Product_Team`
--
ALTER TABLE `Product_Team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Status`
--
ALTER TABLE `Status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usersdata`
--
ALTER TABLE `usersdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Area`
--
ALTER TABLE `Area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `Company`
--
ALTER TABLE `Company`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `Issue_Priority`
--
ALTER TABLE `Issue_Priority`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `issue_tracker_tb`
--
ALTER TABLE `issue_tracker_tb`
  MODIFY `IssueId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `Issue_Type`
--
ALTER TABLE `Issue_Type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pre_upgrade_customersData`
--
ALTER TABLE `pre_upgrade_customersData`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Product_Team`
--
ALTER TABLE `Product_Team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Status`
--
ALTER TABLE `Status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usersdata`
--
ALTER TABLE `usersdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `usersdata` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`issue_id`) REFERENCES `issue_tracker_tb` (`IssueId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
