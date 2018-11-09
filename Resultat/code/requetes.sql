-- create virtual views for dateDebut et dateFin of shared dimension Dates
CREATE OR REPLACE VIEW date_Debut AS SELECT * FROM Dates;
CREATE OR REPLACE VIEW date_Fin AS SELECT * FROM Dates;
CREATE OR REPLACE VIEW jour AS SELECT * FROM Dates;

CREATE OR REPLACE VIEW Hote AS SELECT idUtilisateur as idHote,nom,prenom,sexe,
dateNaissance,villeOrigine,email,langueParlee,dateInscription,superUser
FROM Utilisateur WHERE hote = 'Host';

CREATE OR REPLACE VIEW Client AS SELECT idUtilisateur as IdClient,nom,prenom,sexe,
dateNaissance,villeOrigine,email,langueParlee,dateInscription
FROM Utilisateur WHERE hote = 'Non-Host';

CREATE OR REPLACE VIEW typesReservation AS SELECT * FROM typesLogement;
CREATE OR REPLACE VIEW typesOffre AS SELECT * FROM typesLogement;

/* Prix moyen par nuit par type de logement reservé*/
SELECT taille,nbChambres,chezHabitant,nbLits,ROUND(AVG(prixNuit),2) as Prix_Moyen_Nuit FROM (
	SELECT t.taille,t.nbChambres,t.chezHabitant,t.nbLits,(r.prixTotal/duree) as prixNuit
	FROM Logement l,Reservation r, typesReservation t
	WHERE l.idLogement = r.idLogement AND l.typeLog = t.idType) rl
GROUP BY ROLLUP(taille,nbChambres,chezHabitant,nbLits);

/* Prix moyen par nuit pour par ville */
SELECT ville,ROUND(AVG(prixNuit),2) as prix_moyen_nuit FROM (
	SELECT lo.ville,(r.prixTotal/duree) as prixNuit
	FROM Localisation lo, Reservation r
	WHERE lo.idLocalisation = r.idLocalisation) rlo
GROUP BY ville;

/* Nombre logements reservés par type par ville */
SELECT lo.ville,t.taille,t.nbChambres,t.chezHabitant,t.nbLits,COUNT(*) FROM 
	Localisation lo, Logement l, Reservation r, typesReservation t
	WHERE lo.idLocalisation = r.idLocalisation AND l.idLogement = r.idLogement
		AND l.typeLog = t.idType
	GROUP BY CUBE(lo.ville,t.taille),t.nbChambres,t.chezHabitant,t.nbLits;
	
/* Nombre de logements offerts par des SuperHosts par ville le 2 juillet 2018 */
SELECT l.ville,SUM(o.idType) as nombreLogements FROM Offre o,Localisation l,Hote h,jour j
WHERE o.idLocalisation = l.idLocalisation AND o.idHote = h.idHote AND
		o.idJour = j.idDate AND j.dateEntier='02-july-2018' AND
		h.superUser = 'SuperUser'
GROUP BY l.ville;

/* Le type de logement le plus offert le 2 juillet 2018 */
SELECT t.taille as type,SUM(o.nombreOffres) as nombre_offres 
FROM Offre o, typesLogement t, jour j
WHERE o.idType = t.idType AND o.idJour = j.idDate AND
		j.dateEntier = '02-july-2018'
GROUP BY (t.taille)
HAVING SUM(o.nombreOffres) = 
(SELECT MAX(SUM(o.nombreOffres)) 
FROM Offre o, typesLogement t, jour j
WHERE o.idType = t.idType AND o.idJour = j.idDate AND
		j.dateEntier = '02-july-2018'
GROUP BY (t.taille));

/* Le nombre de logements disponible le weekend par ville */
SELECT lo.ville as ville, SUM(o.nombreOffres) as nombre_offres
FROM Offre o, Localisation lo, Disponibilite d, jour j
WHERE o.idLocalisation = lo.idLocalisation AND o.idDisponibilite = d.idDisponibilite
	AND j.idDate = o.idJour AND j.dateEntier = '02-july-2018'
	AND d.weekends = 'Weekends'
GROUP BY lo.ville;
	

	

