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
  KEY `Collection` (`ColID`),
  CONSTRAINT `Collection` FOREIGN KEY (`ColID`) REFERENCES `Collection` (`ColID`)
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
  PRIMARY KEY (`CityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_cpt_242_datadictonary.City: ~0 rows (approximately)
/*!40000 ALTER TABLE `City` DISABLE KEYS */;
/*!40000 ALTER TABLE `City` ENABLE KEYS */;

-- Dumping structure for table jtrent238_cpt_242_datadictonary.Collection
CREATE TABLE IF NOT EXISTS `Collection` (
  `ColID` int(10) NOT NULL COMMENT '(surrogate key)',
  `ColType` varchar(50) NOT NULL,
  `TtlID` int(10) NOT NULL,
  `ColAvailable` binary(1) NOT NULL,
  `ColPageCount` int(11) NOT NULL,
  PRIMARY KEY (`ColID`),
  KEY `TtlID` (`TtlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_cpt_242_datadictonary.Collection: ~0 rows (approximately)
/*!40000 ALTER TABLE `Collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `Collection` ENABLE KEYS */;

-- Dumping structure for table jtrent238_cpt_242_datadictonary.Language
CREATE TABLE IF NOT EXISTS `Language` (
  `LangID` int(11) NOT NULL,
  `LangName` varchar(50) NOT NULL,
  `LangCode` char(5) NOT NULL,
  PRIMARY KEY (`LangID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_cpt_242_datadictonary.Language: ~0 rows (approximately)
/*!40000 ALTER TABLE `Language` DISABLE KEYS */;
/*!40000 ALTER TABLE `Language` ENABLE KEYS */;

-- Dumping structure for table jtrent238_cpt_242_datadictonary.Loan
CREATE TABLE IF NOT EXISTS `Loan` (
  `LnID` int(11) NOT NULL,
  `PerID` int(11) NOT NULL,
  `ColID` int(11) NOT NULL,
  `LnDate` date NOT NULL COMMENT 'Date of Loan',
  `LnDue` date NOT NULL COMMENT 'Date Due',
  `LnReturn` date NOT NULL COMMENT 'Return Date',
  `LnFee` int(11) NOT NULL COMMENT 'Late Fee',
  PRIMARY KEY (`LnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_cpt_242_datadictonary.Loan: ~0 rows (approximately)
/*!40000 ALTER TABLE `Loan` DISABLE KEYS */;
/*!40000 ALTER TABLE `Loan` ENABLE KEYS */;

-- Dumping structure for table jtrent238_cpt_242_datadictonary.Person
CREATE TABLE IF NOT EXISTS `Person` (
  `PerID` int(11) NOT NULL,
  `PerStatus` char(1) NOT NULL COMMENT 'Person Standing',
  `PerLname` varchar(25) NOT NULL,
  `PerFname` varchar(25) NOT NULL,
  `PerMid` varchar(25) NOT NULL,
  `PerPhone` varchar(13) NOT NULL,
  `AddID` int(11) NOT NULL,
  `PerEmail` varchar(25) NOT NULL,
  `PerDOB` date NOT NULL COMMENT 'Date of Birth',
  `PerExpire` date NOT NULL COMMENT 'Expiration Date',
  `PerEnroll` date NOT NULL COMMENT 'Patron join date',
  `PerGender` char(1) NOT NULL COMMENT 'M or F',
  `PerResID` int(11) NOT NULL COMMENT 'Responsible Person',
  PRIMARY KEY (`PerID`),
  KEY `Address` (`AddID`),
  KEY `Person` (`PerResID`),
  CONSTRAINT `Address` FOREIGN KEY (`AddID`) REFERENCES `Address` (`AddID`),
  CONSTRAINT `Person` FOREIGN KEY (`PerResID`) REFERENCES `Person` (`PerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='PerStatus Values: 0 – Good Standing, 1 – Overdue Loans, 2 – Unpaid Fines, 3 – Non Patron, 4 - Expired Card';

-- Dumping data for table jtrent238_cpt_242_datadictonary.Person: ~0 rows (approximately)
/*!40000 ALTER TABLE `Person` DISABLE KEYS */;
/*!40000 ALTER TABLE `Person` ENABLE KEYS */;

-- Dumping structure for table jtrent238_cpt_242_datadictonary.State
CREATE TABLE IF NOT EXISTS `State` (
  `StaID` int(11) NOT NULL,
  `StaName` varchar(30) NOT NULL,
  `StaAbbr` char(2) NOT NULL
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
  `TtlID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_cpt_242_datadictonary.Title: ~0 rows (approximately)
/*!40000 ALTER TABLE `Title` DISABLE KEYS */;
/*!40000 ALTER TABLE `Title` ENABLE KEYS */;

-- Dumping structure for table jtrent238_cpt_242_datadictonary.ZipCode
CREATE TABLE IF NOT EXISTS `ZipCode` (
  `ZipCode` char(10) NOT NULL COMMENT 'Stored in zip+4 format',
  `CityID` int(11) NOT NULL,
  PRIMARY KEY (`ZipCode`),
  KEY `City` (`CityID`),
  CONSTRAINT `City` FOREIGN KEY (`CityID`) REFERENCES `City` (`CityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_cpt_242_datadictonary.ZipCode: ~0 rows (approximately)
/*!40000 ALTER TABLE `ZipCode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ZipCode` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
