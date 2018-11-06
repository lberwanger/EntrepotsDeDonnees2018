-- create dimension table Localisation as specified
CREATE TABLE Localisation (
	idLocalisation NUMBER(10) PRIMARY KEY,
	Rue VARCHAR2(100),
	Region VARCHAR2(100),
	Ville VARCHAR2(100),
	codePostal VARCHAR2(20),
	pays VARCHAR2(100),
	latitude NUMBER(10,7),
	CONSTRAINT lat CHECK(latitude BETWEEN 0.0 AND 90.0),
	longitude NUMBER(10,7),
	CONSTRAINT lon CHECK(longitude BETWEEN -180.0 AND 180.0),
	codePays VARCHAR2(100)
);
/* use sequential surrogate keys */
-- create sequence
CREATE SEQUENCE local_seq START WITH 1;
-- and trigger incrementing the id upon each new insertion
CREATE OR REPLACE TRIGGER local_inc 
BEFORE INSERT ON Localisation
FOR EACH ROW
BEGIN
  SELECT local_seq.NEXTVAL
  INTO   :new.idLocalisation
  FROM   dual;
END;
/

INSERT INTO Localisation 
	VALUES(0,'Avenue Emile Diacon',
	'Occitanie','Montpellier','34090','France',
	43.6286172,3.8609373,'FRA');	
INSERT INTO Localisation
	VALUES(0,'Broadway',
	'New York','New York City','10007','United States of America',
	40.7143528, -74.0059731,'USA');
INSERT INTO Localisation
	VALUES(0,'Broadway',
	'New York','New York City','10007','United States of America',
	40.713808, -74.006809,'USA');
INSERT INTO Localisation
	VALUES(0,'Broadway',
	'New York','New York City','10007','United States of America',
	40.714934, -74.005843,'USA');
INSERT INTO Localisation
	VALUES(0,'Broadway',
	'New York','New York City','10007','United States of America',
	40.716658, -74.004403,'USA');
INSERT INTO Localisation
	VALUES(0,'Rue de la Cavalade',
	'Occitanie','Montpellier','34000','France',
	43.603633, 3.909647,'FRA');
INSERT INTO Localisation
	VALUES(0,'Kongens Gate',
	'Trondelag','Steinkjer','7715','Norway',
	64.016824, 11.494716,'NO');

alter session set NLS_DATE_FORMAT='dd/mm/yyyy';
	
CREATE TABLE Dates (
	idDate NUMBER(10) PRIMARY KEY,
	dateEntier DATE,
	description VARCHAR2(20),
	semaine NUMBER(10),
	mois VARCHAR2(10),
	trimestre NUMBER(10),
	an NUMBER(10),
	jourSemaine VARCHAR2
	jourMois NUMBER(10),
	weekend VARCHAR2(10),
	feries VARCHAR2(15),
	saison VARCHAR2(10)
);
	
ALTER TABLE Dates ADD (
	CONSTRAINT mo CHECK(mois in 
	('January','February','March','April','May','June',
	'July','August','September','October','November','December')),
	CONSTRAINT tri CHECK(trimestre BETWEEN 1 AND 4),
	CONSTRAINT wDay CHECK(jourSemaine in
	('Monday','Tuesday','Wednesday','Thursday','Friday',
	'Saturday','Sunday'),
	CONSTRAINT mDay CHECK(jourMois BETWEEN 1 AND 31),	
	CONSTRAINT weekend CHECK(weekend in ('Weekend','Weekday'),
	CONSTRAINT holiday CHECK(feries in ('Holiday','Non-Holiday'),
	CONSTRAINT season CHECK(saison in
	('Spring','Summer','Fall','Winter')
);
	

CREATE TABLE Logement (
	idLogement VARCHAR2(10) PRIMARY KEY,
	typeLog typeLog_T,
	nbChambres INTEGER,
	nbVoyageurs INTEGER,
	chezHabitant VARCHAR2(1),
	CONSTRAINT hab CHECK (chezHabitant IN ('0','1')),
	nbLits INTEGER,
	ascenseur VARCHAR2(1),
	CONSTRAINT ascens CHECK (ascenseur IN ('0','1')),
	parking VARCHAR2(1),
	CONSTRAINT park CHECK (parking IN ('0','1')),
	television VARCHAR2(1),
	CONSTRAINT tele CHECK (television IN ('0','1')),
	cuisine VARCHAR2(1),
	CONSTRAINT cui CHECK (cuisine IN ('0','1')),
	wifi VARCHAR2(1),
	CONSTRAINT wf CHECK (wifi IN ('0','1'))
);

CREATE TYPE Date_T AS OBJECT (
	jour INTEGER CHECK (jour BETWEEN 1 AND 31),
	mois INTEGER CHECK (mois BETWEEN 1 AND 12),
	an INTEGER CHECK (an BETWEEN 1905 AND 2018)
);
/

CREATE TYPE Periode_T AS OBJECT (
	idPeriode VARCHAR2(10),
	DateDeb Date_T,
	DateFin Date_T,
	HeureEntree INTEGER CHECK (HeureEntree BETWEEN 0 AND 23),
	HeureSorte INTEGER CHECK (HeureSorte BETWEEN 0 AND 23),	
	Saison VARCHAR2(20)
);
/

CREATE TABLE Periode OF Periode_T (
	CONSTRAINT pk PRIMARY KEY(idPeriode));


CREATE TABLE Client (
	idClient VARCHAR2(10) PRIMARY KEY,
	nomC VARCHAR2(50),
	prenomC VARCHAR2(50),
	sexe VARCHAR2(1) CHECK (sexe IN ('0','1','2')),
	dateNaiss Date_T,
	email VARCHAR2(100),
	langueParlee VARCHAR2(50),
	dateInscription Date_T,
	situationFamiliale VARCHAR2(50)
);

CREATE TABLE Hote (
	idHote VARCHAR2(10) PRIMARY KEY,
	nomH VARCHAR2(50),
	prenomH VARCHAR2(50),
	sexe VARCHAR2(1) CHECK (sexe IN ('0','1','2')),
	dateNaiss Date_T,
	email VARCHAR2(100),
	langueParlee VARCHAR2(50),
	dateInscription Date_T,
	situationFamiliale VARCHAR2(50)
);

CREATE  TABLE Reservation (
	idLogement VARCHAR2(10),
	idLocalisation VARCHAR2(10),
	idHote VARCHAR2(10),
	idClient VARCHAR2(10),
	idPeriode VARCHAR2(10),
	nbVoyageurs INTEGER,
	prixReservation NUMBER(10,2)
);