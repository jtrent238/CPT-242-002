
SET @today = '2019-12-10';
SET @due = date_add(@today, interval 14 day);

-- Genre Table --
CREATE TABLE IF NOT EXISTS Genre (
	GenreCode CHAR(2) NOT NULL,
	Genre VARCHAR(255) NOT NULL,
	PRIMARY KEY (GenreCode)
);

-- Genre Table Data --
	INSERT INTO Genre (GenreCode, Genre)
		VALUES ("My", "Mystery"), ("Bi", "Biography"), ("Fa", "Fantasy"), ("SF", "Science Fiction"), ("Hr", "Horror");

-- Language Table --
CREATE TABLE IF NOT EXISTS Language (
	LangID INT AUTO_INCREMENT,
	LangDesc VARCHAR(20) NOT NULL,
	PRIMARY KEY (LangID)
);

-- Language Table Data --
	INSERT INTO Language (LangDesc)
		VALUES ('English');
	INSERT INTO Language (LangDesc)
		VALUES ('French');
	INSERT INTO Language (LangDesc)
		VALUES ('Spanish');
	INSERT INTO Language (LangDesc)
		VALUES ('Arabic'),('Chinese');
		
-- Rating Table --
CREATE TABLE IF NOT EXISTS Rating (
	RatCode CHAR(2),
	RatDesc VARCHAR(255),
	RatMinAge INT,
	PRIMARY KEY (RatCode)
);

-- Rating Table Data --
	INSERT INTO Rating (Ratcode, RatDesc, RatMinAge)
		VALUES ("CE", "collection-everyone", 0), ("CA", "collection-adult", 18);


-- State Table --
CREATE TABLE IF NOT EXISTS State (
	StaAbbr CHAR(2) NOT NULL,
	StaName VARCHAR(20) NOT NULL,
	PRIMARY KEY (StaAbbr)
);

-- State Table Data --
	INSERT INTO State (StaAbbr, StaName)
		VALUES ('SC', 'South Calorina');
	INSERT INTO State (StaAbbr, StaName)
		VALUES ('NC', 'North Calorina');
	INSERT INTO State (StaAbbr, StaName)
		VALUES ('GA', 'Georga');

-- City  Table --
CREATE TABLE IF NOT EXISTS City (
	CityID INT AUTO_INCREMENT NOT NULL,
	CityName VARCHAR(100) NOT NULL,
	PRIMARY KEY (CityID)
);

-- City Table Data --
	INSERT INTO City (CityName)
		VALUES ('Anderson');
	INSERT INTO City (CityName)
		VALUES ('Pendleton');
	INSERT INTO City (CityName)
		VALUES ('Greenvile');
	INSERT INTO City (CityName)
		VALUES ('Belton');

-- Term Table --
CREATE TABLE IF NOT EXISTS Term (
	TermID INT AUTO_INCREMENT,
	TermLength INT NOT NULL,
	TermLateFee INT,
	PRIMARY KEY (TermID)
);

-- Term Table Data --
	INSERT INTO Term (TermLength, TermLateFee)
		VALUES (14, 0.25);
	INSERT INTO Term (TermLength, TermLateFee)
		VALUES (7, 0.1);
	INSERT INTO Term (TermLength, TermLateFee)
		VALUES (30, 1);
	INSERT INTO Term (TermLength, TermLateFee)
		VALUES (14, 0);
		
-- Media Table --
CREATE TABLE IF NOT EXISTS Media (
	MediaCode CHAR(5),
	MediaDesc VARCHAR(255) NOT NULL,
	TermID INT,
	PRIMARY KEY (MediaCode),
	FOREIGN KEY (TermID) REFERENCES Term(TermID)
);

-- Media Table Data --
	INSERT INTO Media (MediaCode, MediaDesc, TermID)
		VALUES ('B', 'Book, printed', 1);
	INSERT INTO Media (MediaCode, MediaDesc, TermID)
		VALUES ('Mc', 'Magazine, current', 2);
	INSERT INTO Media (MediaCode, MediaDesc, TermID)
		VALUES ('Mn', 'Magazine, non-current', 3);
		
-- ZipCode Table --
CREATE TABLE IF NOT EXISTS ZipCode (
	ZipCode CHAR(10) NOT NULL,
	CityID INT NOT NULL,
	StaAbbr VARCHAR(2) NOT NULL,
	PRIMARY KEY (ZipCode),
	FOREIGN KEY (StaAbbr) REFERENCES State(StaAbbr)
);

-- ZipCode Table Data --
	INSERT INTO ZipCode (ZipCode, CityID, StaAbbr)
		VALUES ('29621', 1, 'SC');
	INSERT INTO ZipCode (ZipCode, CityID, StaAbbr)
		VALUES ('29670', 2, 'SC');
	INSERT INTO ZipCode (ZipCode, CityID, StaAbbr)
		VALUES ('29601', 3, 'SC');
	INSERT INTO ZipCode (ZipCode, CityID, StaAbbr)
		VALUES ('29627', 4, 'SC');
		
-- Address Table --
CREATE TABLE IF NOT EXISTS Address (
	AddID INT AUTO_INCREMENT NOT NULL,
	ZipCode CHAR(10) NOT NULL,
	AddApt INT,
	AddStreet VARCHAR(255) NOT NULL,
	PRIMARY KEY (AddID),
	FOREIGN KEY (ZipCode) REFERENCES ZipCode(ZipCode)
);

-- Address Table Data --
	INSERT INTO Address (ZipCode, AddStreet)
		VALUES ('29627', '105 Clinkscales Street');
		
-- Person Table --
CREATE TABLE IF NOT EXISTS Person (
	PerID INT AUTO_INCREMENT NULL,
	PerFName VARCHAR(25) NOT NULL,
	PerMid VARCHAR(25),
	PerLName VARCHAR(25) NOT NULL,
	PerStatus ENUM('0', '1', '2', '3', '4'),
	PerPhone VARCHAR(25),
	PerDOB DATE,
	PerExpire DATE,
	PerEnroll Date,
	PerGender ENUM('M', 'F') NOT NULL,
	PerAddID INT,
	AddID INT,
	PerResID INT,
	TtlAuthor INT,
	PRIMARY KEY (PerID),
	FOREIGN KEY (AddID) REFERENCES Address(AddID)
);

-- Person Table Data --
	INSERT INTO Person (PerFName, PerMid, PerLName, PerStatus, PerPhone, PerDOB, PerEnroll, PerGender, PerAddID, AddID)
		VALUES ('Jonathan', 'Trent', 'Patterson', '0', '8643388497', '2000-04-04', '2019-11-12', 'M', 0, 1);
	INSERT INTO Person (PerLName, PerFname, PerGender)
		VALUES ('Tolkien', 'J.R.R.', 'M');
	INSERT INTO Person (PerLName, PerFname, PerGender)
		VALUES ('King', 'Steven', 'M');

-- Publisher Table --
CREATE TABLE IF NOT EXISTS Publisher (
	PubID INT AUTO_INCREMENT,
	PubName VARCHAR(50) NOT NULL,
	PubPhone VARCHAR(10) NOT NULL,
	PubEmail VARCHAR(15),
	PerContact VARCHAR(15),
	PerSales INT,
	AddID INT,
	PRIMARY KEY (PubID),
	FOREIGN KEY (AddID) REFERENCES Address(AddID)
);

-- Author Table --
CREATE TABLE IF NOT EXISTS Author (
	PerID INT AUTO_INCREMENT,
	DOD DATE NULL,
	PRIMARY KEY (PerID),
	FOREIGN KEY (PerID) REFERENCES Person(PerID)
);

-- Author Table Data --
	INSERT INTO Author (PerID)
		VALUES (2);
	INSERT INTO Author (PerID)
		VALUES (3);

-- Title Table --
CREATE TABLE IF NOT EXISTS Title (
	TtlID INT AUTO_INCREMENT,
	PerID INT,
	TtlTitle VARCHAR(25) NOT NULL,
	TtlAuthor VARCHAR(255) NOT NULL,
	TtlSubTitle VARCHAR(25) NULL,
	TtlDate DATE,
	TtlVersion VARCHAR(5),
	GenreCode CHAR(2),
	RatCode CHAR(2),
	PubID INT,
	PRIMARY KEY (TtlID),
	FOREIGN KEY (PerID) REFERENCES Person(PerID),
	FOREIGN KEY (PubID) REFERENCES Publisher(PubID),
	FOREIGN KEY (GenreCode) REFERENCES Genre(GenreCode),
	FOREIGN KEY (RatCode) REFERENCES Rating(RatCode)
);

-- Title Table Data --
	INSERT INTO Title (GenreCode, RatCode, TtlAuthor, TtlTitle)
		VALUES ('Fa', 'CE', 4, 'The Hobbit');
	INSERT INTO Title (GenreCode, RatCode, TtlAuthor, TtlTitle)
		VALUES ('Hr', 'CE', 5, 'IT'), ('Hr', 'CE', 5, 'Carrie'), ('Hr', 'CE', 5, 'IT'), ('Hr', 'CE', 5, 'The Dark Half'), ('Hr', 'CE', 5, 'PetCemetary');


-- Language Table Data --
	INSERT INTO Language (LangDesc)
		VALUES ('English');
	INSERT INTO Language (LangDesc)
		VALUES ('French');
	INSERT INTO Language (LangDesc)
		VALUES ('Spanish');
	INSERT INTO Language (LangDesc)
		VALUES ('Arabic'),('Chinese');
	
-- Collection Table --
CREATE TABLE IF NOT EXISTS Collection (
	ColID INT NOT NULL AUTO_INCREMENT,
	TtlID INT,
	ColAvailable ENUM('Y', 'N'),
	ColPageCount INT,
	ColPrice INT,
	PubID INT,
	LangID INT,
	ColDate DATE,
	MediaCode CHAR(5),
	PRIMARY KEY (ColID),
	FOREIGN KEY (LangID) REFERENCES Language(LangID),
	FOREIGN KEY (MediaCode) REFERENCES Media(MediaCode),
	FOREIGN KEY (TtlID) REFERENCES Title(TtlID),
	FOREIGN KEY (PubID) REFERENCES Publisher(PubID)
);

-- Collection Table Data --
	INSERT INTO Collection (LangID, TTlID)
		VALUES (1, 1), (3, 1);
	INSERT INTO Collection (LangID, TTlID)
		VALUES (1, 2), (1, 3), (3, 3), (1, 4), (2, 4), (3, 4), (1, 5), (2, 5), (3, 5), (1, 6), (2, 6), (3, 6);
	
-- Loan Table --
CREATE TABLE IF NOT EXISTS Loan (
	LoanID INT AUTO_INCREMENT,
	PerID INT,
	ColID INT,
	LoanDate DATE,
	LoanDue DATE,
	LoanReturn DATE,
	LoanFee INT,
	LoanPaid ENUM('Y', 'N'),
	PRIMARY KEY (LoanID),
	FOREIGN KEY (ColID) REFERENCES Collection(ColID),
	FOREIGN KEY (PerID) REFERENCES Person(PerID)
);

-- Waitlist Table --
CREATE TABLE IF NOT EXISTS Waitlist (
	WaitID INT NOT NULL AUTO_INCREMENT,
	WaitDate DATE NOT NULL,
	PerID INT,
	TtlID INT,
	WaitNotify DATE,
	WaitActive ENUM('Y', 'N'),
	PRIMARY KEY (WaitID),
	FOREIGN KEY (TtlID) REFERENCES Title(TtlID),
	FOREIGN KEY (PerID) REFERENCES Person(PerID)
);

-- Select Stuff --
SELECT PerID, PerLName, PerFName, PerGender, Person.AddID, Address.ZipCode, AddStreet, AddApt, CityName, Address.ZipCode 
	FROM Person
		LEFT JOIN Address ON Address.AddID = Person.AddID
		LEFT JOIN ZipCode ON ZipCode.ZipCode = Address.ZipCode
		LEFT JOIN CITY ON City.CityID = ZipCode.CityID;
			
CREATE VIEW v_contactlist AS
	SELECT PerID, PerLName, PerFName, PerGender, AddStreet, AddApt, City.CityName, StaAbbr, address.Zipcode
		FROM Person
			LEFT JOIN City ON City.CityName = City.CityName
			LEFT JOIN Address ON Address.AddID = Person.AddID
			LEFT JOIN ZipCode ON ZipCode.ZipCode = ZipCode.CityID;
				
CREATE VIEW v_phonelist AS
	SELECT PerID, PerLName AS LastName, PerFName AS FirstName, PerPhone AS PhoneNumber
		FROM Person
			ORDER BY PerLName, PerLName;
			
CREATE VIEW v_authors AS			
	SELECT Author.PerID, PerLName AS LastName, PerFName AS FirstName
		FROM Author
			LEFT JOIN Person ON Person.PerID = Author.PerID
				ORDER BY PerLName, PerFName;

CREATE VIEW v_byauthor AS					
	SELECT ColID AS ID, TtlTitle AS Title, PerLName AS LastName, PerFName AS FirstName, langDesc AS Language, Genre.GenreCode AS Genre, Rating.RatCode AS Rating
		FROM Collection
			LEFT JOIN Title ON Title.TtlID = Collection.TtlID
			LEFT JOIN Language ON Language.LangID = Collection.LangID
			LEFT JOIN Genre ON Genre.GenreCode = Title.GenreCode
			LEFT JOIN Rating ON Rating.RatCode = Title.RatCode
			LEFT JOIN Author ON Title.TtlAuthor = Author.PerID
			LEFT JOIN Person ON Person.PerID = Author.PerID
				ORDER BY LastName, FirstName, Language;
					
CREATE VIEW v_Collection AS					
	SELECT ColID AS ID, TtlTitle AS Title, langDesc AS Language, Genre.GenreCode AS Genre, Rating.RatCode AS Rating
		FROM Collection
			LEFT JOIN Title ON Title.TtlID = Collection.TtlID
			LEFT JOIN Language ON Language.LangID = Collection.LangID
			LEFT JOIN Genre ON Genre.GenreCode = Title.GenreCode
			LEFT JOIN Rating ON Rating.RatCode = Title.RatCode
			LEFT JOIN Author ON Title.TtlAuthor = Author.PerID
			LEFT JOIN Person ON Person.PerID = Author.PerID
				ORDER BY Title;
					

CREATE VIEW v_bytitle AS
	SELECT ColID AS ID, TtlTitle AS Title, PerLName AS LastName, PerFName AS FirstName, LangDesc AS Language, Genre AS Genre, Rating.RatCode AS Rating
		FROM Collection
			LEFT JOIN Title ON Title.TtlID = Collection.TTlID
			LEFT JOIN Language ON Language.LangID = Collection.LangID
			LEFT JOIN Genre ON Genre.GenreCode = Title.GenreCode
			LEFT JOIN Rating ON Rating.RatCode = Title.RatCode
			LEFT JOIN Author ON Title.TtlAuthor = Author.PerID
			LEFT JOIN Person ON Person.PerID = Author.PerID
				ORDER BY Title, Language;


