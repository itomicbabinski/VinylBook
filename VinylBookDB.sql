use master;
go
drop database if exists vinylbook;
go
create database vinylbook;
go

use vinylbook;

create table albums(
id int not null primary key identity(1,1),
title varchar(200) not null,
artist varchar(100) not null,
);

create table users(
id int not null primary key identity(1,1),
uname varchar(20) not null,
ulastname varchar(20) not null,
uemail varchar(50) not null,
uphone varchar(20) not null,
uaddress varchar(50) not null
);

create table record_copyes(
id int not null primary key identity(1,1),
album_id int null,
owner_id int null,
media_condition varchar(10) not null,
sleeve_condition varchar(10) not null,
sound_condition varchar(10) not null,
duplicate bit,
comment varchar(300)
);

create table exchanges(
id int not null primary key identity(1,1),
participant_id int null,
exchange_id int,
album_id int,
recordcopy_id int, 
estatus varchar(10),
);

alter table record_copy add foreign key (album_id) references albums(id);
alter table record_copy add foreign key (owner_id) references users(id);
alter table exchanges add foreign key (participant_id) references users(id);
alter table exchanges add foreign key (exschange_id) references exchanges(id);
alter table exchanges add foreign key (album_id) references users(id);
alter table exchanges add foreign key (record_copy_id) references record_copyes(id);



-- INSERT NAREDBE
--select * from smjerovi;

-- Školska sintaksa
-- 1 - šifra koju je dodjelila baza
insert into smjerovi (naziv,trajanje,cijena,izvodiseod,verificiran)
values ('Web programiranje',225,1589.89,'2024-01-15',1);

-- loša sintaksa
-- 2
insert into smjerovi values 
('Web dizajn',null,null,null,null);


-- MVP minimalna dobra sintaksa
-- 3
insert into smjerovi (naziv) values ('čšćđž ČŠĆĐŽ');


--select * from grupe;
-- 1
insert into grupe (naziv, smjer,maxpolaznika)
values ('WP4',1,26);
-- 2
insert into grupe (naziv, smjer,maxpolaznika)
values ('WP5',1,26);

--select * from polaznici;

-- 1 - 27
insert into polaznici (ime, prezime, email) values
('Igor','Balažić','igorbalazic11@gmail.com'),
('Damir','Bukvašević','damirbukvasevic@gmail.com'),
('Senka','Banjac','sbanjac88@gmail.com'),
('Igor','Brzica','igorbrzica1@gmail.com'),
('Ivan','Mesarić','mesaritchievan@gmail.com'),
('Mirko','Ereš','mirko.eres1@gmail.com'),
('Lea','Raguž','raguz.leaa@gmail.com'),
('Dominik  ','Daraždi','dominikdarazdi@gmail.com'),
('Dean','Vagner','deanvagner@yahoo.com'),
('Marko','Mudrovčić','markomudrovcic12@gmail.com'),
('Mario','Kušen','kusen.mario@gmail.com'),
('Leon','Jalovičar','ringerajacar@gmail.com'),
('Dražen','Kalazić','thekalazic@gmail.com'),
('Matej','Sudarić','matejsudo@gmail.com'),
('Antonijo','Šakić','a.sakic.1.g@gmail.com'),
('Nikola','Milić','nikk.mil@gmail.com'),
('Manuela','Slobođanac','manja496@gmail.com'),
('Srđan','Filipović','srdjanfilipovic991@gmail.com'),
('Goran','Matoš','goran.matos@a1.hr'),
('Igor','Tomić','i.tomic.babinski@gmail.com'),
('Borna','Štajduhar','bornastajduhar1999@gmail.com'),
('Ante','Filipović','ante.filipovic72@gmail.com'),
('Domagoj','Glavačević','glavacevic.d@gmail.com'),
('Lorena','Ostroški','lorena.ostroski2503@gmail.com'),
('Sanja','Boduljak','matkosanja@gmail.com'),
('Leon','Puhanić','leonpuhanic@gmail.com'),
('Danijel','Sačer','sacerdanijel@gmail.com');


--select * from clanovi;

-- članovi grupe WP4
insert into clanovi (grupa,polaznik) values
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),
(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),
(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27);

-- članovi grupe WP5
insert into clanovi (grupa,polaznik) values
(2,1),(2,3),(2,4);