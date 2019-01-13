use Meteo;

drop table if exists temperature;

create table temperature
(
date date,
mini int,
terrain int,
maxi int,
moyenne float
);

delimiter $$

drop trigger if exists temp_moy_max $$

create trigger temp_moy_max before insert
on temperature for each row
begin
	declare temp int;
    if new.moyenne > new.maxi
    then
	set temp = new.maxi,
    new.maxi = new.moyenne,
    new.moyenne = temp;
    END IF;
    if new.moyenne = new.maxi
    then
    set new.moyenne = ((new.mini+new.maxi)/2);
    END IF;
END $$

delimiter ;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/temperature_clean.csv'
INTO TABLE temperature
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
(@date, mini, terrain, maxi, moyenne)
SET DATE = STR_TO_DATE(@date, '%m/%y');

SET SQL_SAFE_UPDATES = 0;

select * from temperature;
