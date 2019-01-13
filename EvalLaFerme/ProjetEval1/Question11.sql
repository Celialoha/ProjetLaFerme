alter table culture
change fkresponsable  fkemploye int(10);

alter table culture
modify fkemploye int(10) unsigned;


alter table culture
add constraint fk_employe_culture foreign key (fkemploye) references employe(idemploye);


delimiter $$

drop trigger if exists before_update_culture $$

create trigger before_update_culture before update
on culture for each row
begin
    declare test_poste_insert int(10);
    select e.fkposte into test_poste_insert from employe e where idemploye = new.fkemploye;
    if new.idculture != 112
    and new.idculture != 232
    and test_poste_insert = 11
        then 
            signal sqlstate '45000' set message_text = 'Mauvais choix de culture';
    END IF;
END $$

drop trigger if exists before_insert_culture $$

create trigger before_insert_culture before insert
on culture for each row
begin
    declare test_poste_insert int(10);
    select e.fkposte into test_poste_insert from employe e where idemploye = new.fkemploye;
    if new.idculture != 112
    and new.idculture != 232
    and test_poste_insert = 11
        then 
            signal sqlstate '45000' set message_text = 'Mauvais choix de culture';
    END IF;
END $$

delimiter ;