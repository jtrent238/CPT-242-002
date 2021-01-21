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


-- Dumping database structure for jtrent238_normalization_exercise_demo
CREATE DATABASE IF NOT EXISTS `jtrent238_normalization_exercise_demo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `jtrent238_normalization_exercise_demo`;

-- Dumping structure for table jtrent238_normalization_exercise_demo.Diagnosis
CREATE TABLE IF NOT EXISTS `Diagnosis` (
  `DiagCode` varchar(50) NOT NULL,
  `DiaDesc` varchar(50) NOT NULL,
  PRIMARY KEY (`DiagCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_normalization_exercise_demo.Diagnosis: ~0 rows (approximately)
/*!40000 ALTER TABLE `Diagnosis` DISABLE KEYS */;
/*!40000 ALTER TABLE `Diagnosis` ENABLE KEYS */;

-- Dumping structure for table jtrent238_normalization_exercise_demo.Patient
CREATE TABLE IF NOT EXISTS `Patient` (
  ` PatID` int(11) NOT NULL AUTO_INCREMENT,
  `PatFirst` varchar(50) NOT NULL,
  `PatLast` varchar(50) NOT NULL,
  `PatSuffix` varchar(50) NOT NULL,
  PRIMARY KEY (` PatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_normalization_exercise_demo.Patient: ~0 rows (approximately)
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `Patient` ENABLE KEYS */;

-- Dumping structure for table jtrent238_normalization_exercise_demo.Prescription
CREATE TABLE IF NOT EXISTS `Prescription` (
  `PreID` int(11) NOT NULL AUTO_INCREMENT,
  `VisitID` int(11) NOT NULL,
  `Medication` int(11) DEFAULT NULL,
  `Dosage` int(11) DEFAULT NULL,
  `Quanity` int(11) DEFAULT NULL,
  `Frequency` int(11) DEFAULT NULL,
  PRIMARY KEY (`PreID`),
  KEY `VisitID` (`VisitID`),
  CONSTRAINT `VisitID` FOREIGN KEY (`VisitID`) REFERENCES `Visit` (`VisitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_normalization_exercise_demo.Prescription: ~0 rows (approximately)
/*!40000 ALTER TABLE `Prescription` DISABLE KEYS */;
/*!40000 ALTER TABLE `Prescription` ENABLE KEYS */;

-- Dumping structure for table jtrent238_normalization_exercise_demo.Procedure
CREATE TABLE IF NOT EXISTS `Procedure` (
  `ProCode` varchar(50) NOT NULL,
  `ProDesc` varchar(50) NOT NULL,
  PRIMARY KEY (`ProCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_normalization_exercise_demo.Procedure: ~0 rows (approximately)
/*!40000 ALTER TABLE `Procedure` DISABLE KEYS */;
/*!40000 ALTER TABLE `Procedure` ENABLE KEYS */;

-- Dumping structure for table jtrent238_normalization_exercise_demo.Provider
CREATE TABLE IF NOT EXISTS `Provider` (
  `ProvID` int(11) NOT NULL,
  `ProvTitle` varchar(50) NOT NULL,
  `ProvLast` varchar(50) NOT NULL,
  `ProvFirst` varchar(50) NOT NULL,
  `ProvDegree` varchar(50) NOT NULL,
  PRIMARY KEY (`ProvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_normalization_exercise_demo.Provider: ~0 rows (approximately)
/*!40000 ALTER TABLE `Provider` DISABLE KEYS */;
/*!40000 ALTER TABLE `Provider` ENABLE KEYS */;

-- Dumping structure for table jtrent238_normalization_exercise_demo.Visit
CREATE TABLE IF NOT EXISTS `Visit` (
  `VisitId` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `PatID` int(11) NOT NULL,
  `ProvID` int(11) NOT NULL,
  `Diagnosis` varchar(50) DEFAULT NULL,
  `Procedure` varchar(50) DEFAULT NULL,
  `Presciption` varchar(50) DEFAULT NULL,
  `VisitType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`VisitId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_normalization_exercise_demo.Visit: ~5 rows (approximately)
/*!40000 ALTER TABLE `Visit` DISABLE KEYS */;
INSERT INTO `Visit` (`VisitId`, `Date`, `PatID`, `ProvID`, `Diagnosis`, `Procedure`, `Presciption`, `VisitType`) VALUES
	(1, '2018-09-17', 1, 1, 'M01', 'I01', '0', '0'),
	(2, '2018-09-17', 1, 1, 'M01', 'Rx', 'Amoxicillan', NULL),
	(3, '2018-09-17', 2, 2, 'C01', 'Rx', 'Robitessen', NULL),
	(4, '2018-09-17', 3, 1, 'L01', 'S01', NULL, NULL),
	(5, '2018-09-17', 3, 1, 'L01', 'I01', 'Tenanus Vx', NULL),
	(6, '2018-09-18', 4, 2, NULL, NULL, NULL, 'Followup');
/*!40000 ALTER TABLE `Visit` ENABLE KEYS */;

-- Dumping structure for table jtrent238_normalization_exercise_demo.VisitType
CREATE TABLE IF NOT EXISTS `VisitType` (
  `VisitType` varchar(50) NOT NULL,
  PRIMARY KEY (`VisitType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table jtrent238_normalization_exercise_demo.VisitType: ~0 rows (approximately)
/*!40000 ALTER TABLE `VisitType` DISABLE KEYS */;
/*!40000 ALTER TABLE `VisitType` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
