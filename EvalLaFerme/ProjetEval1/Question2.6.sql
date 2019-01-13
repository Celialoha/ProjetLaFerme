use farm;

SELECT nom, annee, capacite, quantite 
FROM elevage e
inner join productionviande pr on e.idelevage = pr.fkelevage
inner join animal a on e.fkanimal = a.idanimal
GROUP BY nom, annee
ORDER BY capacite ASC LIMIT 1;

SELECT nom, annee, capacite, quantite 
FROM elevage e
inner join productionviande pr on e.idelevage = pr.fkelevage
inner join animal a on e.fkanimal = a.idanimal
GROUP BY nom, annee
ORDER BY quantite ASC LIMIT 1;

SELECT nom, annee, capacite, quantite 
FROM elevage e
inner join productionviande pr on e.idelevage = pr.fkelevage
inner join animal a on e.fkanimal = a.idanimal
GROUP BY nom, annee
ORDER BY capacite DESC LIMIT 1;

SELECT nom, annee, capacite, quantite 
FROM elevage e
inner join productionviande pr on e.idelevage = pr.fkelevage
inner join animal a on e.fkanimal = a.idanimal
GROUP BY nom, annee
ORDER BY quantite DESC LIMIT 1;


SELECT STD(quantite)  
FROM elevage e;

SELECT VARIANCE(quantite)  
FROM elevage e;

SELECT STD(capacite)   
FROM elevage e;

SELECT VARIANCE(capacite)   
FROM elevage e;

--

SELECT nom, annee, MIN(quantite)
FROM elevage e
inner join productionviande pr on e.idelevage = pr.fkelevage
inner join animal a on e.fkanimal = a.idanimal
GROUP BY nom;

SELECT nom, annee, MAX(quantite)
FROM elevage e
inner join productionviande pr on e.idelevage = pr.fkelevage
inner join animal a on e.fkanimal = a.idanimal
GROUP BY nom;

SELECT nom, annee, STD(quantite)
FROM elevage e
inner join productionviande pr on e.idelevage = pr.fkelevage
inner join animal a on e.fkanimal = a.idanimal
GROUP BY nom;

SELECT nom, annee, VARIANCE(quantite)
FROM elevage e
inner join productionviande pr on e.idelevage = pr.fkelevage
inner join animal a on e.fkanimal = a.idanimal
GROUP BY nom;

SELECT nom, annee, MIN(capacite)
FROM elevage e
inner join productionviande pr on e.idelevage = pr.fkelevage
inner join animal a on e.fkanimal = a.idanimal
GROUP BY nom;

SELECT nom, annee, MAX(capacite)
FROM elevage e
inner join productionviande pr on e.idelevage = pr.fkelevage
inner join animal a on e.fkanimal = a.idanimal
GROUP BY nom;

SELECT nom, annee, STD(capacite)
FROM elevage e
inner join productionviande pr on e.idelevage = pr.fkelevage
inner join animal a on e.fkanimal = a.idanimal
GROUP BY nom;

SELECT nom, annee, VARIANCE(capacite)
FROM elevage e
inner join productionviande pr on e.idelevage = pr.fkelevage
inner join animal a on e.fkanimal = a.idanimal
GROUP BY nom;
