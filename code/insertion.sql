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
	
	

-- create virtual views for dateDebut et dateFin of shared dimension Dates
CREATE OR REPLACE VIEW date_Debut AS SELECT * FROM Dates;
CREATE OR REPLACE VIEW date_Fin AS SELECT * FROM Dates;
-- create virtual views for Reservation et Offre of shared dimension typeLogement
CREATE OR REPLACE VIEW typeReservation AS SELECT * FROM typeLogement;
CREATE OR REPLACE VIEW typeOffre AS SELECT * FROM typeLogement;