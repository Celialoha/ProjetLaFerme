use farm;

SELECT nom, annee, idculture, rendement
FROM culture c
inner join plante p on c.fkplante = p.idplante
GROUP BY nom, annee, idculture
ORDER BY rendement ASC LIMIT 1;

SELECT nom, annee, idculture, rendement
FROM culture c
inner join plante p on c.fkplante = p.idplante
GROUP BY nom, annee, idculture
ORDER BY rendement DESC LIMIT 1;

SELECT STD(rendement) as std_rendement   
FROM culture c;

SELECT VARIANCE(rendement) as var_rendement   
FROM culture c;

--

SELECT nom, annee, idculture, MIN(rendement)
FROM culture c
inner join plante p on c.fkplante = p.idplante
GROUP BY nom;

SELECT nom, annee, idculture, MAX(rendement)
FROM culture c
inner join plante p on c.fkplante = p.idplante
GROUP BY nom;

SELECT nom, annee, idculture, STD(rendement)
FROM culture c
inner join plante p on c.fkplante = p.idplante
GROUP BY nom;

SELECT nom, annee, idculture, VARIANCE(rendement)
FROM culture c
inner join plante p on c.fkplante = p.idplante
GROUP BY nom;

