select tt.nom as "Le type de terre la plus présente", t.surface 
from type_terre as tt
join terrain t on tt.idtype_terre = t.fktype_terre
group by tt.nom
order by sum(t.surface) desc limit 1;