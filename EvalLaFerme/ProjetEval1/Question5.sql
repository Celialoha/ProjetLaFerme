Select sum(qtx), (sum(qtx)/capacite), nom, annee
from alimentation as al
join animal a on al.fkanimal = a.idanimal
join elevage e on a.idanimal = e.fkanimal
group by nom, annee
order by annee DESC;