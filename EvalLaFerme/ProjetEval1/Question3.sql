delimiter $$

drop function if exists refterrain_aug $$


create function refterrain_aug() 
returns int
deterministic
begin
	update culture
	set fkterrain = fkterrain + 25
	where fkterrain < 26;
	return 1 ;
end $$

delimiter ;

select refterrain_aug();

	