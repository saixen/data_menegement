DROP TABLE Cargo CASCADE
;
DROP TABLE Carriage CASCADE
;
DROP TABLE Carriage retarders CASCADE
;
DROP TABLE Full name CASCADE
;
DROP TABLE Operator CASCADE
;
DROP TABLE Switch CASCADE
;
DROP TABLE Tracks CASCADE
;
DROP TABLE Traffic CASCADE
;
DROP TABLE Train CASCADE
;

CREATE TABLE Cargo ( 
	ID bigint NOT NULL,
	Name char(250) NULL,
	Dissolution boolean NULL
)
;

CREATE TABLE Carriage ( 
	ID bigint NOT NULL,
	Mass bigint NULL,
	ID_Track bigint NULL,
	Traction boolean NULL,
	ID_Train bigint NULL,
	ID_Cargo bigint NULL
)
;

CREATE TABLE Carriage retarders ( 
	ID bigint NOT NULL,
	ID_Track bigint NULL,
	Index char(10) NULL
)
;

CREATE TABLE Full name ( 
	ID bigint NOT NULL,
	Surname char(100) NULL,
	Name char(100) NULL,
	Patronymic char(100) NULL
)
;

CREATE TABLE Operator ( 
	ID bigint NOT NULL,
	ID_Full Name bigint NULL,
	Change data timestamp NULL,
	ID_Train integer NULL
)
;

CREATE TABLE Switch ( 
	ID bigint NOT NULL,
	ID_Track smallint NULL
)
;

CREATE TABLE Tracks ( 
	ID bigint NOT NULL,
	Length decimal(10,2) NULL,
	Employment boolean NULL
)
;

CREATE TABLE Traffic ( 
	ID bigint NOT NULL,
	Value char(7) NULL,
	ID_Track char(10) NULL
)
;

CREATE TABLE Train ( 
	ID bigint NOT NULL,
	ID_Track bigint NULL,
	Sending data timestamp NULL,
	Arrival data timestamp NULL
)
;


ALTER TABLE Cargo ADD CONSTRAINT PK_Cargo 
	PRIMARY KEY (ID)
;


ALTER TABLE Carriage ADD CONSTRAINT PK_Tracks 
	PRIMARY KEY (ID)
;


ALTER TABLE Carriage retarders ADD CONSTRAINT PK_Carriage retarders 
	PRIMARY KEY (ID)
;


ALTER TABLE Full name ADD CONSTRAINT PK_Full name 
	PRIMARY KEY (ID)
;


ALTER TABLE Operator ADD CONSTRAINT PK_Operator 
	PRIMARY KEY (ID)
;


ALTER TABLE Switch ADD CONSTRAINT PK_Switch 
	PRIMARY KEY (ID)
;


ALTER TABLE Tracks ADD CONSTRAINT PK_Tracks 
	PRIMARY KEY (ID)
;


ALTER TABLE Traffic ADD CONSTRAINT PK_Traffic 
	PRIMARY KEY (ID)
;


ALTER TABLE Train ADD CONSTRAINT PK_Train 
	PRIMARY KEY (ID)
;
