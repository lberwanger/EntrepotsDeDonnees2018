/* Prix moyen par nuit par type de logement */

TAILLE     NBCHAMBRES CHEZHABITANT             NBLITS PRIX_MOYEN_NUIT
---------- ---------- -------------------- ---------- ---------------
room                1 with host                     1           901.5
room                1 with host                     3            1120
room                1 with host                                967.05
room                1 independent                   2          258.73
room                1 independent                   3             440
room                1 independent                   4         2195.18
room                1 independent                              963.27
room                1                                          964.84
room                                                           964.84
house               1 with host                     3         1574.66
house               1 with host                               1574.66

TAILLE     NBCHAMBRES CHEZHABITANT             NBLITS PRIX_MOYEN_NUIT
---------- ---------- -------------------- ---------- ---------------
house               1 independent                   4         13528.1
house               1 independent                             13528.1
house               1                                         9045.56
house                                                         9045.56
appartment          1 with host                     3          226.07
appartment          1 with host                                226.07
appartment          1                                          226.07
appartment                                                     226.07
                                                              3836.13

20 rows selected.

/* Prix moyen par ville */

VILLE   PRIX_MOYEN_NUIT
-----------------------
Steinkjer
             26

Montpellier
        7130.74

New York City
         794.58


/* Nombre de logements reservés par type par ville */
TAILLE     NBCHAMBRES CHEZHABITANT             NBLITS VILLE           COUNT(*)
---------- ---------- -------------------- ---------- --------------- ----------
                    1 with host                     1                 7
room                1 with host                     1                 7
                    1 with host                     1 Montpellier     6
room                1 with host                     1 Montpellier     6
                    1 with host                     1 New York City   1
room                1 with host                     1 New York City   1
                    1 with host                     3                 13
room                1 with host                     3                 3
house               1 with host                     3                 6
appartment          1 with host                     3                 4
                    1 with host                     3 Montpellier     5

TAILLE     NBCHAMBRES CHEZHABITANT             NBLITS VILLE           COUNT(*)
---------- ---------- -------------------- ---------- --------------- ----------
house               1 with host                     3 Montpellier      5
                    1 with host                     3 New York City    8
room                1 with host                     3 New York City    3
house               1 with host                     3 New York City    1
appartment          1 with host                     3 New York City    4
                    1 independent                   2                  8
room                1 independent                   2                  8
                    1 independent                   2 New York City    8
room                1 independent                   2 New York City    8
                    1 independent                   3                  3
room                1 independent                   3                  3

TAILLE     NBCHAMBRES CHEZHABITANT             NBLITS VILLE           COUNT(*)
---------- ---------- -------------------- ---------- --------------  ----------
                    1 independent                   3 Steinkjer        1
room                1 independent                   3 Steinkjer        1
                    1 independent                   3 Montpellier      1
room                1 independent                   3 Montpellier      1
                    1 independent                   3 New York City    1
room                1 independent                   3 New York City    1
                    1 independent                   4                  15
room                1 independent                   4                  5
house               1 independent                   4                  10
                    1 independent                   4 Montpellier      9
house               1 independent                   4 Montpellier      9

TAILLE     NBCHAMBRES CHEZHABITANT             NBLITS VILLE            COUNT(*)
---------- ---------- -------------------- ---------- ---------------- ----------
                    1 independent                   4 New York City     6
room                1 independent                   4 New York City     5
house               1 independent                   4 New York City     1


/* Nombre de logements offerts par des SuperHosts par ville le 2 juillet 2018 */
VILLE                                           NOMBRELOGEMENTS
----------------------------------------------- ---------------
Steinkjer                                       7
Montpellier                                     11
New York City                                   1500


/* Le type de logement le plus offert le 2 juillet 2018 */
TYPE       NOMBRE_OFFRES
---------- -------------
room                 235


/* Le nombre de logements disponible le weekend par ville le 2 juillet 2018*/
VILLE          NOMBRE_OFFRES
------------   -------------
Steinkjer      10
Montpellier    69
New York City  418


