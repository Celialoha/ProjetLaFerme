Select c.idculture, p.nom, tr.qtx
from culture as c
join traitement tr on c.idculture = tr.fkculture
join produit p on tr.fkproduit = p.idproduit;