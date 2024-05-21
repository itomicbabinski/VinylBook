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
record_copy_id int, 
estatus varchar(10),
);

alter table record_copyes add foreign key (album_id) references albums(id);
alter table record_copyes add foreign key (owner_id) references users(id);
alter table exchanges add foreign key (participant_id) references users(id);
alter table exchanges add foreign key (album_id) references users(id);
alter table exchanges add foreign key (record_copy_id) references record_copyes(id);


--select * from clanovi;

-- članovi grupe WP4
--insert into clanovi (grupa,polaznik) values
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),
(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),
(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27);

