use master;
go
drop database if exists vinylbook;
go
create database vinylbook collate Croatian_CI_AS;
go

use vinylbook;

create table albums(
id int not null primary key identity(1,1),
title varchar(200) not null,
artist varchar(100) not null,
language_type bit
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
alter table exchanges add foreign key (album_id) references albums(id);




