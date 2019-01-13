Select c.idculture, p.nom, (tr.qtx/t.surface) as "quantité par hectare"
from culture as c
join traitement tr on c.idculture = tr.fkculture
join produit p on tr.fkproduit = p.idproduit
join terrain t on c.fkterrain = t.idterrain;