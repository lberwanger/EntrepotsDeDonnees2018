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


INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'room',1,'independent',4);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'room',1,'with host',4);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'room',1,'independent',3);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'room',1,'with host',3);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'room',1,'independent',2);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'room',1,'with host',2);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'room',1,'independent',1);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'room',1,'with host',1);	
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'appartment',1,'independent',4);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'appartment',1,'with host',4);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'appartment',1,'independent',3);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'appartment',1,'with host',3);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'appartment',1,'independent',2);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'appartment',1,'with host',2);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'appartment',1,'independent',1);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'appartment',1,'with host',1);	
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'house',1,'independent',4);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'house',1,'with host',4);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'house',1,'independent',3);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'house',1,'with host',3);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'house',1,'independent',2);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'house',1,'with host',2);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'house',1,'independent',1);
INSERT INTO typesLogement
	(idType,taille,nbChambres,chezHabitant,nbLits)
	VALUES(0,'house',1,'with host',1);

INSERT INTO Logement 
	(idLogement,prixNuite,typeLog,nbMinVoyageurs,nbMaxVoyageurs,
	ascenseur,parking,television,cuisine,wifi,reservationDirecte)
	VALUES (0,160.00,1,1,6,'no','yes','yes','yes','yes','no');
INSERT INTO Logement 
	(idLogement,prixNuite,typeLog,nbMinVoyageurs,nbMaxVoyageurs,
	ascenseur,parking,television,cuisine,wifi,reservationDirecte)
	VALUES (0,2300.50,20,4,20,'yes','yes','no','yes','no','no');
INSERT INTO Logement 
	(idLogement,prixNuite,typeLog,nbMinVoyageurs,nbMaxVoyageurs,
	ascenseur,parking,television,cuisine,wifi,reservationDirecte)
	VALUES (0,19.99,12,1,3,'no','no','no','yes','yes','no');
INSERT INTO Logement 
	(idLogement,prixNuite,typeLog,nbMinVoyageurs,nbMaxVoyageurs,
	ascenseur,parking,television,cuisine,wifi,reservationDirecte)
	VALUES (0,48.10,5,1,5,'no','yes','yes','yes','yes','yes');
INSERT INTO Logement 
	(idLogement,prixNuite,typeLog,nbMinVoyageurs,nbMaxVoyageurs,
	ascenseur,parking,television,cuisine,wifi,reservationDirecte)
	VALUES (0,103.01,5,2,2,'yes','yes','no','no','yes','yes');
INSERT INTO Logement 
	(idLogement,prixNuite,typeLog,nbMinVoyageurs,nbMaxVoyageurs,
	ascenseur,parking,television,cuisine,wifi,reservationDirecte)
	VALUES (0,50.00,6,1,2,'yes','yes','no','no','yes','no');
INSERT INTO Logement 
	(idLogement,prixNuite,typeLog,nbMinVoyageurs,nbMaxVoyageurs,
	ascenseur,parking,television,cuisine,wifi,reservationDirecte)
	VALUES (0,37.57,1,1,2,'yes','yes','no','no','yes','yes');
INSERT INTO Logement 
	(idLogement,prixNuite,typeLog,nbMinVoyageurs,nbMaxVoyageurs,
	ascenseur,parking,television,cuisine,wifi,reservationDirecte)
	VALUES (0,16.90,4,1,2,'no','no','no','yes','yes','no');
INSERT INTO Logement 
	(idLogement,prixNuite,typeLog,nbMinVoyageurs,nbMaxVoyageurs,
	ascenseur,parking,television,cuisine,wifi,reservationDirecte)
	VALUES (0,17.00,3,1,2,'no','no','no','yes','yes','no');
INSERT INTO Logement 
	(idLogement,prixNuite,typeLog,nbMinVoyageurs,nbMaxVoyageurs,
	ascenseur,parking,television,cuisine,wifi,reservationDirecte)
	VALUES (0,15.75,4,1,2,'no','no','no','yes','yes','no');
INSERT INTO Logement 
	(idLogement,prixNuite,typeLog,nbMinVoyageurs,nbMaxVoyageurs,
	ascenseur,parking,television,cuisine,wifi,reservationDirecte)
	VALUES (0,103.01,8,2,2,'yes','yes','no','no','yes','yes');

	
INSERT INTO Utilisateur 
	VALUES (0,'Dupont','Arthur','male','09/07/1987','Lyon','arthur.d@gmail.com','German',
	'07/01/2015','Host','Basic');
INSERT INTO Utilisateur 
	VALUES (0,'Dumont','Adele','female','04/12/1994','London','a.dumont@gmx.fr','Spanish',
	'07/11/2017','Host','SuperUser');
INSERT INTO Utilisateur 
	VALUES (0,'Duvet','Kim','other','19/09/1992','Lisboa','kdu@gmail.com','Italian',
	'02/10/2018','Non-Host','Basic');
INSERT INTO Utilisateur 
	VALUES (0,'Metro','Zazie','female','01/01/1950','Lubeck','metrometro@web.de','English',
	'31/08/2016','Host','Basic');
INSERT INTO Utilisateur 
	VALUES (0,'Queneau','Raymond','male','21/02/1903','Le Havre','rrrrrrrrr@g.com','French',
	'24/07/2008','Host','SuperUser');
	
CREATE OR REPLACE VIEW Hote AS SELECT idUtilisateur,nom,prenom,sexe,
dateNaissance,villeOrigine,email,langueParlee,dateInscription,superUser
FROM Utilisateur WHERE hote = 'Host';

CREATE OR REPLACE VIEW Client AS SELECT idUtilisateur,nom,prenom,sexe,
dateNaissance,villeOrigine,email,langueParlee,dateInscription
FROM Utilisateur WHERE hote = 'Non-Host';

INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (2,7,1,2,1,4,12,126,10950.50,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (2,7,1,5,4,5,12,1,2300.0,0.2);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (2,7,1,3,5,6,12,1,2500.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (1,6,2,1,1,4,3,126,800.50,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (1,6,2,3,4,5,2,1,10950.50,0.15);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (2,7,1,2,5,8,19,57,100950.50,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (2,7,1,2,8,9,12,1,2350.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (3,5,4,3,8,9,4,1,450.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (4,5,2,1,8,9,2,1,601.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (12,7,4,5,8,9,20,1,40.000,0.09);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (12,7,4,5,7,8,2,1,300.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (12,7,4,5,9,10,2,1,300.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (4,3,4,5,5,8,2,57,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (4,3,4,2,5,8,2,57,4510.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (4,3,4,1,5,8,2,57,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (4,3,4,2,6,8,2,56,1310.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (1,6,2,1,1,5,65,126,800.50,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (1,6,2,1,1,2,1,126,800.50,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (3,4,2,1,1,4,3,126,800.50,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (3,4,2,1,1,5,4,126,1000.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (1,6,2,3,2,4,3,126,800.50,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (4,3,4,3,5,8,2,3,1320.0,0.1);

INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (4,3,4,3,5,8,2,3,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (2,3,4,3,5,8,2,3,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (3,3,4,3,5,8,2,3,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (5,3,4,3,5,8,2,3,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (8,3,4,3,5,8,2,3,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (9,3,4,3,5,8,2,3,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (10,3,4,3,5,8,2,3,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (11,5,4,3,5,8,2,3,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (12,4,4,3,5,8,2,3,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (11,1,4,3,5,8,2,3,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (11,2,4,3,5,8,2,3,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (12,1,4,3,5,8,2,3,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (12,2,4,3,5,8,2,3,1320.0,0.1);

INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (12,2,4,3,1,2,2,1,132001.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (12,2,4,3,2,3,2,3,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (12,2,4,3,3,4,2,3,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (12,2,4,3,4,5,2,3,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (12,2,4,3,8,9,2,3,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (11,2,4,3,8,9,2,3,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (11,2,4,3,1,2,2,1,3670.5,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (11,2,4,3,2,3,2,3,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (11,2,4,3,3,4,2,3,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (11,2,4,3,4,5,2,3,1320.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (10,5,4,3,8,9,2,1,2480.0,0.1);
INSERT INTO Reservation 
(idLogement,idLocalisation,idHote,idClient,idDateDebut,idDateFin,nbVoyageurs,duree,prixTotal,fraisDuTotal)
VALUES (9,8,4,3,8,9,2,1,26.0,0.1);

INSERT INTO Disponibilite
	VALUES(0,'always','Weekends','Holidays','',1,1000000000);
INSERT INTO Disponibilite
	VALUES(0,'only weekdays, during holidays, infinitely','Only Weekdays','Holidays','',1,1000000000);
INSERT INTO Disponibilite
	VALUES(0,'always, 1 month max','Weekends','Holidays','',1,31);
INSERT INTO Disponibilite
	VALUES(0,'always, 1 month min','Weekends','Holidays','',31,1000000000);
INSERT INTO Disponibilite
	VALUES(0,'no holidays, 2 months max','Weekends','No Holidays','',1,61);
INSERT INTO Disponibilite
	VALUES(0,'no holidays and weekends, 2 day min','Weekends','No Holidays','',2,5);
INSERT INTO Disponibilite
	VALUES(0,'no holidays, only in spring','Weekends','No Holidays','Spring',1,1000000);
INSERT INTO Disponibilite
	VALUES(0,'only during the winter, 3 months max','Weekends','Holidays','Winter',1,92);
	
	
INSERT INTO Offre 
(idType,idLocalisation,idDisponibilite,idHote,idJour,nombreOffres,pourcentageLoue)
VALUES(1,1,1,1,1,29,0.4);
INSERT INTO Offre 
VALUES(2,1,1,1,1,2,0.5);
INSERT INTO Offre 
VALUES(3,1,1,1,1,9,0.6);
INSERT INTO Offre 
VALUES(4,1,1,1,1,12,0.2);
INSERT INTO Offre 
VALUES(5,1,1,1,1,29,0.2);
INSERT INTO Offre 
VALUES(6,1,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(7,1,1,1,1,10,0.8);
INSERT INTO Offre 
VALUES(8,1,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(9,1,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(10,1,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(11,1,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(12,1,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(13,1,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(14,1,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(15,1,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(16,1,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(17,1,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(18,1,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(19,1,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(20,1,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(21,1,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(22,1,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(23,1,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(24,1,1,1,1,0,0.0);

INSERT INTO Offre 
VALUES(1,2,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(2,2,1,1,1,23,0.6);
INSERT INTO Offre 
VALUES(3,2,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(4,2,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(5,2,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(6,2,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(7,2,1,1,1,10,0.8);
INSERT INTO Offre 
VALUES(8,2,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(9,2,2,2,2,42,1.0);
INSERT INTO Offre 
VALUES(10,2,2,2,2,0,0.0);
INSERT INTO Offre 
VALUES(11,2,2,2,2,0,0.0);
INSERT INTO Offre 
VALUES(12,2,1,1,1,6,0.33);
INSERT INTO Offre 
VALUES(13,2,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(14,2,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(15,2,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(16,2,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(17,2,1,1,1,10,0.2);
INSERT INTO Offre 
VALUES(18,2,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(19,2,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(20,2,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(21,2,1,1,1,20,0.4);
INSERT INTO Offre 
VALUES(22,2,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(23,2,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(24,2,1,1,1,0,0.0);

INSERT INTO Offre 
VALUES(1,3,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(2,3,1,1,1,36,0.75);
INSERT INTO Offre 
VALUES(3,3,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(4,3,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(5,3,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(6,3,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(7,3,1,1,1,10,0.8);
INSERT INTO Offre 
VALUES(8,3,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(9,3,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(10,3,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(11,3,1,1,1,78,0.69);
INSERT INTO Offre 
VALUES(12,3,1,1,1,12,0.5);
INSERT INTO Offre 
VALUES(13,3,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(14,3,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(15,3,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(16,3,1,1,1,4,0.25);
INSERT INTO Offre 
VALUES(17,3,1,1,1,5,0.8);
INSERT INTO Offre 
VALUES(18,3,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(19,3,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(20,3,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(21,3,1,1,1,8,0.13);
INSERT INTO Offre 
VALUES(22,3,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(23,3,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(24,3,1,1,1,6,1.0);

INSERT INTO Offre 
VALUES(1,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(2,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(3,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(4,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(5,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(6,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(7,4,1,1,1,10,0.8);
INSERT INTO Offre 
VALUES(8,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(9,8,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(10,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(11,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(12,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(13,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(14,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(15,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(16,7,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(17,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(18,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(19,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(20,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(21,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(22,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(23,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(24,4,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(1,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(2,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(3,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(4,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(5,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(6,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(7,5,1,1,1,10,0.8);
INSERT INTO Offre 
VALUES(8,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(9,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(10,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(11,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(12,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(13,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(14,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(15,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(16,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(17,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(18,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(19,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(20,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(21,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(22,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(23,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(24,5,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(1,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(2,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(3,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(4,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(5,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(6,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(7,6,1,1,1,10,0.8);
INSERT INTO Offre 
VALUES(8,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(9,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(10,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(11,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(12,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(13,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(14,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(15,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(16,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(17,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(18,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(19,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(20,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(21,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(22,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(23,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(24,6,1,1,1,0,0.0);
INSERT INTO Offre 
VALUES(1,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(2,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(3,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(4,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(5,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(6,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(7,6,1,2,1,10,0.8);
INSERT INTO Offre 
VALUES(8,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(9,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(10,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(11,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(12,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(13,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(14,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(15,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(16,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(17,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(18,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(19,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(20,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(21,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(22,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(23,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(24,6,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(1,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(2,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(3,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(4,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(5,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(6,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(7,6,1,4,1,10,0.8);
INSERT INTO Offre 
VALUES(8,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(9,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(10,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(11,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(12,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(13,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(14,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(15,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(16,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(17,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(18,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(19,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(20,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(21,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(22,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(23,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(24,6,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(1,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(2,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(3,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(4,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(5,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(6,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(7,8,1,5,1,10,0.8);
INSERT INTO Offre 
VALUES(8,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(9,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(10,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(11,7,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(12,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(13,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(14,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(15,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(16,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(17,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(18,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(19,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(20,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(21,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(22,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(23,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(24,6,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(1,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(2,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(3,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(4,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(5,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(6,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(7,5,1,2,1,10,0.8);
INSERT INTO Offre 
VALUES(8,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(9,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(10,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(11,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(12,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(13,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(14,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(15,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(16,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(17,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(18,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(19,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(20,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(21,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(22,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(23,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(24,5,1,2,1,0,0.0);
INSERT INTO Offre 
VALUES(1,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(2,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(3,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(4,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(5,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(6,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(7,5,1,4,1,10,0.8);
INSERT INTO Offre 
VALUES(8,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(9,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(10,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(11,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(12,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(13,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(14,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(15,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(16,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(17,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(18,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(19,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(20,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(21,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(22,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(23,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(24,5,1,4,1,0,0.0);
INSERT INTO Offre 
VALUES(1,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(2,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(3,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(4,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(5,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(6,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(7,5,1,5,1,10,0.8);
INSERT INTO Offre 
VALUES(8,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(9,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(10,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(11,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(12,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(13,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(14,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(15,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(16,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(17,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(18,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(19,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(20,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(21,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(22,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(23,5,1,5,1,0,0.0);
INSERT INTO Offre 
VALUES(24,5,1,5,1,0,0.0);