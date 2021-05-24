drop database if exists vjezba_10;
create database vjezba_10;
use vjezba_10;

create table zarucnica(
sifra int not null primary key auto_increment,
treciputa datetime,
prviputa datetime,
suknja varchar(32) not null,
eura decimal(16,10));

create table sestra(
sifra int not null primary key auto_increment,
suknja varchar(46) not null,
bojaociju varchar(49),
indiferentno bit,
dukserica varchar(32) not null,
drugiputa datetime,
prviputa datetime not null,
zarucnica int);

create table zena(
sifra int not null primary key auto_increment,
bojaociju varchar(49) not null,
maraka decimal(13,9) not null,
majica varchar(45),
indiferentno bit,
prviputa datetime,
mladic int);

create table mladic(
sifra int not null primary key auto_increment,
hlace varchar(48) not null,
lipa decimal(18,6),
stilfrizura varchar(35) not null,
prstena int,
maraka decimal(12,6) not null,
svekrva int);

create table svekrva(
sifra int not null primary key auto_increment,
eura decimal(17,9),
carape varchar(43),
kuna decimal(13,9),
majica varchar(30),
introvertno bit not null,
punac int);

create table punac(
sifra int not null primary key auto_increment,
lipa decimal(15,9),
eura decimal(15,10) not null,
stilfrizura varchar(37));

create table punac_neprijatelj(
sifra int not null primary key auto_increment,
punac int not null,
neprijatelj int not null);

create table neprijatelj(
sifra int not null primary key auto_increment,
gustoca decimal(15,10) not null,
dukserica varchar(32) not null,
maraka decimal(15,7),
stilfrizura varchar(49) not null);

alter table sestra add foreign key(zarucnica) references zarucnica(sifra);
alter table zena add foreign key(mladic) references mladic(sifra);
alter table mladic add foreign key(svekrva) references svekrva(sifra);
alter table svekrva add foreign key(punac) references punac(sifra);
alter table punac_neprijatelj add foreign key(punac) references punac(sifra);
alter table punac_neprijatelj add foreign key(neprijatelj) references neprijatelj(sifra);

insert into punac(eura) values (324.33),(2556.32),(456.576);
insert into neprijatelj(gustoca,dukserica,stilfrizura) values (32.22,'Converse','Šabanka'),(45.22,'Nike','Irokeza'),(67.56,'Adidas','Fudbalerka');
insert into punac_neprijatelj(punac,neprijatelj) values (1,1),(2,2),(3,3);
insert into svekrva(introvertno) values (1),(0),(1);
insert into mladic(hlace,stilfrizura,maraka) values ('Dugačke','Rep',3243.2323),('Kratke','Nulerica',32.32),('Taman','Irokeza',67.44);
insert into sestra(suknja,dukserica,prviputa) values ('Plava','Crvena','2021-02-02'),('Roza','Ljubičasta','2021-05-12'),('Žuta','Siva','2020-05-25');
insert into zena(bojaociju,maraka) values ('Plava',32.33),('Zelena',3445.44),('Smeđa',326.68);

update sestra set bojaociju='Osijek';
select * from sestra;

delete from zena where maraka!=14.81;
select * from zena;



