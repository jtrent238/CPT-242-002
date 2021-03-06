-- --------------------------------------------------------
-- Host:                         mysql-jtrent238.alwaysdata.net
-- Server version:               10.3.17-MariaDB - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for jtrent238_cpt_242_datadictonary
CREATE DATABASE IF NOT EXISTS `jtrent238_cpt_242_datadictonary` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `jtrent238_cpt_242_datadictonary`;

-- Dumping structure for table jtrent238_cpt_242_datadictonary.Address
CREATE TABLE IF NOT EXISTS `Address` (
  `AddID` int(11) NOT NULL,
  `ZipCode` char(50) NOT NULL,
  `AddApt` int(11) NOT NULL COMMENT 'Optional apt number',
  `AddStreet` varchar(100) NOT NULL COMMENT 'House number and street name',
  PRIMARY KEY (`AddID`),
  KEY `ZipCode` (`ZipCode`),
  CONSTRAINT `ZipCode` FOREIGN KEY (`ZipCode`) REFERENCES `ZipCode` (`ZipCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_cpt_242_datadictonary.Address: ~0 rows (approximately)
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;

-- Dumping structure for table jtrent238_cpt_242_datadictonary.Author
CREATE TABLE IF NOT EXISTS `Author` (
  `PersonID` int(11) NOT NULL,
  `DOD` date NOT NULL COMMENT 'Date of Death',
  `ColID` int(11) NOT NULL,
  PRIMARY KEY (`PersonID`),
  KEY `ColID` (`ColID`),
  CONSTRAINT `ColID` FOREIGN KEY (`ColID`) REFERENCES `Collection` (`ColID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Subtype of Person';

-- Dumping data for table jtrent238_cpt_242_datadictonary.Author: ~0 rows (approximately)
/*!40000 ALTER TABLE `Author` DISABLE KEYS */;
/*!40000 ALTER TABLE `Author` ENABLE KEYS */;

-- Dumping structure for table jtrent238_cpt_242_datadictonary.City
CREATE TABLE IF NOT EXISTS `City` (
  `CityID` int(100) NOT NULL,
  `CityName` varchar(100) NOT NULL,
  `CityState` varchar(100) NOT NULL,
  `CityZip` int(11) NOT NULL,
  `CityCounty` varchar(100) NOT NULL,
  PRIMARY KEY (`CityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_cpt_242_datadictonary.City: ~0 rows (approximately)
/*!40000 ALTER TABLE `City` DISABLE KEYS */;
INSERT INTO `City` (`CityID`, `CityName`, `CityState`, `CityZip`, `CityCounty`) VALUES
	(0, 'Alcolu', 'SC', 29001, 'Clarendon\r'),
	(1, 'Ballentine', 'SC', 29002, 'Richland\r'),
	(2, 'Bamberg', 'SC', 29003, 'Bamberg\r'),
	(3, 'Batesburg', 'SC', 29006, 'Lexington\r'),
	(4, 'Bethune', 'SC', 29009, 'Kershaw\r'),
	(5, 'Bishopville', 'SC', 29010, 'Lee\r'),
	(6, 'Blackstock', 'SC', 29014, 'Chester\r'),
	(7, 'Blair', 'SC', 29015, 'Fairfield\r'),
	(8, 'Blythewood', 'SC', 29016, 'Richland\r'),
	(9, 'Bowman', 'SC', 29018, 'Orangeburg\r'),
	(10, 'Camden', 'SC', 29020, 'Kershaw\r'),
	(11, 'Camden', 'SC', 29021, 'Kershaw\r'),
	(12, 'Cameron', 'SC', 29030, 'Calhoun\r'),
	(13, 'Carlisle', 'SC', 29031, 'Union\r'),
	(14, 'Cassatt', 'SC', 29032, 'Kershaw\r'),
	(15, 'Cayce', 'SC', 29033, 'Lexington\r'),
	(16, 'Chapin', 'SC', 29036, 'Lexington\r'),
	(17, 'Chappells', 'SC', 29037, 'Newberry\r'),
	(18, 'Cope', 'SC', 29038, 'Orangeburg\r'),
	(19, 'Cordova', 'SC', 29039, 'Orangeburg\r'),
	(20, 'Dalzell', 'SC', 29040, 'Sumter\r'),
	(21, 'Davis Station', 'SC', 29041, 'Clarendon\r'),
	(22, 'Denmark', 'SC', 29042, 'Bamberg\r'),
	(23, 'Eastover', 'SC', 29044, 'Richland\r'),
	(24, 'Elgin', 'SC', 29045, 'Kershaw\r'),
	(25, 'Elliott', 'SC', 29046, 'Lee\r'),
	(26, 'Elloree', 'SC', 29047, 'Orangeburg\r'),
	(27, 'Eutawville', 'SC', 29048, 'Orangeburg\r'),
	(28, 'Gable', 'SC', 29051, 'Clarendon\r'),
	(29, 'Gadsden', 'SC', 29052, 'Richland\r'),
	(30, 'Gaston', 'SC', 29053, 'Lexington\r'),
	(31, 'Gilbert', 'SC', 29054, 'Lexington\r'),
	(32, 'Great Falls', 'SC', 29055, 'Chester\r'),
	(33, 'Greeleyville', 'SC', 29056, 'Williamsburg\r'),
	(34, 'Heath Springs', 'SC', 29058, 'Lancaster\r'),
	(35, 'Holly Hill', 'SC', 29059, 'Orangeburg\r'),
	(36, 'Hopkins', 'SC', 29061, 'Richland\r'),
	(37, 'Horatio', 'SC', 29062, 'Sumter\r'),
	(38, 'Irmo', 'SC', 29063, 'Richland\r'),
	(39, 'Jenkinsville', 'SC', 29065, 'Fairfield\r'),
	(40, 'Kershaw', 'SC', 29067, 'Lancaster\r'),
	(41, 'Lamar', 'SC', 29069, 'Darlington\r'),
	(42, 'Leesville', 'SC', 29070, 'Lexington\r'),
	(43, 'Lexington', 'SC', 29071, 'Lexington\r'),
	(44, 'Lexington', 'SC', 29072, 'Lexington\r'),
	(45, 'Lexington', 'SC', 29073, 'Lexington\r'),
	(46, 'Liberty Hill', 'SC', 29074, 'Kershaw\r'),
	(47, 'Little Mountain', 'SC', 29075, 'Newberry\r'),
	(48, 'Lugoff', 'SC', 29078, 'Kershaw\r'),
	(49, 'Lydia', 'SC', 29079, 'Darlington\r'),
	(50, 'Lynchburg', 'SC', 29080, 'Lee\r'),
	(51, 'Ehrhardt', 'SC', 29081, 'Bamberg\r'),
	(52, 'Lodge', 'SC', 29082, 'Colleton\r'),
	(53, 'Mc Bee', 'SC', 29101, 'Chesterfield\r'),
	(54, 'Manning', 'SC', 29102, 'Clarendon\r'),
	(55, 'Mayesville', 'SC', 29104, 'Sumter\r'),
	(56, 'Monetta', 'SC', 29105, 'Aiken\r'),
	(57, 'Neeses', 'SC', 29107, 'Orangeburg\r'),
	(58, 'Newberry', 'SC', 29108, 'Newberry\r'),
	(59, 'New Zion', 'SC', 29111, 'Clarendon\r'),
	(60, 'North', 'SC', 29112, 'Orangeburg\r'),
	(61, 'Norway', 'SC', 29113, 'Orangeburg\r'),
	(62, 'Olanta', 'SC', 29114, 'Florence\r'),
	(63, 'Orangeburg', 'SC', 29115, 'Orangeburg\r'),
	(64, 'Orangeburg', 'SC', 29116, 'Orangeburg\r'),
	(65, 'Orangeburg', 'SC', 29117, 'Orangeburg\r'),
	(66, 'Orangeburg', 'SC', 29118, 'Orangeburg\r'),
	(67, 'Peak', 'SC', 29122, 'Newberry\r'),
	(68, 'Pelion', 'SC', 29123, 'Lexington\r'),
	(69, 'Pinewood', 'SC', 29125, 'Sumter\r'),
	(70, 'Pomaria', 'SC', 29126, 'Newberry\r'),
	(71, 'Prosperity', 'SC', 29127, 'Newberry\r'),
	(72, 'Rembert', 'SC', 29128, 'Sumter\r'),
	(73, 'Ridge Spring', 'SC', 29129, 'Saluda\r'),
	(74, 'Ridgeway', 'SC', 29130, 'Fairfield\r'),
	(75, 'Rion', 'SC', 29132, 'Fairfield\r'),
	(76, 'Rowesville', 'SC', 29133, 'Orangeburg\r'),
	(77, 'Saint Matthews', 'SC', 29135, 'Calhoun\r'),
	(78, 'Salley', 'SC', 29137, 'Aiken\r'),
	(79, 'Saluda', 'SC', 29138, 'Saluda\r'),
	(80, 'Santee', 'SC', 29142, 'Orangeburg\r'),
	(81, 'Sardinia', 'SC', 29143, 'Clarendon\r'),
	(82, 'Silverstreet', 'SC', 29145, 'Newberry\r'),
	(83, 'Springfield', 'SC', 29146, 'Orangeburg\r'),
	(84, 'State Park', 'SC', 29147, 'Richland\r'),
	(85, 'Summerton', 'SC', 29148, 'Clarendon\r'),
	(86, 'Sumter', 'SC', 29150, 'Sumter\r'),
	(87, 'Sumter', 'SC', 29151, 'Sumter\r'),
	(88, 'Shaw A F B', 'SC', 29152, 'Sumter\r'),
	(89, 'Sumter', 'SC', 29153, 'Sumter\r'),
	(90, 'Sumter', 'SC', 29154, 'Sumter\r'),
	(91, 'Swansea', 'SC', 29160, 'Lexington\r'),
	(92, 'Timmonsville', 'SC', 29161, 'Florence\r'),
	(93, 'Turbeville', 'SC', 29162, 'Clarendon\r'),
	(94, 'Vance', 'SC', 29163, 'Orangeburg\r'),
	(95, 'Wagener', 'SC', 29164, 'Aiken\r'),
	(96, 'Ward', 'SC', 29166, 'Saluda\r'),
	(97, 'Wedgefield', 'SC', 29168, 'Sumter\r'),
	(98, 'West Columbia', 'SC', 29169, 'Lexington\r'),
	(99, 'West Columbia', 'SC', 29170, 'Lexington\r'),
	(100, 'West Columbia', 'SC', 29171, 'Lexington\r'),
	(101, 'West Columbia', 'SC', 29172, 'Lexington\r'),
	(102, 'Westville', 'SC', 29175, 'Kershaw\r'),
	(103, 'White Rock', 'SC', 29177, 'Richland\r'),
	(104, 'Whitmire', 'SC', 29178, 'Newberry\r'),
	(105, 'Winnsboro', 'SC', 29180, 'Fairfield\r'),
	(106, 'Columbia', 'SC', 29201, 'Richland\r'),
	(107, 'Columbia', 'SC', 29202, 'Richland\r'),
	(108, 'Columbia', 'SC', 29203, 'Richland\r'),
	(109, 'Columbia', 'SC', 29204, 'Richland\r'),
	(110, 'Columbia', 'SC', 29205, 'Richland\r'),
	(111, 'Columbia', 'SC', 29206, 'Richland\r'),
	(112, 'Columbia', 'SC', 29207, 'Richland\r'),
	(113, 'Columbia', 'SC', 29208, 'Richland\r'),
	(114, 'Columbia', 'SC', 29209, 'Richland\r'),
	(115, 'Columbia', 'SC', 29210, 'Richland\r'),
	(116, 'Columbia', 'SC', 29211, 'Richland\r'),
	(117, 'Columbia', 'SC', 29212, 'Lexington\r'),
	(118, 'Columbia', 'SC', 29214, 'Richland\r'),
	(119, 'Columbia', 'SC', 29215, 'Richland\r'),
	(120, 'Columbia', 'SC', 29216, 'Richland\r'),
	(121, 'Columbia', 'SC', 29217, 'Richland\r'),
	(122, 'Columbia', 'SC', 29218, 'Richland\r'),
	(123, 'Columbia', 'SC', 29219, 'Richland\r'),
	(124, 'Columbia', 'SC', 29220, 'Richland\r'),
	(125, 'Columbia', 'SC', 29221, 'Richland\r'),
	(126, 'Columbia', 'SC', 29222, 'Richland\r'),
	(127, 'Columbia', 'SC', 29223, 'Richland\r'),
	(128, 'Columbia', 'SC', 29224, 'Richland\r'),
	(129, 'Columbia', 'SC', 29225, 'Richland\r'),
	(130, 'Columbia', 'SC', 29226, 'Richland\r'),
	(131, 'Columbia', 'SC', 29227, 'Richland\r'),
	(132, 'Columbia', 'SC', 29228, 'Lexington\r'),
	(133, 'Columbia', 'SC', 29229, 'Richland\r'),
	(134, 'Columbia', 'SC', 29230, 'Richland\r'),
	(135, 'Columbia', 'SC', 29240, 'Richland\r'),
	(136, 'Columbia', 'SC', 29250, 'Richland\r'),
	(137, 'Columbia', 'SC', 29260, 'Richland\r'),
	(138, 'Columbia', 'SC', 29290, 'Richland\r'),
	(139, 'Columbia', 'SC', 29292, 'Richland\r'),
	(140, 'Spartanburg', 'SC', 29301, 'Spartanburg\r'),
	(141, 'Spartanburg', 'SC', 29302, 'Spartanburg\r'),
	(142, 'Spartanburg', 'SC', 29303, 'Spartanburg\r'),
	(143, 'Spartanburg', 'SC', 29304, 'Spartanburg\r'),
	(144, 'Spartanburg', 'SC', 29305, 'Spartanburg\r'),
	(145, 'Spartanburg', 'SC', 29306, 'Spartanburg\r'),
	(146, 'Spartanburg', 'SC', 29307, 'Spartanburg\r'),
	(147, 'Boiling Springs', 'SC', 29316, 'Spartanburg\r'),
	(148, 'Spartanburg', 'SC', 29318, 'Spartanburg\r'),
	(149, 'Spartanburg', 'SC', 29319, 'Spartanburg\r'),
	(150, 'Arcadia', 'SC', 29320, 'Spartanburg\r'),
	(151, 'Buffalo', 'SC', 29321, 'Union\r'),
	(152, 'Campobello', 'SC', 29322, 'Spartanburg\r'),
	(153, 'Chesnee', 'SC', 29323, 'Spartanburg\r'),
	(154, 'Clifton', 'SC', 29324, 'Spartanburg\r'),
	(155, 'Clinton', 'SC', 29325, 'Laurens\r'),
	(156, 'Converse', 'SC', 29329, 'Spartanburg\r'),
	(157, 'Cowpens', 'SC', 29330, 'Spartanburg\r'),
	(158, 'Cross Anchor', 'SC', 29331, 'Spartanburg\r'),
	(159, 'Cross Hill', 'SC', 29332, 'Laurens\r'),
	(160, 'Drayton', 'SC', 29333, 'Spartanburg\r'),
	(161, 'Duncan', 'SC', 29334, 'Spartanburg\r'),
	(162, 'Enoree', 'SC', 29335, 'Spartanburg\r'),
	(163, 'Fairforest', 'SC', 29336, 'Spartanburg\r'),
	(164, 'Fingerville', 'SC', 29338, 'Spartanburg\r'),
	(165, 'Gaffney', 'SC', 29340, 'Cherokee\r'),
	(166, 'Gaffney', 'SC', 29341, 'Cherokee\r'),
	(167, 'Gaffney', 'SC', 29342, 'Cherokee\r'),
	(168, 'Glendale', 'SC', 29346, 'Spartanburg\r'),
	(169, 'Gramling', 'SC', 29348, 'Spartanburg\r'),
	(170, 'Inman', 'SC', 29349, 'Spartanburg\r'),
	(171, 'Joanna', 'SC', 29351, 'Laurens\r'),
	(172, 'Jonesville', 'SC', 29353, 'Union\r'),
	(173, 'Kinards', 'SC', 29355, 'Newberry\r'),
	(174, 'Landrum', 'SC', 29356, 'Spartanburg\r'),
	(175, 'Laurens', 'SC', 29360, 'Laurens\r'),
	(176, 'Lockhart', 'SC', 29364, 'Union\r'),
	(177, 'Lyman', 'SC', 29365, 'Spartanburg\r'),
	(178, 'Mayo', 'SC', 29368, 'Spartanburg\r'),
	(179, 'Moore', 'SC', 29369, 'Spartanburg\r'),
	(180, 'Mountville', 'SC', 29370, 'Laurens\r'),
	(181, 'Pacolet', 'SC', 29372, 'Spartanburg\r'),
	(182, 'Pacolet Mills', 'SC', 29373, 'Spartanburg\r'),
	(183, 'Pauline', 'SC', 29374, 'Spartanburg\r'),
	(184, 'Reidville', 'SC', 29375, 'Spartanburg\r'),
	(185, 'Roebuck', 'SC', 29376, 'Spartanburg\r'),
	(186, 'Startex', 'SC', 29377, 'Spartanburg\r'),
	(187, 'Una', 'SC', 29378, 'Spartanburg\r'),
	(188, 'Union', 'SC', 29379, 'Union\r'),
	(189, 'Waterloo', 'SC', 29384, 'Laurens\r'),
	(190, 'Wellford', 'SC', 29385, 'Spartanburg\r'),
	(191, 'White Stone', 'SC', 29386, 'Spartanburg\r'),
	(192, 'Woodruff', 'SC', 29388, 'Spartanburg\r'),
	(193, 'Duncan', 'SC', 29390, 'Spartanburg\r'),
	(194, 'Duncan', 'SC', 29391, 'Spartanburg\r'),
	(195, 'Jonesville', 'SC', 29395, 'Union\r'),
	(196, 'Charleston', 'SC', 29401, 'Charleston\r'),
	(197, 'Charleston', 'SC', 29402, 'Charleston\r'),
	(198, 'Charleston', 'SC', 29403, 'Charleston\r'),
	(199, 'Charleston Afb', 'SC', 29404, 'Charleston\r'),
	(200, 'North Charleston', 'SC', 29405, 'Charleston\r'),
	(201, 'Charleston', 'SC', 29406, 'Charleston\r'),
	(202, 'Charleston', 'SC', 29407, 'Charleston\r'),
	(203, 'Charleston', 'SC', 29409, 'Charleston\r'),
	(204, 'North Charleston', 'SC', 29410, 'Berkeley\r'),
	(205, 'Charleston', 'SC', 29412, 'Charleston\r'),
	(206, 'Charleston', 'SC', 29413, 'Charleston\r'),
	(207, 'Charleston', 'SC', 29414, 'Charleston\r'),
	(208, 'North Charleston', 'SC', 29415, 'Charleston\r'),
	(209, 'Charleston', 'SC', 29416, 'Charleston\r'),
	(210, 'Charleston', 'SC', 29417, 'Charleston\r'),
	(211, 'North Charleston', 'SC', 29418, 'Charleston\r'),
	(212, 'North Charleston', 'SC', 29419, 'Charleston\r'),
	(213, 'North Charleston', 'SC', 29420, 'Dorchester\r'),
	(214, 'Charleston', 'SC', 29422, 'Charleston\r'),
	(215, 'Charleston', 'SC', 29423, 'Charleston\r'),
	(216, 'Charleston', 'SC', 29424, 'Charleston\r'),
	(217, 'Charleston', 'SC', 29425, 'Charleston\r'),
	(218, 'Adams Run', 'SC', 29426, 'Charleston\r'),
	(219, 'Awendaw', 'SC', 29429, 'Charleston\r'),
	(220, 'Bethera', 'SC', 29430, 'Berkeley\r'),
	(221, 'Bonneau', 'SC', 29431, 'Berkeley\r'),
	(222, 'Branchville', 'SC', 29432, 'Orangeburg\r'),
	(223, 'Canadys', 'SC', 29433, 'Colleton\r'),
	(224, 'Cordesville', 'SC', 29434, 'Berkeley\r'),
	(225, 'Cottageville', 'SC', 29435, 'Colleton\r'),
	(226, 'Cross', 'SC', 29436, 'Berkeley\r'),
	(227, 'Dorchester', 'SC', 29437, 'Dorchester\r'),
	(228, 'Edisto Island', 'SC', 29438, 'Colleton\r'),
	(229, 'Folly Beach', 'SC', 29439, 'Charleston\r'),
	(230, 'Georgetown', 'SC', 29440, 'Georgetown\r'),
	(231, 'Georgetown', 'SC', 29442, 'Georgetown\r'),
	(232, 'Goose Creek', 'SC', 29445, 'Berkeley\r'),
	(233, 'Green Pond', 'SC', 29446, 'Colleton\r'),
	(234, 'Grover', 'SC', 29447, 'Dorchester\r'),
	(235, 'Harleyville', 'SC', 29448, 'Dorchester\r'),
	(236, 'Hollywood', 'SC', 29449, 'Charleston\r'),
	(237, 'Huger', 'SC', 29450, 'Berkeley\r'),
	(238, 'Isle Of Palms', 'SC', 29451, 'Charleston\r'),
	(239, 'Jacksonboro', 'SC', 29452, 'Colleton\r'),
	(240, 'Jamestown', 'SC', 29453, 'Berkeley\r'),
	(241, 'Johns Island', 'SC', 29455, 'Charleston\r'),
	(242, 'Ladson', 'SC', 29456, 'Berkeley\r'),
	(243, 'Johns Island', 'SC', 29457, 'Charleston\r'),
	(244, 'Mc Clellanville', 'SC', 29458, 'Charleston\r'),
	(245, 'Moncks Corner', 'SC', 29461, 'Berkeley\r'),
	(246, 'Mount Pleasant', 'SC', 29464, 'Charleston\r'),
	(247, 'Mount Pleasant', 'SC', 29465, 'Charleston\r'),
	(248, 'Mount Pleasant', 'SC', 29466, 'Charleston\r'),
	(249, 'Pineville', 'SC', 29468, 'Berkeley\r'),
	(250, 'Pinopolis', 'SC', 29469, 'Berkeley\r'),
	(251, 'Ravenel', 'SC', 29470, 'Charleston\r'),
	(252, 'Reevesville', 'SC', 29471, 'Dorchester\r'),
	(253, 'Ridgeville', 'SC', 29472, 'Dorchester\r'),
	(254, 'Round O', 'SC', 29474, 'Colleton\r'),
	(255, 'Ruffin', 'SC', 29475, 'Colleton\r'),
	(256, 'Russellville', 'SC', 29476, 'Berkeley\r'),
	(257, 'Saint George', 'SC', 29477, 'Dorchester\r'),
	(258, 'Saint Stephen', 'SC', 29479, 'Berkeley\r'),
	(259, 'Smoaks', 'SC', 29481, 'Colleton\r'),
	(260, 'Sullivans Island', 'SC', 29482, 'Charleston\r'),
	(261, 'Summerville', 'SC', 29483, 'Dorchester\r'),
	(262, 'Summerville', 'SC', 29484, 'Dorchester\r'),
	(263, 'Summerville', 'SC', 29485, 'Dorchester\r'),
	(264, 'Wadmalaw Island', 'SC', 29487, 'Charleston\r'),
	(265, 'Walterboro', 'SC', 29488, 'Colleton\r'),
	(266, 'Charleston', 'SC', 29492, 'Berkeley\r'),
	(267, 'Williams', 'SC', 29493, 'Colleton\r'),
	(268, 'Florence', 'SC', 29501, 'Florence\r'),
	(269, 'Florence', 'SC', 29502, 'Florence\r'),
	(270, 'Florence', 'SC', 29503, 'Florence\r'),
	(271, 'Florence', 'SC', 29504, 'Florence\r'),
	(272, 'Florence', 'SC', 29505, 'Florence\r'),
	(273, 'Florence', 'SC', 29506, 'Florence\r'),
	(274, 'Andrews', 'SC', 29510, 'Georgetown\r'),
	(275, 'Aynor', 'SC', 29511, 'Horry\r'),
	(276, 'Bennettsville', 'SC', 29512, 'Marlboro\r'),
	(277, 'Blenheim', 'SC', 29516, 'Marlboro\r'),
	(278, 'Cades', 'SC', 29518, 'Williamsburg\r'),
	(279, 'Centenary', 'SC', 29519, 'Marion\r'),
	(280, 'Cheraw', 'SC', 29520, 'Chesterfield\r'),
	(281, 'Clio', 'SC', 29525, 'Marlboro\r'),
	(282, 'Conway', 'SC', 29526, 'Horry\r'),
	(283, 'Conway', 'SC', 29527, 'Horry\r'),
	(284, 'Conway', 'SC', 29528, 'Horry\r'),
	(285, 'Coward', 'SC', 29530, 'Florence\r'),
	(286, 'Darlington', 'SC', 29532, 'Darlington\r'),
	(287, 'Dillon', 'SC', 29536, 'Dillon\r'),
	(288, 'Darlington', 'SC', 29540, 'Darlington\r'),
	(289, 'Effingham', 'SC', 29541, 'Florence\r'),
	(290, 'Floyd Dale', 'SC', 29542, 'Dillon\r'),
	(291, 'Fork', 'SC', 29543, 'Dillon\r'),
	(292, 'Galivants Ferry', 'SC', 29544, 'Horry\r'),
	(293, 'Green Sea', 'SC', 29545, 'Horry\r'),
	(294, 'Gresham', 'SC', 29546, 'Marion\r'),
	(295, 'Hamer', 'SC', 29547, 'Dillon\r'),
	(296, 'Hartsville', 'SC', 29550, 'Darlington\r'),
	(297, 'Hartsville', 'SC', 29551, 'Darlington\r'),
	(298, 'Hemingway', 'SC', 29554, 'Williamsburg\r'),
	(299, 'Johnsonville', 'SC', 29555, 'Florence\r'),
	(300, 'Kingstree', 'SC', 29556, 'Williamsburg\r'),
	(301, 'Lake City', 'SC', 29560, 'Florence\r'),
	(302, 'Lake View', 'SC', 29563, 'Dillon\r'),
	(303, 'Lane', 'SC', 29564, 'Williamsburg\r'),
	(304, 'Latta', 'SC', 29565, 'Dillon\r'),
	(305, 'Little River', 'SC', 29566, 'Horry\r'),
	(306, 'Little Rock', 'SC', 29567, 'Dillon\r'),
	(307, 'Longs', 'SC', 29568, 'Horry\r'),
	(308, 'Loris', 'SC', 29569, 'Horry\r'),
	(309, 'Mc Coll', 'SC', 29570, 'Marlboro\r'),
	(310, 'Marion', 'SC', 29571, 'Marion\r'),
	(311, 'Myrtle Beach', 'SC', 29572, 'Horry\r'),
	(312, 'Minturn', 'SC', 29573, 'Dillon\r'),
	(313, 'Mullins', 'SC', 29574, 'Marion\r'),
	(314, 'Myrtle Beach', 'SC', 29575, 'Horry\r'),
	(315, 'Murrells Inlet', 'SC', 29576, 'Horry\r'),
	(316, 'Myrtle Beach', 'SC', 29577, 'Horry\r'),
	(317, 'Myrtle Beach', 'SC', 29578, 'Horry\r'),
	(318, 'Myrtle Beach', 'SC', 29579, 'Horry\r'),
	(319, 'Nesmith', 'SC', 29580, 'Williamsburg\r'),
	(320, 'Nichols', 'SC', 29581, 'Horry\r'),
	(321, 'North Myrtle Beach', 'SC', 29582, 'Horry\r'),
	(322, 'Pamplico', 'SC', 29583, 'Florence\r'),
	(323, 'Patrick', 'SC', 29584, 'Chesterfield\r'),
	(324, 'Pawleys Island', 'SC', 29585, 'Georgetown\r'),
	(325, 'Myrtle Beach', 'SC', 29587, 'Horry\r'),
	(326, 'Myrtle Beach', 'SC', 29588, 'Horry\r'),
	(327, 'Rains', 'SC', 29589, 'Marion\r'),
	(328, 'Salters', 'SC', 29590, 'Williamsburg\r'),
	(329, 'Scranton', 'SC', 29591, 'Florence\r'),
	(330, 'Sellers', 'SC', 29592, 'Marion\r'),
	(331, 'Society Hill', 'SC', 29593, 'Darlington\r'),
	(332, 'Tatum', 'SC', 29594, 'Marlboro\r'),
	(333, 'Wallace', 'SC', 29596, 'Marlboro\r'),
	(334, 'North Myrtle Beach', 'SC', 29597, 'Horry\r'),
	(335, 'North Myrtle Beach', 'SC', 29598, 'Horry\r'),
	(336, 'Greenville', 'SC', 29601, 'Greenville\r'),
	(337, 'Greenville', 'SC', 29602, 'Greenville\r'),
	(338, 'Greenville', 'SC', 29603, 'Greenville\r'),
	(339, 'Greenville', 'SC', 29604, 'Greenville\r'),
	(340, 'Greenville', 'SC', 29605, 'Greenville\r'),
	(341, 'Greenville', 'SC', 29606, 'Greenville\r'),
	(342, 'Greenville', 'SC', 29607, 'Greenville\r'),
	(343, 'Greenville', 'SC', 29608, 'Greenville\r'),
	(344, 'Greenville', 'SC', 29609, 'Greenville\r'),
	(345, 'Greenville', 'SC', 29610, 'Greenville\r'),
	(346, 'Greenville', 'SC', 29611, 'Greenville\r'),
	(347, 'Greenville', 'SC', 29612, 'Greenville\r'),
	(348, 'Greenville', 'SC', 29613, 'Greenville\r'),
	(349, 'Greenville', 'SC', 29614, 'Greenville\r'),
	(350, 'Greenville', 'SC', 29615, 'Greenville\r'),
	(351, 'Greenville', 'SC', 29616, 'Greenville\r'),
	(352, 'Greenville', 'SC', 29617, 'Greenville\r'),
	(353, 'Abbeville', 'SC', 29620, 'Abbeville\r'),
	(354, 'Anderson', 'SC', 29621, 'Anderson\r'),
	(355, 'Anderson', 'SC', 29622, 'Anderson\r'),
	(356, 'Anderson', 'SC', 29623, 'Anderson\r'),
	(357, 'Anderson', 'SC', 29624, 'Anderson\r'),
	(358, 'Anderson', 'SC', 29625, 'Anderson\r'),
	(359, 'Anderson', 'SC', 29626, 'Anderson\r'),
	(360, 'Belton', 'SC', 29627, 'Anderson\r'),
	(361, 'Calhoun Falls', 'SC', 29628, 'Abbeville\r'),
	(362, 'Central', 'SC', 29630, 'Pickens\r'),
	(363, 'Clemson', 'SC', 29631, 'Pickens\r'),
	(364, 'Clemson', 'SC', 29632, 'Pickens\r'),
	(365, 'Clemson', 'SC', 29633, 'Pickens\r'),
	(366, 'Clemson', 'SC', 29634, 'Pickens\r'),
	(367, 'Cleveland', 'SC', 29635, 'Greenville\r'),
	(368, 'Conestee', 'SC', 29636, 'Greenville\r'),
	(369, 'Donalds', 'SC', 29638, 'Abbeville\r'),
	(370, 'Due West', 'SC', 29639, 'Abbeville\r'),
	(371, 'Easley', 'SC', 29640, 'Pickens\r'),
	(372, 'Easley', 'SC', 29641, 'Pickens\r'),
	(373, 'Easley', 'SC', 29642, 'Pickens\r'),
	(374, 'Fair Play', 'SC', 29643, 'Oconee\r'),
	(375, 'Fountain Inn', 'SC', 29644, 'Greenville\r'),
	(376, 'Gray Court', 'SC', 29645, 'Laurens\r'),
	(377, 'Greenwood', 'SC', 29646, 'Greenwood\r'),
	(378, 'Greenwood', 'SC', 29647, 'Greenwood\r'),
	(379, 'Greenwood', 'SC', 29648, 'Greenwood\r'),
	(380, 'Greenwood', 'SC', 29649, 'Greenwood\r'),
	(381, 'Greer', 'SC', 29650, 'Greenville\r'),
	(382, 'Greer', 'SC', 29651, 'Greenville\r'),
	(383, 'Greer', 'SC', 29652, 'Greenville\r'),
	(384, 'Hodges', 'SC', 29653, 'Greenwood\r'),
	(385, 'Honea Path', 'SC', 29654, 'Anderson\r'),
	(386, 'Iva', 'SC', 29655, 'Anderson\r'),
	(387, 'La France', 'SC', 29656, 'Anderson\r'),
	(388, 'Liberty', 'SC', 29657, 'Pickens\r'),
	(389, 'Long Creek', 'SC', 29658, 'Oconee\r'),
	(390, 'Lowndesville', 'SC', 29659, 'Abbeville\r'),
	(391, 'Marietta', 'SC', 29661, 'Greenville\r'),
	(392, 'Mauldin', 'SC', 29662, 'Greenville\r'),
	(393, 'Mountain Rest', 'SC', 29664, 'Oconee\r'),
	(394, 'Newry', 'SC', 29665, 'Oconee\r'),
	(395, 'Ninety Six', 'SC', 29666, 'Greenwood\r'),
	(396, 'Norris', 'SC', 29667, 'Pickens\r'),
	(397, 'Pelzer', 'SC', 29669, 'Anderson\r'),
	(398, 'Pendleton', 'SC', 29670, 'Anderson\r'),
	(399, 'Pickens', 'SC', 29671, 'Pickens\r'),
	(400, 'Seneca', 'SC', 29672, 'Oconee\r'),
	(401, 'Piedmont', 'SC', 29673, 'Greenville\r'),
	(402, 'Richland', 'SC', 29675, 'Oconee\r'),
	(403, 'Salem', 'SC', 29676, 'Oconee\r'),
	(404, 'Sandy Springs', 'SC', 29677, 'Anderson\r'),
	(405, 'Seneca', 'SC', 29678, 'Oconee\r'),
	(406, 'Seneca', 'SC', 29679, 'Oconee\r'),
	(407, 'Simpsonville', 'SC', 29680, 'Greenville\r'),
	(408, 'Simpsonville', 'SC', 29681, 'Greenville\r'),
	(409, 'Six Mile', 'SC', 29682, 'Pickens\r'),
	(410, 'Slater', 'SC', 29683, 'Greenville\r'),
	(411, 'Starr', 'SC', 29684, 'Anderson\r'),
	(412, 'Sunset', 'SC', 29685, 'Pickens\r'),
	(413, 'Tamassee', 'SC', 29686, 'Oconee\r'),
	(414, 'Taylors', 'SC', 29687, 'Greenville\r'),
	(415, 'Tigerville', 'SC', 29688, 'Greenville\r'),
	(416, 'Townville', 'SC', 29689, 'Anderson\r'),
	(417, 'Travelers Rest', 'SC', 29690, 'Greenville\r'),
	(418, 'Walhalla', 'SC', 29691, 'Oconee\r'),
	(419, 'Ware Shoals', 'SC', 29692, 'Greenwood\r'),
	(420, 'Westminster', 'SC', 29693, 'Oconee\r'),
	(421, 'Hodges', 'SC', 29695, 'Greenwood\r'),
	(422, 'West Union', 'SC', 29696, 'Oconee\r'),
	(423, 'Williamston', 'SC', 29697, 'Anderson\r'),
	(424, 'Greenville', 'SC', 29698, 'Spartanburg\r'),
	(425, 'Blacksburg', 'SC', 29702, 'Cherokee\r'),
	(426, 'Bowling Green', 'SC', 29703, 'York\r'),
	(427, 'Catawba', 'SC', 29704, 'York\r'),
	(428, 'Chester', 'SC', 29706, 'Chester\r'),
	(429, 'Fort Mill', 'SC', 29708, 'York\r'),
	(430, 'Chesterfield', 'SC', 29709, 'Chesterfield\r'),
	(431, 'Clover', 'SC', 29710, 'York\r'),
	(432, 'Edgemoor', 'SC', 29712, 'Chester\r'),
	(433, 'Fort Lawn', 'SC', 29714, 'Chester\r'),
	(434, 'Fort Mill', 'SC', 29715, 'York\r'),
	(435, 'Fort Mill', 'SC', 29716, 'York\r'),
	(436, 'Hickory Grove', 'SC', 29717, 'York\r'),
	(437, 'Jefferson', 'SC', 29718, 'Chesterfield\r'),
	(438, 'Lancaster', 'SC', 29720, 'Lancaster\r'),
	(439, 'Lancaster', 'SC', 29721, 'Lancaster\r'),
	(440, 'Lancaster', 'SC', 29722, 'Lancaster\r'),
	(441, 'Lando', 'SC', 29724, 'Chester\r'),
	(442, 'Mc Connells', 'SC', 29726, 'York\r'),
	(443, 'Mount Croghan', 'SC', 29727, 'Chesterfield\r'),
	(444, 'Pageland', 'SC', 29728, 'Chesterfield\r'),
	(445, 'Richburg', 'SC', 29729, 'Chester\r'),
	(446, 'Rock Hill', 'SC', 29730, 'York\r'),
	(447, 'Rock Hill', 'SC', 29731, 'York\r'),
	(448, 'Rock Hill', 'SC', 29732, 'York\r'),
	(449, 'Rock Hill', 'SC', 29733, 'York\r'),
	(450, 'Rock Hill', 'SC', 29734, 'York\r'),
	(451, 'Ruby', 'SC', 29741, 'Chesterfield\r'),
	(452, 'Sharon', 'SC', 29742, 'York\r'),
	(453, 'Smyrna', 'SC', 29743, 'York\r'),
	(454, 'Van Wyck', 'SC', 29744, 'Lancaster\r'),
	(455, 'York', 'SC', 29745, 'York\r'),
	(456, 'Aiken', 'SC', 29801, 'Aiken\r'),
	(457, 'Aiken', 'SC', 29802, 'Aiken\r'),
	(458, 'Aiken', 'SC', 29803, 'Aiken\r'),
	(459, 'Aiken', 'SC', 29804, 'Aiken\r'),
	(460, 'Aiken', 'SC', 29805, 'Aiken\r'),
	(461, 'Aiken', 'SC', 29808, 'Aiken\r'),
	(462, 'New Ellenton', 'SC', 29809, 'Aiken\r'),
	(463, 'Allendale', 'SC', 29810, 'Allendale\r'),
	(464, 'Barnwell', 'SC', 29812, 'Barnwell\r'),
	(465, 'Hilda', 'SC', 29813, 'Barnwell\r'),
	(466, 'Bath', 'SC', 29816, 'Aiken\r'),
	(467, 'Blackville', 'SC', 29817, 'Barnwell\r'),
	(468, 'Bradley', 'SC', 29819, 'Greenwood\r'),
	(469, 'Clarks Hill', 'SC', 29821, 'Mccormick\r'),
	(470, 'Clearwater', 'SC', 29822, 'Aiken\r'),
	(471, 'Edgefield', 'SC', 29824, 'Edgefield\r'),
	(472, 'Elko', 'SC', 29826, 'Barnwell\r'),
	(473, 'Fairfax', 'SC', 29827, 'Allendale\r'),
	(474, 'Gloverville', 'SC', 29828, 'Aiken\r'),
	(475, 'Graniteville', 'SC', 29829, 'Aiken\r'),
	(476, 'Jackson', 'SC', 29831, 'Aiken\r'),
	(477, 'Johnston', 'SC', 29832, 'Edgefield\r'),
	(478, 'Langley', 'SC', 29834, 'Aiken\r'),
	(479, 'Mc Cormick', 'SC', 29835, 'Mccormick\r'),
	(480, 'Martin', 'SC', 29836, 'Allendale\r'),
	(481, 'Modoc', 'SC', 29838, 'Mccormick\r'),
	(482, 'Montmorenci', 'SC', 29839, 'Aiken\r'),
	(483, 'Mount Carmel', 'SC', 29840, 'Mccormick\r'),
	(484, 'North Augusta', 'SC', 29841, 'Aiken\r'),
	(485, 'Beech Island', 'SC', 29842, 'Aiken\r'),
	(486, 'Olar', 'SC', 29843, 'Bamberg\r'),
	(487, 'Parksville', 'SC', 29844, 'Mccormick\r'),
	(488, 'Plum Branch', 'SC', 29845, 'Mccormick\r'),
	(489, 'Sycamore', 'SC', 29846, 'Allendale\r'),
	(490, 'Trenton', 'SC', 29847, 'Edgefield\r'),
	(491, 'Troy', 'SC', 29848, 'Greenwood\r'),
	(492, 'Ulmer', 'SC', 29849, 'Allendale\r'),
	(493, 'Vaucluse', 'SC', 29850, 'Aiken\r'),
	(494, 'Warrenville', 'SC', 29851, 'Aiken\r'),
	(495, 'Williston', 'SC', 29853, 'Barnwell\r'),
	(496, 'Windsor', 'SC', 29856, 'Aiken\r'),
	(497, 'North Augusta', 'SC', 29860, 'Aiken\r'),
	(498, 'North Augusta', 'SC', 29861, 'Aiken\r'),
	(499, 'Mc Cormick', 'SC', 29899, 'Mccormick\r'),
	(500, 'Beaufort', 'SC', 29901, 'Beaufort\r'),
	(501, 'Beaufort', 'SC', 29902, 'Beaufort\r'),
	(502, 'Beaufort', 'SC', 29903, 'Beaufort\r'),
	(503, 'Beaufort', 'SC', 29904, 'Beaufort\r'),
	(504, 'Beaufort', 'SC', 29905, 'Beaufort\r'),
	(505, 'Beaufort', 'SC', 29906, 'Beaufort\r'),
	(506, 'Ladys Island', 'SC', 29907, 'Beaufort\r'),
	(507, 'Okatie', 'SC', 29909, 'Beaufort\r'),
	(508, 'Bluffton', 'SC', 29910, 'Beaufort\r'),
	(509, 'Brunson', 'SC', 29911, 'Hampton\r'),
	(510, 'Coosawhatchie', 'SC', 29912, 'Jasper\r'),
	(511, 'Crocketville', 'SC', 29913, 'Hampton\r'),
	(512, 'Dale', 'SC', 29914, 'Beaufort\r'),
	(513, 'Daufuskie Island', 'SC', 29915, 'Beaufort\r'),
	(514, 'Early Branch', 'SC', 29916, 'Hampton\r'),
	(515, 'Estill', 'SC', 29918, 'Hampton\r'),
	(516, 'Saint Helena Island', 'SC', 29920, 'Beaufort\r'),
	(517, 'Furman', 'SC', 29921, 'Hampton\r'),
	(518, 'Garnett', 'SC', 29922, 'Hampton\r'),
	(519, 'Gifford', 'SC', 29923, 'Hampton\r'),
	(520, 'Hampton', 'SC', 29924, 'Hampton\r'),
	(521, 'Hilton Head Island', 'SC', 29925, 'Beaufort\r'),
	(522, 'Hilton Head Island', 'SC', 29926, 'Beaufort\r'),
	(523, 'Hardeeville', 'SC', 29927, 'Jasper\r'),
	(524, 'Hilton Head Island', 'SC', 29928, 'Beaufort\r'),
	(525, 'Islandton', 'SC', 29929, 'Colleton\r'),
	(526, 'Lobeco', 'SC', 29931, 'Beaufort\r'),
	(527, 'Luray', 'SC', 29932, 'Hampton\r'),
	(528, 'Miley', 'SC', 29933, 'Hampton\r'),
	(529, 'Pineland', 'SC', 29934, 'Jasper\r'),
	(530, 'Port Royal', 'SC', 29935, 'Beaufort\r'),
	(531, 'Ridgeland', 'SC', 29936, 'Jasper\r'),
	(532, 'Hilton Head Island', 'SC', 29938, 'Beaufort\r'),
	(533, 'Scotia', 'SC', 29939, 'Hampton\r'),
	(534, 'Seabrook', 'SC', 29940, 'Beaufort\r'),
	(535, 'Sheldon', 'SC', 29941, 'Beaufort\r'),
	(536, 'Tillman', 'SC', 29943, 'Jasper\r'),
	(537, 'Varnville', 'SC', 29944, 'Hampton\r'),
	(538, 'Yemassee', 'SC', 29945, 'Hampton');
/*!40000 ALTER TABLE `City` ENABLE KEYS */;

-- Dumping structure for table jtrent238_cpt_242_datadictonary.Collection
CREATE TABLE IF NOT EXISTS `Collection` (
  `ColID` int(10) NOT NULL COMMENT '(surrogate key)',
  `ColType` varchar(50) NOT NULL,
  `TtlID` int(10) NOT NULL,
  `ColAvailable` binary(1) NOT NULL,
  `ColPageCount` int(11) NOT NULL,
  `ColPrice` int(11) NOT NULL COMMENT 'Purchace/replacement cost',
  PRIMARY KEY (`ColID`),
  KEY `TtlID` (`TtlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_cpt_242_datadictonary.Collection: ~0 rows (approximately)
/*!40000 ALTER TABLE `Collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `Collection` ENABLE KEYS */;

-- Dumping structure for table jtrent238_cpt_242_datadictonary.Genre
CREATE TABLE IF NOT EXISTS `Genre` (
  `GenreCode` char(2) NOT NULL COMMENT 'Genre abbrev code',
  `Genre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_cpt_242_datadictonary.Genre: ~0 rows (approximately)
/*!40000 ALTER TABLE `Genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `Genre` ENABLE KEYS */;

-- Dumping structure for table jtrent238_cpt_242_datadictonary.Language
CREATE TABLE IF NOT EXISTS `Language` (
  `LangID` int(11) NOT NULL,
  `LangName` varchar(50) NOT NULL,
  `LangDesc` varchar(20) NOT NULL,
  `LangCode` char(5) NOT NULL,
  PRIMARY KEY (`LangID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_cpt_242_datadictonary.Language: ~0 rows (approximately)
/*!40000 ALTER TABLE `Language` DISABLE KEYS */;
/*!40000 ALTER TABLE `Language` ENABLE KEYS */;

-- Dumping structure for table jtrent238_cpt_242_datadictonary.Loan
CREATE TABLE IF NOT EXISTS `Loan` (
  `LoanID` int(11) NOT NULL,
  `PerID` int(11) NOT NULL,
  `ColID` int(11) NOT NULL,
  `LoanDate` date NOT NULL COMMENT 'Date of Loan',
  `LoanDue` date NOT NULL COMMENT 'Date Due',
  `LoanReturn` date NOT NULL COMMENT 'Return Date',
  `LoanFee` int(11) NOT NULL COMMENT 'Late Fee',
  `LoanPaid` int(11) NOT NULL COMMENT 'Fee Paid',
  PRIMARY KEY (`LoanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_cpt_242_datadictonary.Loan: ~0 rows (approximately)
/*!40000 ALTER TABLE `Loan` DISABLE KEYS */;
/*!40000 ALTER TABLE `Loan` ENABLE KEYS */;

-- Dumping structure for table jtrent238_cpt_242_datadictonary.Media
CREATE TABLE IF NOT EXISTS `Media` (
  `MediaCode` char(5) NOT NULL,
  `MediaDesc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_cpt_242_datadictonary.Media: ~0 rows (approximately)
/*!40000 ALTER TABLE `Media` DISABLE KEYS */;
/*!40000 ALTER TABLE `Media` ENABLE KEYS */;

-- Dumping structure for table jtrent238_cpt_242_datadictonary.Person
CREATE TABLE IF NOT EXISTS `Person` (
  `PerID` int(11) NOT NULL,
  `PerStatus` char(1) NOT NULL COMMENT 'Person Standing',
  `PerLname` varchar(25) NOT NULL,
  `PerFname` varchar(25) NOT NULL,
  `PerMid` varchar(25) NOT NULL,
  `PerPhone` varchar(13) NOT NULL COMMENT 'Telephone number',
  `AddID` int(11) NOT NULL,
  `PerEmail` varchar(25) NOT NULL,
  `PerDOB` date NOT NULL COMMENT 'Date of Birth',
  `PerExpire` date NOT NULL COMMENT 'Expiration Date',
  `PerEnroll` date NOT NULL COMMENT 'Patron join date',
  `PerGender` char(1) NOT NULL COMMENT 'M or F',
  `PerResID` int(11) NOT NULL COMMENT 'Responsible Person',
  PRIMARY KEY (`PerID`),
  KEY `Person` (`PerResID`),
  KEY `PerID` (`AddID`),
  CONSTRAINT `PerResID` FOREIGN KEY (`PerResID`) REFERENCES `Person` (`PerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='PerStatus Values: 0 – Good Standing, 1 – Overdue Loans, 2 – Unpaid Fines, 3 – Non Patron, 4 - Expired Card';

-- Dumping data for table jtrent238_cpt_242_datadictonary.Person: ~0 rows (approximately)
/*!40000 ALTER TABLE `Person` DISABLE KEYS */;
/*!40000 ALTER TABLE `Person` ENABLE KEYS */;

-- Dumping structure for table jtrent238_cpt_242_datadictonary.Publisher
CREATE TABLE IF NOT EXISTS `Publisher` (
  `PubID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Autonumber surrogate',
  `PubName` varchar(50) NOT NULL,
  `PubPhone` varchar(50) NOT NULL,
  `AddID` int(11) NOT NULL,
  PRIMARY KEY (`PubID`),
  KEY `AddID` (`AddID`),
  CONSTRAINT `AddID` FOREIGN KEY (`AddID`) REFERENCES `Address` (`AddID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_cpt_242_datadictonary.Publisher: ~0 rows (approximately)
/*!40000 ALTER TABLE `Publisher` DISABLE KEYS */;
/*!40000 ALTER TABLE `Publisher` ENABLE KEYS */;

-- Dumping structure for table jtrent238_cpt_242_datadictonary.State
CREATE TABLE IF NOT EXISTS `State` (
  `StaID` int(11) NOT NULL,
  `StaName` varchar(30) NOT NULL,
  `StaAbbr` char(2) NOT NULL,
  KEY `StaAbbr` (`StaAbbr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_cpt_242_datadictonary.State: ~50 rows (approximately)
/*!40000 ALTER TABLE `State` DISABLE KEYS */;
INSERT INTO `State` (`StaID`, `StaName`, `StaAbbr`) VALUES
	(0, 'ALABAMA', 'AL'),
	(1, 'ALASKA', 'AK'),
	(2, 'ARIZONA', 'AZ'),
	(3, 'ARKANSAS', 'AR'),
	(4, 'CALIFORNIA', 'CA'),
	(5, 'COLORADO', 'CO'),
	(6, 'CONNECTICUT', 'CT'),
	(7, 'DELAWARE', 'DE'),
	(8, 'FLORIDA', 'FL'),
	(9, 'GEORGIA', 'GA'),
	(10, 'HAWAII', 'HI'),
	(11, 'IDAHO', 'ID'),
	(12, 'ILLINOIS', 'IL'),
	(13, 'INDIANA', 'IN'),
	(14, 'IOWA', 'IA'),
	(15, 'KANSAS', 'KS'),
	(16, 'KENTUCKY', 'KY'),
	(17, 'LOUISIANA', 'LA'),
	(18, 'MAINE', 'ME'),
	(19, 'MARYLAND', 'MD'),
	(20, 'MASSACHUSETTS', 'MA'),
	(21, 'MICHIGAN', 'MI'),
	(22, 'MINNESOTA', 'MN'),
	(23, 'MISSISSIPPI', 'MS'),
	(24, 'MISSOURI', 'MO'),
	(25, 'MONTANA', 'MT'),
	(26, 'NEBRASKA', 'NE'),
	(27, 'NEVADA', 'NV'),
	(28, 'NEW HAMPSHIRE', 'NH'),
	(29, 'NEW JERSEY', 'NJ'),
	(30, 'NEW MEXICO', 'NM'),
	(31, 'NEW YORK', 'NY'),
	(32, 'NORTH CAROLINA', 'NC'),
	(33, 'NORTH DAKOTA', 'ND'),
	(34, 'OHIO', 'OH'),
	(35, 'OKLAHOMA', 'OK'),
	(36, 'OREGON', 'OR'),
	(37, 'PENNSYLVANIA', 'PA'),
	(38, 'RHODE ISLAND', 'RI'),
	(39, 'SOUTH CAROLINA', 'SC'),
	(40, 'SOUTH DAKOTA', 'SD'),
	(41, 'TENNESSEE', 'TN'),
	(42, 'TEXAS', 'TX'),
	(43, 'UTAH', 'UT'),
	(44, 'VERMONT', 'VT'),
	(45, 'VIRGINIA', 'VA'),
	(46, 'WASHINGTON', 'WA'),
	(47, 'WEST VIRGINIA', 'WV'),
	(48, 'WISCONSIN', 'WI'),
	(49, 'WYOMING', 'WY');
/*!40000 ALTER TABLE `State` ENABLE KEYS */;

-- Dumping structure for table jtrent238_cpt_242_datadictonary.Title
CREATE TABLE IF NOT EXISTS `Title` (
  `TtlID` int(10) NOT NULL,
  `GenreCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_cpt_242_datadictonary.Title: ~0 rows (approximately)
/*!40000 ALTER TABLE `Title` DISABLE KEYS */;
/*!40000 ALTER TABLE `Title` ENABLE KEYS */;

-- Dumping structure for table jtrent238_cpt_242_datadictonary.ZipCode
CREATE TABLE IF NOT EXISTS `ZipCode` (
  `ZipCode` char(10) NOT NULL COMMENT 'Stored in zip+4 format',
  `CityID` int(11) NOT NULL,
  `StaAbbr` char(2) NOT NULL,
  PRIMARY KEY (`ZipCode`),
  KEY `CityID` (`CityID`),
  KEY `StaAbbr` (`StaAbbr`),
  CONSTRAINT `CityID` FOREIGN KEY (`CityID`) REFERENCES `City` (`CityID`),
  CONSTRAINT `StaAbbr` FOREIGN KEY (`StaAbbr`) REFERENCES `State` (`StaAbbr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_cpt_242_datadictonary.ZipCode: ~0 rows (approximately)
/*!40000 ALTER TABLE `ZipCode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ZipCode` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
