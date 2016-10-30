DROP TABLE Brake CASCADE
;
DROP TABLE Cargo CASCADE
;
DROP TABLE Carriage CASCADE
;
DROP TABLE Carriage retarders CASCADE
;
DROP TABLE Operation CASCADE
;
DROP TABLE Operator CASCADE
;
DROP TABLE Switch CASCADE
;
DROP TABLE Track CASCADE
;
DROP TABLE Traffic CASCADE
;
DROP TABLE Train CASCADE
;
DROP TABLE Workbook CASCADE
;

CREATE TABLE Brake ( 
	ID bigint NOT NULL,
	ID_Train bigint NULL,
	ID_Carriage bigint NULL
)
;

CREATE TABLE Cargo ( 
	ID bigint NOT NULL,
	Name char(250) NULL,
	Dissolution boolean NULL
)
;

CREATE TABLE Carriage ( 
	ID bigint NOT NULL,
	ID_Cargo bigint NULL,
	ID_Track START bigint NULL,
	ID_Track FINISH bigint NULL,
	Mass bigint NULL,
	Shutter speed decimal(10,3) NULL,
	Slow speed decimal(10,3) NULL,
	Current speed decimal(10,3) NULL,
	ID_Train bigint NULL
)
;

CREATE TABLE Carriage retarders ( 
	ID bigint NOT NULL,
	Type char(255) NULL,
	ID_Track bigint NULL,
	Status boolean NULL
)
;

CREATE TABLE Operation ( 
	ID bigint NOT NULL,
	Name char(255) NULL,
	ID_Train bigint NULL,
	ID_Switch bigint NULL,
	ID_Traffic bigint NULL,
	ID_Carriage retarders bigint NULL,
	ID_Brake bigint NULL,
	Lead time timestamp NULL,
	ID_Track bigint NULL
)
;

CREATE TABLE Operator ( 
	ID bigint NOT NULL,
	Surname char(100) NULL,
	Name char(100) NULL,
	Patronymic char(100) NULL
)
;

CREATE TABLE Switch ( 
	ID bigint NOT NULL,
	ID_Track POSSIBLE bigint NULL,
	ID_Track REAL bigint NULL
)
;

CREATE TABLE Track ( 
	ID bigint NOT NULL,
	Length bigint NULL,
	Employment boolean NULL
)
;

CREATE TABLE Traffic ( 
	ID bigint NOT NULL,
	ID_Track bigint NULL,
	Initial value char(10) NULL,
	Final value char(10) NULL
)
;

CREATE TABLE Train ( 
	ID bigint NOT NULL,
	Sending time bigint NULL
)
;

CREATE TABLE Workbook ( 
	ID bigint NOT NULL,
	ID_Operator bigint NULL,
	Change data timestamp NULL,
	ID_Operation integer NULL
)
;


ALTER TABLE Brake ADD CONSTRAINT PK_Brake 
	PRIMARY KEY (ID)
;


ALTER TABLE Cargo ADD CONSTRAINT PK_Cargo 
	PRIMARY KEY (ID)
;


ALTER TABLE Carriage ADD CONSTRAINT PK_Carriage 
	PRIMARY KEY (ID)
;


ALTER TABLE Carriage retarders ADD CONSTRAINT PK_Carriage retarders 
	PRIMARY KEY (ID)
;


ALTER TABLE Operation ADD CONSTRAINT PK_Operation 
	PRIMARY KEY (ID)
;


ALTER TABLE Operator ADD CONSTRAINT PK_Full name 
	PRIMARY KEY (ID)
;


ALTER TABLE Switch ADD CONSTRAINT PK_Switch 
	PRIMARY KEY (ID)
;


ALTER TABLE Track ADD CONSTRAINT PK_Track 
	PRIMARY KEY (ID)
;


ALTER TABLE Traffic ADD CONSTRAINT PK_Traffic 
	PRIMARY KEY (ID)
;


ALTER TABLE Train ADD CONSTRAINT PK_Train 
	PRIMARY KEY (ID)
;


ALTER TABLE Workbook ADD CONSTRAINT PK_Operator 
	PRIMARY KEY (ID)
;
