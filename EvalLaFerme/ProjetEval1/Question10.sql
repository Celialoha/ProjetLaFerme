select tt.nom as "Type de terre", t.surface 
from type_terre as tt
join terrain t on tt.idtype_terre = t.fktype_terre
group by tt.nom, t.surface
order by t.surface desc;