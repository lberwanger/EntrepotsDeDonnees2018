CREATE TABLE Localisation (
	idLocalisation VARCHAR2(10) PRIMARY KEY,
	Rue VARCHAR2(100),
	Region VARCHAR2(100),
	Ville VARCHAR2(100),
	codePostal VARCHAR2(20),
	pays VARCHAR2(100),
	latitude NUMBER(10,7),
	CONSTRAINT lat CHECK(latitude BETWEEN 0.0 AND 90.0),
	longitude NUMBER(10,7),
	CONSTRAINT long CHECK(longitude BETWEEN -180.0 AND 180.0),
	codePays VARCHAR2(100)
);

INSERT INTO Localisation 
	VALUES('1','26 Avenue Emile Diacon',
	'Occitanie','Montpellier','34090','France',
	43.6286172,3.8609373,'FRA');	
INSERT INTO Localisation
	VALUES('1','280 Broadway',
	'New York','New York City','10007','United States of America',
	40.7143528, -74.0059731,'USA');
	
CREATE TYPE typeLog_T AS OBJECT (
	typeName VARCHAR2(50),
	...
);
/

CREATE TABLE typesLogement OF typeLog_T;


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