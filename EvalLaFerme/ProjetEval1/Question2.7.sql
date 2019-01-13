use farm;

SELECT MIN(rendement), plante.nom FROM culture
INNER JOIN plante ON culture.fkplante = plante.idplante
GROUP BY plante.nom;

SELECT MAX(rendement), plante.nom FROM culture
INNER JOIN plante ON culture.fkplante = plante.idplante
GROUP BY plante.nom;

SELECT STD(rendement), plante.nom FROM culture
INNER JOIN plante ON culture.fkplante = plante.idplante
GROUP BY plante.nom;

SELECT VARIANCE(rendement), plante.nom FROM culture
INNER JOIN plante ON culture.fkplante = plante.idplante
GROUP BY plante.nom;

