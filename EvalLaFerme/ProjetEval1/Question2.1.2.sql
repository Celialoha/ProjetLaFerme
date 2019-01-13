use Meteo;

drop table if exists pluie;

/*delimiter $$

create trigger before_insert_pluie before insert
on pluie for each row
begin
    if new.terrain = 'soixante sept'
      then
        new.terrain = "67";
        end if;
	if new.terrain = 'dix sept'
		then
        new.terrain = "17";
    END IF;
END $$

delimiter ;*/

drop table if exists pluie;

create table pluie
(
saison varchar(45),
annee date,
terrain int,
precipitation int
);

drop table if exists pluie_temp;
create table pluie_temp
(
saison varchar(45),
annee date,
terrain int,
precipitation int
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/pluie.csv'
INTO TABLE pluie_temp
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(saison, @var2, @var1, @var3)
SET terrain = if(@var1 = 'soixante sept', 67,
			if(@var1 = 'dix sept', 17,
            if(@var1 = 'treize', 13,
            if(@var1 = 'vingt cinq', 25,
            if(@var1 = 'trente trois', 33,
            if(@var1 = 'quarante sept', 47,
            if(@var1 = 'quinze', 15,
            if(@var1 = 'quarante quatre', 44,
            if(@var1 = 'quarante et un', 41,
            if(@var1 = 'quatre vingt', 80,
            if(@var1 = 'soixante neuf', 69,
			@var1
            ))))))))))),
annee = STR_TO_DATE(@var2, '%y'),
precipitation = if(@var3 = '', 0, @var3);

select * from pluie;




