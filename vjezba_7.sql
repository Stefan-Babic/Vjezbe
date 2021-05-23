drop database if exists vjezba_7;
create database vjezba_7;
use vjezba_7;

create table mladic(
sifra int not null primary key auto_increment,
prstena int,
lipa decimal(14,5) not null,
narukvica int not null,
drugiputa datetime not null);

create table zarucnik(
sifra int not null primary key auto_increment,
versta varchar(34),
asocijalno bit not null,
modelnaocala varchar(43),
narukvica int not null,
novcica decimal(15,5) not null);

create table zarucnik_mladic(
sifra int not null primary key auto_increment,
zarucnik int not null,
mladic int not null);

create table ostavljen(
sifra int not null primary key auto_increment,
lipa decimal(14,6),
introvertno bit not null,
kratkamajica varchar(38) not null,
prstena int not null,
zarucnik int);

create table prijateljica(
sifra int not null primary key auto_increment,
haljina varchar(45),
gustoca decimal(15,10) not null,
ogrlica int,
novcica decimal(15,2),
ostavljen int);

create table sestra(
sifra int not null primary key auto_increment,
bojakose varchar(34) not null,
hlace varchar(36) not null,
lipa decimal(15,6),
stilfrizura varchar(40) not null,
maraka decimal(12,8) not null,
prijateljica int);

create table punica(
sifra int not null primary key auto_increment,
majica varchar(40),
eura decimal(12,6) not null,
prstena int,
 cura int not null);

create table cura(
sifra int not null primary key auto_increment,
lipa decimal(12,9) not null,
introvertno bit,
modelnaocala varchar(40),
narukvica int,
treciputa datetime,
kuna decimal(14,9));

alter table punica add foreign key(cura) references cura(sifra);
alter table zarucnik_mladic add foreign key(mladic) references mladic(sifra);
alter table zarucnik_mladic add foreign key(zarucnik) references zarucnik(sifra);
alter table ostavljen add foreign key(zarucnik) references zarucnik(sifra);
alter table prijateljica add foreign key(ostavljen) references ostavljen(sifra);
alter table sestra add foreign key(prijateljica) references prijateljica(sifra);

insert into mladic(lipa,narukvica,drugiputa) values (23.44,32,'2021-10-21'),(34.56,12,'2021-11-10'),(54.76,76,'2021-02-21');
insert into zarucnik(asocijalno,narukvica,novcica) values (1,24,234.44),(0,46,2123.33),(0,78,12311.22);
insert into zarucnik_mladic(zarucnik,mladic) values (1,3),(2,2),(3,1);
insert into ostavljen(introvertno,kratkamajica,prstena,zarucnik) values (1,'Plava',32,1),(0,'Zelena',55,2),(0,'Crvena',67,3);
insert into prijateljica(gustoca,ogrlica,ostavljen) values (32.32,33,1),(56.66,32,2),(76.76,12,3);
insert into cura(lipa,introvertno,narukvica) values (32.33,0,32),(88.44,1,88),(75.98,0,37);
insert into punica(eura,cura) values (322.33,1),(3324.33,2),(6745.324,3);
insert into sestra(bojakose,hlace,stilfrizura,maraka) values ('Plava','Traper','Jež',32.333),('Smeđa','Za Pokući','Irokeza',3245.33),
('Crna','Svečane','Fudbalerka',324.11);

update punica set eura=15.77;
select * from punica;

delete from sestra where hlace<'AB';
select * from sestra;

 	
 