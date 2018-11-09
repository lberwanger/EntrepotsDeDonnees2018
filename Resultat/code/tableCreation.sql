-- create dimension table Localisation as specified
CREATE TABLE Localisation (
	idLocalisation NUMBER(10) PRIMARY KEY,
	Rue VARCHAR2(100),
	Region VARCHAR2(100),
	Ville VARCHAR2(100),
	codePostal VARCHAR2(10),
	pays VARCHAR2(100),
	latitude NUMBER(10,7),
	CONSTRAINT lat CHECK(latitude BETWEEN 0.0 AND 90.0),
	longitude NUMBER(10,7),
	CONSTRAINT lon CHECK(longitude BETWEEN -280.0 AND 280.0),
	codePays VARCHAR2(100)
);

-- create shared dimension table Dates as specified	
CREATE TABLE Dates (
	idDate NUMBER(10) PRIMARY KEY,
	dateEntier DATE,
	description VARCHAR2(20),
	semaine NUMBER(2),
	mois VARCHAR2(10),
	trimestre NUMBER(1),
	an NUMBER(4),
	jourSemaine VARCHAR2(20),
	jourMois NUMBER(2),
	weekend VARCHAR2(20),
	feries VARCHAR2(22),
	saison VARCHAR2(20)
);
-- add constraints on values
ALTER TABLE Dates ADD (
	CONSTRAINT months CHECK(mois in 
	('January','February','March','April','May','June',
	'July','August','September','October','November','December')),
	CONSTRAINT trimester CHECK(trimestre BETWEEN 1 AND 4),
	CONSTRAINT weekDay CHECK(jourSemaine in
	('Monday','Tuesday','Wednesday','Thursday','Friday',
	'Saturday','Sunday')),
	CONSTRAINT monthDay CHECK(jourMois BETWEEN 1 AND 31),	
	CONSTRAINT weekend CHECK(weekend in ('Weekend','Weekday')),
	CONSTRAINT holiday CHECK(feries in ('Holiday','Non-Holiday')),
	CONSTRAINT season CHECK(saison in
	('Spring','Summer','Fall','Winter'))
);


CREATE TABLE typesLogement (
	idType NUMBER(10) PRIMARY KEY,
	taille VARCHAR2(10),
	CONSTRAINT sizing CHECK(taille IN ('house','appartment','room')),
	nbChambres NUMBER(3),
	CONSTRAINT numberRooms CHECK (nbChambres > 0),
	chezHabitant VARCHAR2(20),
	CONSTRAINT withHost CHECK (chezHabitant IN ('independent','with host')),
	nbLits NUMBER(10),
	CONSTRAINT numberBeds CHECK (nbLits > 0)
);

	
CREATE TABLE Logement (
	idLogement NUMBER(10) PRIMARY KEY,
	prixNuite NUMBER(10,2),
	typeLog NUMBER(10),
	CONSTRAINT tL FOREIGN KEY (typeLog) REFERENCES typesLogement(idType),
	nbMinVoyageurs NUMBER(10),
	CONSTRAINT minTravellers CHECK (nbMinVoyageurs > 0),
	nbMaxVoyageurs NUMBER(10),
	CONSTRAINT maxTravellers CHECK (nbMaxVoyageurs > 0),		
	ascenseur VARCHAR2(3),
	CONSTRAINT lift CHECK (ascenseur IN ('yes','no')),
	parking VARCHAR2(3),
	CONSTRAINT park CHECK (parking IN ('yes','no')),
	television VARCHAR2(3),
	CONSTRAINT tele CHECK (television IN ('yes','no')),
	cuisine VARCHAR2(3),
	CONSTRAINT kitchen CHECK (cuisine IN ('yes','no')),
	wifi VARCHAR2(3),
	CONSTRAINT wlan CHECK (wifi IN ('yes','no')),
	reservationDirecte VARCHAR2(3),
	CONSTRAINT res CHECK (reservationDirecte IN ('yes','no'))
);

/*create shared dimension Utilisateur represented by 
	the virtual views Hote and Client*/
CREATE TABLE Utilisateur (
	idUtilisateur NUMBER(10) PRIMARY KEY,
	nom VARCHAR2(50),
	prenom VARCHAR2(50),
	sexe VARCHAR2(10),
	CONSTRAINT sex CHECK (sexe IN ('male','female','other')),
	dateNaissance DATE,
	villeOrigine VARCHAR(50),
	email VARCHAR2(100),
	langueParlee VARCHAR2(50),
	dateInscription DATE,
	hote VARCHAR2(10),
	CONSTRAINT hosting CHECK (hote in ('Host','Non-Host')),
	superUser VARCHAR2(10),
	CONSTRAINT isSuperUser CHECK (superUser in ('SuperUser','Basic'))
);

CREATE TABLE Disponibilite (
	idDisponibilite NUMBER(10) PRIMARY KEY,
	description VARCHAR2(100),
	weekends VARCHAR2(50),
	CONSTRAINT dispoWeek CHECK(weekends IN ('Weekends','Only Weekdays')),
	feries VARCHAR2(50),
	CONSTRAINT dispoHoliday CHECK(feries IN ('Holidays','No Holidays')),
	seuleSaison VARCHAR2(10),
	CONSTRAINT dispoSaison CHECK(
		seuleSaison IN ('','Spring','Summer','Fall','Winter')),
	dureeMax NUMBER(10),
	dureeMin NUMBER(10)
);

/* use sequential surrogate keys */
-- create sequence
CREATE SEQUENCE loc_seq START WITH 1;
-- and trigger incrementing the id upon each new insertion
CREATE OR REPLACE TRIGGER loc_inc 
BEFORE INSERT ON Localisation
FOR EACH ROW
BEGIN
  SELECT loc_seq.NEXTVAL
  INTO   :new.idLocalisation
  FROM   dual;
END;
/

-- create sequential ids
CREATE SEQUENCE dat_seq START WITH 1;
CREATE OR REPLACE TRIGGER dat_inc 
BEFORE INSERT ON Dates
FOR EACH ROW
BEGIN
  SELECT dat_seq.NEXTVAL
  INTO   :new.idDate
  FROM   dual;
END;
/

CREATE SEQUENCE type_seq START WITH 1;
CREATE OR REPLACE TRIGGER type_inc 
BEFORE INSERT ON typesLogement
FOR EACH ROW
BEGIN
  SELECT type_seq.NEXTVAL
  INTO   :new.idType
  FROM   dual;
END;
/

CREATE SEQUENCE log_seq START WITH 1;
CREATE OR REPLACE TRIGGER log_inc 
BEFORE INSERT ON Logement
FOR EACH ROW
BEGIN
  SELECT log_seq.NEXTVAL
  INTO   :new.idLogement
  FROM   dual;
END;
/

-- create sequential ids
CREATE SEQUENCE user_seq START WITH 1;
CREATE OR REPLACE TRIGGER user_inc 
BEFORE INSERT ON Utilisateur
FOR EACH ROW
BEGIN
  SELECT user_seq.NEXTVAL
  INTO   :new.idUtilisateur
  FROM   dual;
END;
/

CREATE SEQUENCE dispo_seq START WITH 1;
CREATE OR REPLACE TRIGGER dispo_inc 
BEFORE INSERT ON Disponibilite
FOR EACH ROW
BEGIN
  SELECT dispo_seq.NEXTVAL
  INTO   :new.idDisponibilite
  FROM   dual;
END;
/

CREATE  TABLE Reservation (
	idLogement NUMBER(10),
	idLocalisation NUMBER(10),
	idHote NUMBER(10),
	idClient NUMBER(10),
	idDateDebut NUMBER(10),
	idDateFin NUMBER(10),
	nbVoyageurs NUMBER(10),
	duree NUMBER(5),
	prixTotal NUMBER(10,2),
	fraisDuTotal NUMBER(10,2),
	CONSTRAINT feeRatio CHECK (fraisDuTotal BETWEEN 00.00 AND 1.00)
);

ALTER TABLE Reservation ADD (
CONSTRAINT loge FOREIGN KEY (idLogement) REFERENCES Logement(idLogement),
CONSTRAINT loco FOREIGN KEY (idLocalisation) REFERENCES Localisation(idLocalisation),
CONSTRAINT h FOREIGN KEY (idHote) REFERENCES Utilisateur(idUtilisateur),
CONSTRAINT c FOREIGN KEY (idClient) REFERENCES Utilisateur(idUtilisateur),
CONSTRAINT dD FOREIGN KEY (idDateDebut) REFERENCES Dates(idDate),
CONSTRAINT dF FOREIGN KEY (idDateFin) REFERENCES Dates(idDate)
);	



CREATE TABLE Offre (
idType NUMBER(10), 
CONSTRAINT otL FOREIGN KEY(idType) REFERENCES typesLogement(idType),
idLocalisation NUMBER(10),
CONSTRAINT oL FOREIGN KEY(idLocalisation) REFERENCES Localisation(idLocalisation),
idDisponibilite NUMBER(10),
CONSTRAINT oD FOREIGN KEY(idDisponibilite)REFERENCES Disponibilite(idDisponibilite),
idHote NUMBER(10),
CONSTRAINT oU FOREIGN KEY(idHote) REFERENCES Utilisateur(idUtilisateur),
idJour NUMBER(10),
CONSTRAINT oDa FOREIGN KEY(idJour) REFERENCES Dates(idDate),
nombreOffres NUMBER(10),
pourcentageLoue NUMBER(3,2),
CONSTRAINT rentedOut CHECK(pourcentageLoue BETWEEN 0.00 AND 1.00)
);
	