Select sum(p.quantite), (sum(p.quantite)/e.capacite), a.nom, e.idelevage
from productionviande as p
join elevage e on p.fkelevage = e.idelevage
join animal a on e.fkanimal = a.idanimal
group by idelevage;
