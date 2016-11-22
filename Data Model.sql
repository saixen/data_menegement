DROP TABLE Car CASCADE
;
DROP TABLE Cargo CASCADE
;
DROP TABLE Chock CASCADE
;
DROP TABLE ColourLightSignal CASCADE
;
DROP TABLE Operation CASCADE
;
DROP TABLE Operator CASCADE
;
DROP TABLE Retarder CASCADE
;
DROP TABLE SetOfCars CASCADE
;
DROP TABLE Switch CASCADE
;
DROP TABLE Track CASCADE
;
DROP TABLE Workbook CASCADE
;

CREATE TABLE Car ( 
	ID bigint NOT NULL,
	ID_Cargo bigint,
	ID_TrackSTART bigint,
	ID_TrackFINISH bigint,
	Trainload decimal(10,3),
	SpeedOfDescent decimal(10,3),
	RetardingSpeed decimal(10,3),
	PresentRate decimal(10,3),
	ID_SetOfCars bigint
)
;

CREATE TABLE Cargo ( 
	ID bigint NOT NULL,
	Name char(250),
	Shoot boolean
)
;

CREATE TABLE Chock ( 
	ID bigint NOT NULL,
	ID_SetOfCars bigint,
	ID_Carriage bigint
)
;

CREATE TABLE ColourLightSignal ( 
	ID bigint NOT NULL,
	ID_Track bigint,
	InitialValue char(10),
	FinalValue char(10)
)
;

CREATE TABLE Operation ( 
	ID bigint NOT NULL,
	Name char(255),
	ID_SetOfCars bigint,
	ID_Switch bigint,
	ID_ColourLightSignal bigint,
	ID_Retarder bigint,
	ID_Chock bigint,
	LeadTime timestamp,
	ID_Track bigint
)
;

CREATE TABLE Operator ( 
	ID bigint NOT NULL,
	Surname char(100),
	Name char(100),
	Patronymic char(100)
)
;

CREATE TABLE Retarder ( 
	ID bigint NOT NULL,
	Type char(255),
	ID_Track bigint,
	Status boolean
)
;

CREATE TABLE SetOfCars ( 
	ID bigint NOT NULL,
	SendingTime timestamp
)
;

CREATE TABLE Switch ( 
	ID bigint NOT NULL,
	ID_TrackPOSSIBLE bigint,
	ID_TrackREAL bigint
)
;

CREATE TABLE Track ( 
	ID bigint NOT NULL,
	Length numeric(10,2),
	Employment boolean
)
;

CREATE TABLE Workbook ( 
	ID bigint NOT NULL,
	ID_Operator bigint,
	ChangeData timestamp,
	ID_Operation bigint
)
;


ALTER TABLE Car ADD CONSTRAINT PK_Car 
	PRIMARY KEY (ID)
;


ALTER TABLE Cargo ADD CONSTRAINT PK_Cargo 
	PRIMARY KEY (ID)
;


ALTER TABLE Chock ADD CONSTRAINT PK_Chock 
	PRIMARY KEY (ID)
;


ALTER TABLE ColourLightSignal ADD CONSTRAINT PK_ColourLightSignal 
	PRIMARY KEY (ID)
;


ALTER TABLE Operation ADD CONSTRAINT PK_Operation 
	PRIMARY KEY (ID)
;


ALTER TABLE Operator ADD CONSTRAINT PK_Operator 
	PRIMARY KEY (ID)
;


ALTER TABLE Retarder ADD CONSTRAINT PK_Retarder 
	PRIMARY KEY (ID)
;


ALTER TABLE SetOfCars ADD CONSTRAINT PK_SetOfCars 
	PRIMARY KEY (ID)
;


ALTER TABLE Switch ADD CONSTRAINT PK_Switch 
	PRIMARY KEY (ID)
;


ALTER TABLE Track ADD CONSTRAINT PK_Track 
	PRIMARY KEY (ID)
;


ALTER TABLE Workbook ADD CONSTRAINT PK_Workbook 
	PRIMARY KEY (ID)
;
