-- A. Se connecter au sgbd
-- B. Créer une base de données 'exercices'
-- C. Selectionner la base de données 'exercices'
-- D. Voir les tables de la base de données 'exercices'


--------------------------
-- 1. Créer une table etudiant : [ civilité : enum{ 'Mme' ou 'Mr'}, nom : varchar, prenom : varchar, adresse : varchar,
-- code_postal : entier, ville: varchar, date_naissance : date , frais_inscription : nombre à virgule, actif : boolean ]


CREATE TABLE etudiant
(
	id INT,
    civilite ENUM('Mme', 'M'),
    nom VARCHAR(255),
    prenom VARCHAR(255),
	adress VARCHAR(255),
    code_postal INT,
    ville VARCHAR(255),
    date_naissance DATE,
    frais_inscription FLOAT,
    actif BOOLEAN
);
-- 2. Supprimer la table

drop TABLE etudiant

-- 3. Recréer la table 

CREATE TABLE etudiant
(
	id INT,
    civilite ENUM('Mme', 'M'),
    nom VARCHAR(255),
    prenom VARCHAR(255),
	adress VARCHAR(255),
    code_postal INT,
    ville VARCHAR(255),
    date_naissance DATE,
    frais_inscription FLOAT,
    actif BOOLEAN
);

-- 4. Insérer 4 étudiants

INSERT INTO etudiant VALUES 
(1, "M", "noma", "prenoma", "adressa", 00001, "villa", "0000-01-01", 11.99, true),
(2, "Mme","nomb", "prenomb", "adressb", 00002, "villb", "0476-05-06", 12.99, false),
(3, "Mme", "nomc", "prenomc", "adressc", 00003, "villc", "1453-08-08", 13.99, true),
(4, "M", "nomd", "prenomd", "adressd", 00004, "villd", "2022-08-28", 14.99, false);

-- 5. Vider la table

TRUNCATE TABLE etudiant 

-- 6. Recréer la table

CREATE TABLE etudiant
(
	id INT,
    civilite ENUM('Mme', 'M'),
    nom VARCHAR(255),
    prenom VARCHAR(255),
	adress VARCHAR(255),
    code_postal INT,
    ville VARCHAR(255),
    date_naissance DATE,
    frais_inscription FLOAT,
    actif BOOLEAN
);

-- 7. Modifier la table => Ajouter le champ : [actif : booléen]

ALTER TABLE etudiant ADD actif BOOL

-- 8. Insérer 4 étudiants

INSERT INTO etudiant VALUES 
(1, "M", "noma", "prenoma", "adressa", 00001, "villa", "0000-01-01", 11.99, true),
(2, "Mme","nomb", "prenomb", "adressb", 00002, "villb", "0476-05-06", 12.99, false),
(3, "Mme", "nomc", "prenomc", "adressc", 00003, "villc", "1453-08-08", 13.99, true),
(4, "M", "nomd", "prenomd", "adressd", 00004, "villd", "2022-08-28", 14.99, false);

-- 9. Changer tous les noms des champs en anglais

ALTER TABLE etudiant 
CHANGE civilite civility ENUM('Mme', 'M'),
CHANGE nom name VARCHAR(255),
CHANGE prenom firstname VARCHAR(255),
CHANGE adresse adress VARCHAR(255),
CHANGE code_postal postal_code INT,
CHANGE ville city VARCHAR(255),
CHANGE date_naissance birthday DATE,
CHANGE frais_inscription inscription_cost FLOAT,
CHANGE actif activ BOOLEAN;

-- 10. Ajouter 3 étudiants en spécifiant toutes les colonnes

INSERT INTO etudiant VALUES 
(1, "M", "nome", "prenome", "adresse", 00005, "ville", "0022-01-01", 11.99, true),
(2, "Mme","nomf", "prenomf", "adressf", 00006, "villf", "4276-05-06", 12.99, false),
(3, "Mme", "nomg", "prenomg", "adressg", 00065, "villg", "2453-08-08", 13.99, true);

-- 11. Ajouter 3 étudiants en spécifiant seulement les colonnes souhaitées (nom, prenom, ville)

INSERT INTO etudiant VALUES
(null, null, "NOM", "PRENOM", null, null, "ville", null, null, null),
(null, null, "NOM", "PRENOM", null, null, "ville", null, null, null),
(null, null, "NOM", "PRENOM", null, null, "ville", null, null, null);

-- 12. Ajouter 3 étudiants d’un coup

INSERT INTO etudiant VALUES 
(5, "M", "nomh", "prenomh", "adresseh", 00005, "villeh", "0022-01-01", 11.99, true),
(6, "Mme","nomi", "prenomi", "adressi", 00006, "villei", "4276-05-06", 12.99, false),
(7, "Mme", "nomj", "prenomj", "adressej", 00065, "villej", "2453-08-08", 13.99, true);

-- 13. Modifier l’adresse d’un étudiant 

UPDATE etudiant
SET adress = "EditedAdress",
city = "EditedCity",
postal_code = "12345"
WHERE id = 1

-- 14. Modifier tous les étudiants :  champ 'actif' à false 

UPDATE etudiant SET activ = 0

-- 15. Supprimer un étudiant

DELETE FROM etudiant WHERE id = 5

--16. Supprimer tous les étudiants

DELETE FROM etudiant

--17. Ajouter 4 étudiants
INSERT INTO etudiant VALUES 
(10, "M", "nomk", "prenomk", "adressek", 00005, "villek", "0022-01-01", 11.99, true),
(11, "M", "noml", "prenoml", "adressel", 00005, "villel", "0022-01-01", 11.99, true),
(12, "Mme","nomm", "prenomm", "adressm", 00006, "villem", "4276-05-06", 12.99, false),
(13, "Mme", "nomn", "prenomn", "adressen", 00065, "villen", "2453-08-08", 13.99, true);

--18. Sélectionner le nom et le prénom de tous les étudiants

SELECT name, firstname FROM etudiant

--19. Sélectionner le nom, le prénom et la ville de tous les étudiants

SELECT name, firstname, city FROM etudiant

--20. Afficher toutes les villes 

SELECT city FROM etudiant

--21. Afficher toutes les villes de manière unique

SELECT city FROM etudiant

--22. Sélectionner le nom, le prénom et la ville de tous les étudiants

SELECT name, firstname, city FROM etudiant

--23. Sélectionner le nom, le prénom et la ville de tous les étudiants en mettant un alias à chaque champ

SELECT name as namea, firstname as prenoma, city as villa
FROM etudiant; 

--24. Afficher le nom, le prénom, initiales  de tous les étudiants 
-- Initiales :  1ere lettre du nom . 1ere lettre du prenom .
-- Ex H.J.

SELECT name, firstname, SUBSTRING(name, 1, 1), SUBSTRING(firstname, 1, 1) FROM etudiant

--25. Sélectionner les étudiants qui ont des frais de dossiers supérieur à 200euro et inférieur à 500euro ( ne pas utiliser l’instruction between)

SELECT * FROM etudiant
WHERE inscription_cost>12
AND inscription_cost<13

--26. Sélectionner les étudiants qui ont des frais de dossiers différents de 200euro

SELECT * FROM etudiant
WHERE inscription_cost!=12.99

--27. Sélectionner les étudiants qui ont des frais de dossiers supérieur à 200euro et inférieur à 500euro en utilisant l’instruction between

SELECT * FROM etudiant
WHERE inscription_cost BETWEEN 12 AND 13

--28. Sélectionner les étudiants qui habitent à Lyon 

SELECT * FROM etudiant
WHERE city = "Lyon"

--29. Sélectionner les étudiants qui habitent dans une ville qui se termine par « le »

SELECT * FROM etudiant
WHERE city LIKE '%\le'

--30. Sélectionner les étudiants qui habitent dans une ville qui contient la lettre « y »

SELECT * FROM etudiant
WHERE city LIKE '%ill%'

--31. Sélectionner les étudiants qui ont des frais de dossiers inférieur  à 200euro ou supérieur à 500euro ou qui habitent à Lyon ou à Grenoble sans utiliser l’instruction IN

SELECT * FROM etudiant
WHERE inscription_cost BETWEEN 12 AND 13,
AND city = ('%ill%', '%\le');

--32. Sélectionner les étudiants qui ont des frais de dossiers inférieur  à 200euro ou supérieur à 500euro ou qui habitent à Lyon ou à Grenoble en utilisant l’instruction IN

SELECT * FROM etudiant
WHERE inscription_cost BETWEEN 12 AND 13,
AND city IN ("Lyon", "Grenoble");

--33. Sélectionner les étudiants dont le nom commence par une lettre entre A et D

SELECT * FROM etudiant
WHERE name LIKE 'a%' OR 'b%' OR 'c%'

--34. Sélectionner les étudiants dont le nom contient ‘mac’ mais pas en début du nom

SELECT * FROM etudiant
WHERE city LIKE '%mac%'

--35. Lister les etudiants par ordre croissant de leurs ville

SELECT * FROM etudiant
ORDER BY city

--36. Lister les etudiants par ordre croissant de leurs noms puis par ordre croissant de leurs prénoms

SELECT * FROM etudiant
ORDER BY name 

--37. Lister les etudiants par ordre decroissant en mettant leurs noms en majuscule et leurs prenom en minuscule 

SELECT *, UPPER(name), lower(firstname) FROM etudiant
ORDER BY name 

--38. Lister les etudiants par ordre croissant en mettant la 1er lettre de leur noms en majuscule, le reste en minuscule et leurs prenom en minuscule  et leurs initiales en majuscule

SELECT CONCAT(UPPER(SUBSTRING(name,1,1)),LOWER(SUBSTRING(name,2))), firstname, UPPER(CONCAT(SUBSTRING(name, 1, 1),".", SUBSTRING(firstname, 1, 1))) AS name FROM etudiant

--39. Afficher les étudiants comme ceci : ‘Madame’ si c’est une femme Ou ‘Monsieur’ si c’est un homme, le nom, le prénom (Ex: Madame Haddad Jihane)

SELECT concat(
    CASE 
    WHEN civility ="M" THEN "Monsieur"
    WHEN civility = "Mme" THEN "Madame"
    END
    ," ",name," ",firstname) as genre
    FROM etudiant

--40. Afficher le nom le prénom ‘Pas encore majeur’ si l’âge est inférieur à 18, ‘majeur’ si l’âge est supérieur à 18, ‘senior’ si l’âge est supérieur à 60 (Ex: Haddad Jihane majeur)

SELECT concat(
    CASE
    WHEN age < 18 THEN "Pas majeur"
    WHEN age BETWEEN 18 AND 60 THEN "majeur"
    WHEN age > 60 THEN "Vieux"
    END
    ," ", name," ",firstname) as age
    FROM etudiant

