-- CPT242-002 Normalization Exercise II --

-- CPT_242_002_jpatte19_normalization_exercise_ii --
CREATE DATABASE IF NOT EXISTS `codelobster_testdb`;
USE `codelobster_testdb`;

-- Person Table --
CREATE TABLE IF NOT EXISTS Person (
	TNumber VARCHAR(12) NOT NULL,
	PerFirst VARCHAR(255) NOT NULL,
	PerLast VARCHAR(255) NOT NULL,
	PerSuffix VARCHAR(5),
	PRIMARY KEY (TNumber)
);

-- Person Table Data --
	INSERT INTO Person (TNumber, PerFirst, PerLast)
		VALUES ('T10004537', 'John', 'Doe');
	INSERT INTO Person (TNumber, PerFirst, PerLast)
		VALUES ('T1005425', 'Sally', 'Smith');
	INSERT INTO Person (TNumber, PerFirst, PerLast)
		VALUES ('T12004522', 'Wade', 'Hampton');
	INSERT INTO Person (TNumber, PerFirst, PerLast, PerSuffix)
		VALUES ('T10876345', 'John', 'Doe', 'Jr');
	
	
-- Zip Table --
CREATE TABLE IF NOT EXISTS Zip (
	ZipCode VARCHAR(11) NOT NULL,
	City VARCHAR(255) NOT NULL,
	StateAbbr VARCHAR(2) NOT NULL,
	PRIMARY KEY (ZipCode)
);

-- ZipCode Table Data --
	INSERT INTO Zip (ZipCode, City, StateAbbr)
		VALUES ('25779', 'Clemson', 'SC');
	INSERT INTO Zip (ZipCode, City, StateAbbr)
		VALUES ('23634', 'Anderson', 'SC');
	INSERT INTO Zip (ZipCode, City, StateAbbr)
		VALUES ('40010', 'Washington', 'DC');
	INSERT INTO Zip (ZipCode, City, StateAbbr)
		VALUES ('25776', 'Pendelton', 'SC');
					
	
-- Term Table --
CREATE TABLE IF NOT EXISTS Term (
	TermID INT NOT NULL AUTO_INCREMENT,
	TermYr VARCHAR(4) NOT NULL,
	TermCID VARCHAR(2) NOT NULL,
	PRIMARY KEY (TermID)
);

-- Term Table Data --
	INSERT INTO Term (TermYr, TermCID)
		VALUES ('2017', 'F');
	INSERT INTO Term (TermYr, TermCID)
		VALUES ('2017', 'SP');
	INSERT INTO Term (TermYr, TermCID)
		VALUES ('2017', 'SU');
	INSERT INTO Term (TermYr, TermCID)
		VALUES ('2018', 'F');
	INSERT INTO Term (TermYr, TermCID)
		VALUES ('2018', 'SP');
	INSERT INTO Term (TermYr, TermCID)
		VALUES ('2018', 'SU');
	
-- Course Table --
CREATE TABLE IF NOT EXISTS Course (
	CRN INT NOT NULL AUTO_INCREMENT,
	DeptPre INT Not NULL,
	CrsNum INT NOT NULL,
	CrsName VARCHAR(255) NOT NULL,
	CrsHrs INT,
	PRIMARY KEY (CRN)
);

-- Course Table Data --
	INSERT INTO Course (DeptPre, CrsNum, CrsName, CrsHrs)
		VALUES ('1', '113', 'Computers and Programming', 3);
	INSERT INTO Course (DeptPre, CrsNum, CrsName, CrsHrs)
		VALUES ('1', '147', 'Programming and Logic', 3);
	INSERT INTO Course (DeptPre, CrsNum, CrsName, CrsHrs)
		VALUES ('1', '170', 'Microcomputer Applications', 3);
	INSERT INTO Course (DeptPre, CrsNum, CrsName, CrsHrs)
		VALUES ('2', '155', 'Communications I', 3);
	INSERT INTO Course (DeptPre, CrsNum, CrsName, CrsHrs)
		VALUES ('3', '155', 'Collage Math', 3);
	INSERT INTO Course (DeptPre, CrsNum, CrsName, CrsHrs)
		VALUES ('1', '270', 'Microcomputer Applications II');
	
-- Completion Table --
CREATE TABLE IF NOT EXISTS Completion (
	TNumber VARCHAR(12) NOT NULL,
	CRN INT NOT NULL,
	TermID INT NOT NULL,
	Grade CHAR NOT NULL,
	PRIMARY KEY (TNumber)
);

-- Completion Table Data --
	INSERT INTO Completion (TNumber, CRN, TermID, Grade)
		VALUES ('T10004537', 1, 1, 'A');
	
-- Phone Table --
CREATE TABLE IF NOT EXISTS Phone (
	TNumber VARCHAR(12) NOT NULL,
	CatCode CHAR NOT NULL,
	PhoneNumber VARCHAR(16) NOT NULL,
	PRIMARY KEY (TNumber)
);

-- Phone Table Data --
	INSERT INTO Phone (TNumber, CatCode, PhoneNumber)
		VALUES ('T10004537', 'C', '9401234');
	INSERT INTO Phone (TNumber, CatCode, PhoneNumber)
		VALUES ('T10004537', 'H', '6570152');
	INSERT INTO Phone (TNumber, CatCode, PhoneNumber)
		VALUES ('T10004537', 'W', '6461548');
	INSERT INTO Phone (TNumber, CatCode, PhoneNumber)
		VALUES ('T10005425', 'M', '9408854');
	INSERT INTO Phone (TNumber, CatCode, PhoneNumber)
		VALUES ('T10005425', 'H', '6468788');
	INSERT INTO Phone (TNumber, CatCode, PhoneNumber)
		VALUES ('T10005425', 'P', '3575578');
	INSERT INTO Phone (TNumber, CatCode, PhoneNumber)
		VALUES ('T12004522', 'M', '6771234');
	INSERT INTO Phone (TNumber, CatCode, PhoneNumber)
		VALUES ('T10876345', 'H', '6570152');
		
-- TermCode Table --
CREATE TABLE IF NOT EXISTS TermCode (
	TermCID VARCHAR(2) NOT NULL,
	TermDesc VARCHAR(255) NOT NULL,
	PRIMARY KEY (TermCID)
);

-- TermCode Table Data --
	INSERT INTO TermCode (TermCID, TermDesc)
		VALUES ('F', 'Fall');
	INSERT INTO TermCode (TermCID, TermDesc)
		VALUES ('SP', 'Spring');
	INSERT INTO TermCode (TermCID, TermDesc)
		VALUES ('SU', 'Summer');
	

-- Address Table --
CREATE  TABLE IF NOT EXISTS Address (
	TNumber VARCHAR(12) NOT NULL,
	CatCode CHAR NOT NULL,
	Address VARCHAR(255) NOT NULL,
	Zip VARCHAR(11) NOT NULL,
	PRIMARY KEY (TNumber)
);

-- Department Table --
CREATE TABLE IF NOT EXISTS Department (
	DeptID INT NOT NULL AUTO_INCREMENT,
	DeptPre VARCHAR(3) NOT NULL,
	DepDesc VARCHAR(255) NOT NULL,
	PRIMARY KEY (DeptID)
);

-- Grade --
CREATE TABLE IF NOT EXISTS Grade (
	GradeID CHAR NOT NULL,
	GradePoints INT NOT NULL,
	GradeGPA VARCHAR(5) NOT NULL,
	GradeCredits INT NOT NULL,
	PRIMARY KEY (GradeID)
);

-- Category Table --
CREATE TABLE IF NOT EXISTS Category (
	CatCode CHAR NOT NULL,
	CatDesc VARCHAR(255),
	PRIMARY KEY (CatCode)
);

-- State Table --
CREATE TABLE IF NOT EXISTS State (
	StaAbbr VARCHAR(2) NOT NULL,
	StaName VARCHAR(255) NOT NULL,
	PRIMARY KEY (StaAbbr)
);

-- Standing Table --
CREATE TABLE IF NOT EXISTS Standing (
	MinHrs INT NOT NULL,
	Standing VARCHAR(255),
	PRIMARY KEY (MinHrs)
);
	