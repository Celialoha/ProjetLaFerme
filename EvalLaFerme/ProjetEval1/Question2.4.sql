delimiter $$

drop function if exists automne $$

create function automne()
returns int
deterministic
begin
	update pluie
    set precipitation = precipitation/10
    where saison = 'automne' and precipitation > 2300 and precipitation < 5500;
    return 1;
end $$

drop function if exists ete $$

create function ete()
returns int
deterministic
begin
	update pluie
    set precipitation = precipitation /100
    where saison = 'ete' and precipitation > 2300 and precipitation < 5500;
    return 1;
end $$

drop function if exists max_precipitation;

create function max_precipitation()
returns int
deterministic
begin
	update pluie p
	inner join
    (select annee, saison, if(count(precipitation), avg(precipitation), 200) temp
    from pluie
    where precipitation < 5500
    group by annee, saison)
    pre on pre.annee = p.annee and pre.saison = p.saison and p.precipitation > 5500
	set p.precipitation = pre.temp;
return 1;
end $$

delimiter ;

select automne();
select ete();

set sql_safe_updates =0;

select max_precipitation();

select * from pluie where saison = 'hiver' and annee = '2015-00-00';