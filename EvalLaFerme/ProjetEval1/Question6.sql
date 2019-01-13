delimiter $$

drop function if exists planteconsommee $$

create function planteconsommee(elevage int(10), plante varchar(20)) 
returns int
deterministic
begin
	declare quantiteconso int;
    select qtx into quantiteconso from alimentation al 
    join plante p on al.fkplante = p.idplante 
    join animal a on al.fkanimal = a.idanimal 
    join elevage e on a.idanimal = e.fkanimal
    where e.idelevage = elevage and p.nom = plante;
    return quantiteconso;
end $$

delimiter ;

select planteconsommee('6', 'Millet');