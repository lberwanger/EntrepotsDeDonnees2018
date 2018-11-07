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
INSERT INTO Dates
		VALUES(0,'02/07/2018','2 July 2018',31,'July',3,2018,
		'Monday',2,'Weekday','Non-Holiday','Summer');
INSERT INTO Dates
		VALUES(0,'29/09/2018','29 September 2018',39,'September',3,2018,
		'Saturday',29,'Weekend','Non-Holiday','Fall');
INSERT INTO Dates
		VALUES(0,'05/11/2018','5 November 2018',45,'November',4,2018,
		'Monday',5,'Weekday','Non-Holiday','Winter');	
INSERT INTO Dates
		VALUES(0,'06/11/2018','6 November 2018',45,'November',4,2018,
		'Tuesday',6,'Weekday','Non-Holiday','Winter');
INSERT INTO Dates
		VALUES(0,'07/11/2018','7 November 2018',45,'November',4,2018,
		'Wednesday',7,'Weekday','Non-Holiday','Winter');
INSERT INTO Dates
		VALUES(0,'08/11/2018','8 November 2018',45,'November',4,2018,
		'Thursday',8,'Weekday','Non-Holiday','Winter');
INSERT INTO Dates
		VALUES(0,'09/11/2018','9 November 2018',45,'November',4,2018,
		'Friday',9,'Weekday','Non-Holiday','Winter');
INSERT INTO Dates
		VALUES(0,'01/01/2019','1 January 2019',1,'January',1,2019,
		'Tuesday',1,'Weekday','Holiday','Winter');
INSERT INTO Dates
		VALUES(0,'04/01/2019','4 January 2019',1,'January',1,2019,
		'Friday',1,'Weekday','Non-Holiday','Winter');
INSERT INTO Dates
		VALUES(0,'24/03/2019','24 March 2019',13,'March',1,2019,
		'Sunday',1,'Weekend','Non-Holiday','Spring');


-- create virtual views for dateDebut et dateFin of shared dimension Dates
CREATE OR REPLACE VIEW date_Debut AS SELECT * FROM Dates;
CREATE OR REPLACE VIEW date_Fin AS SELECT * FROM Dates;

INSERT INTO typeLogement 
	(idType,taille,nbChambres,nbMinVoyageurs,nbMaxVoyageurs,chezHabitant,nbLits,
	ascenseur,parking,television,cuisine,wifi,reservationDirecte)
	VALUES (0,'house',4,1,6,'no',4,'no','yes','yes','yes','yes','no');
INSERT INTO typeLogement 
	(idType,taille,nbChambres,nbMinVoyageurs,nbMaxVoyageurs,chezHabitant,nbLits,
	ascenseur,parking,television,cuisine,wifi,reservationDirecte)
	VALUES (0,'house',10,4,20,'yes',18,'yes','yes','no','yes','no','no');
INSERT INTO typeLogement 
	(idType,taille,nbChambres,nbMinVoyageurs,nbMaxVoyageurs,chezHabitant,nbLits,
	ascenseur,parking,television,cuisine,wifi,reservationDirecte)
	VALUES (0,'appartment',2,1,3,'no',2,'no','no','no','yes','yes','no');
INSERT INTO typeLogement 
	(idType,taille,nbChambres,nbMinVoyageurs,nbMaxVoyageurs,chezHabitant,nbLits,
	ascenseur,parking,television,cuisine,wifi,reservationDirecte)
	VALUES (0,'house',2,1,5,'no',3,'no','yes','yes','yes','yes','yes');
INSERT INTO typeLogement 
	(idType,taille,nbChambres,nbMinVoyageurs,nbMaxVoyageurs,chezHabitant,nbLits,
	ascenseur,parking,television,cuisine,wifi,reservationDirecte)
	VALUES (0,'room',1,2,2,'yes',1,'yes','yes','no','no','yes','yes');
INSERT INTO typeLogement 
	(idType,taille,nbChambres,nbMinVoyageurs,nbMaxVoyageurs,chezHabitant,nbLits,
	ascenseur,parking,television,cuisine,wifi,reservationDirecte)
	VALUES (0,'room',1,2,2,'yes',1,'yes','yes','no','no','yes','no');
INSERT INTO typeLogement 
	(idType,taille,nbChambres,nbMinVoyageurs,nbMaxVoyageurs,chezHabitant,nbLits,
	ascenseur,parking,television,cuisine,wifi,reservationDirecte)
	VALUES (0,'room',1,2,2,'no',1,'yes','yes','no','no','yes','yes');
INSERT INTO typeLogement 
	(idType,taille,nbChambres,nbMinVoyageurs,nbMaxVoyageurs,chezHabitant,nbLits,
	ascenseur,parking,television,cuisine,wifi,reservationDirecte)
	VALUES (0,'appartment',3,1,2,'no',1,'no','no','no','yes','yes','no');
	

	

-- create virtual views for Reservation et Offre of shared dimension typeLogement
CREATE OR REPLACE VIEW typeReservation AS SELECT * FROM typeLogement;
CREATE OR REPLACE VIEW typeOffre AS SELECT * FROM typeLogement;

