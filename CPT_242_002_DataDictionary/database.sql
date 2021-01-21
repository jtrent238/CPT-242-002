-- CPT242-002 Data Dictionary --

--
CREATE DATABASE IF NOT EXISTS `CPT_242_002_DataDictionary`;
USE `CPT_242_002_DataDictionary`;

-- Address Table --
CREATE TABLE IF NOT EXISTS Address (
	AddID INT,
	ZipCode INT,
	AddApt INT,
	AddStreet INT,
	PRIMARY KEY (AddID)
);

-- Author Table --
CREATE TABLE IF NOT EXISTS Author (
	PersonID INT,
	DOD DATE,
	ColID INT,
	PRIMARY KEY (PersonID)
);

-- City  Table --
CREATE TABLE IF NOT EXISTS City (
	CityID INT AUTO_INCREMENT,
	CityName VARCHAR(100),
	PRIMARY KEY (CityID)
);

-- Collection Table --
CREATE TABLE IF NOT EXISTS Collection (
	ColID INT,
	TtlID INT,
	ColAvailable ENUM('Y', 'N'),
	ColPageCount INT,
	ColPrice INT,
	PubID INT,
	LangID INT,
	ColDate DATE,
	MediaCode INT,
	PRIMARY KEY (ColID)
);

-- Genre Table --
CREATE TABLE IF NOT EXISTS Genre (
	GenreCode CHAR(2) NOT NULL,
	TitleID INT,
	PRIMARY KEY (GenreCode)
);

-- Language Table --
CREATE TABLE IF NOT EXISTS Language (
	LanguageID INT NOT NULL AUTO_INCREMENT,
	LangDesc VARCHAR(20) NOT NULL,
	PRIMARY KEY (LanguageID)
);

-- Loan Table --
CREATE TABLE IF NOT EXISTS Loan (
	LoanID INT,
	PerID INT,
	ColID INT,
	LoanDate DATE,
	LoanDue DATE,
	LoanReturn DATE,
	LoanFee INT,
	LoanPaid ENUM('Y', 'N'),
	PRIMARY KEY (LoanID)
);

-- Media Table --
CREATE TABLE IF NOT EXISTS Media (
	MediaCode VARCHAR(5) NOT NULL,
	MediaDesc VARCHAR(20) NOT NULL,
	TermID INT
);

-- Person Table --
CREATE TABLE IF NOT EXISTS Person (
	PerID INT NOT NULL,
	PerFName VARCHAR(25) NOT NULL,
	PerMid VARCHAR(25),
	PerLName VARCHAR(25) NOT NULL,
	PerStatus ENUM('0', '1', '2', '3', '4'),
	PerPhone VARCHAR(25),
	PerDOB DATE NOT NULL,
	PerExpire DATE,
	PerEnroll Date,
	PerGender ENUM('M', 'F') NOT NULL,
	PerAddID INT,
	AddID INT,
	PRIMARY KEY (PerID)
);

-- Publisher Table --
CREATE TABLE IF NOT EXISTS Publisher (
	PubID INT NOT NULL AUTO_INCREMENT,
	PubName VARCHAR(50) NOT NULL,
	PubPhone VARCHAR(10) NOT NULL,
	PubEmail VARCHAR(15),
	PerContact VARCHAR(15),
	PerSales VARCHAR(15),
	AddID INT,
	PRIMARY KEY (PubID)
);

-- Rating Table --
CREATE TABLE IF NOT EXISTS Rating (
	RatCode INT,
	RatDesc VARCHAR(20),
	RatMinAge INT
);

-- State Table --
CREATE TABLE IF NOT EXISTS State (
	StaAbbr CHAR(2) NOT NULL,
	StaName VARCHAR(20) NOT NULL,
	PRIMARY KEY (StaAbbr)
);

-- Term Table --
CREATE TABLE IF NOT EXISTS Term (
	TermID INT,
	TermLength INT,
	TermLateFee INT
);

-- Title Table --
CREATE TABLE IF NOT EXISTS Title (
	TtlID INT(10) NOT NULL,
	TtlAuthor VARCHAR(25),
	TtlTitle VARCHAR(25) NOT NULL,
	TtlSubTitle VARCHAR(25),
	TtlDate DATE NOT NULL,
	TtlVersion VARCHAR(5),
	GenreCode INT,
	PubID INT,
	PRIMARY KEY (TtlID)
);

-- Waitlist Table --
CREATE TABLE IF NOT EXISTS Waitlist (
	WaitID INT Not NULL AUTO_INCREMENT,
	WaitDate DATE Not NULL,
	WaitNotify DATE,
	WaitActive ENUM('Y', 'N'),
	PRIMARY KEY (WaitID)
);

-- ZipCode Table --
CREATE TABLE IF NOT EXISTS ZipCode (
	ZipCode Char(10) NOT NULL,
	CityID INT,
	StaAbbr VarChar(2),
	PRIMARY KEY (ZipCode)
);

