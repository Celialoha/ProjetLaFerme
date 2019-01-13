drop database if exists Meteo;
create database Meteo;
use Meteo;

create table temperature_temp
(
txt varchar(255)
);

SET SQL_SAFE_UPDATES = 0;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/temperature.csv'
INTO TABLE temperature_temp
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
UPDATE temperature_temp SET txt = REPLACE(txt, ',',';');
SELECT * FROM temperature_temp INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/temperature_clean.csv';

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/temperature_clean.csv'
INTO TABLE temperature
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
(@date, mini, terrain, maxi, moyenne)
SET DATE = STR_TO_DATE(@date, '%m/%y');

SELECT * FROM temperature;



