select distinct *
from pluie pl1
where exists (
	select *
    from pluie pl2
    where (pl1.precipitation <> pl2.precipitation)
    and pl1.saison = pl2.saison
    and pl1.annee = pl2.annee
    and pl1.terrain = pl2.terrain);

insert into pluie (saison, annee, terrain, precipitation)
select pl.saison, pl.annee, pl.terrain, sum(pl.precipitation)
from pluie_temp pl 
group by pl.saison, pl.annee, pl.terrain;

select * from pluie;