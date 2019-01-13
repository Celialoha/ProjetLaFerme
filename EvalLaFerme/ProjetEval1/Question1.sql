/*CREATE TABLE Date_Meteo(
id_DateMeteo int not null auto_increment,
Dates date,
Saison varchar(10),
Precicpitations int,
Temperature_moy int,
Temperature_min int,
Temperature_max int,
primary key (id_DateMeteo));*/


ALTER TABLE Date_Meteo
/*add fk_terrain int (10) unsigned*/
ADD CONSTRAINT fk_terrain foreign key (fk_terrain) references terrain(idterrain);

