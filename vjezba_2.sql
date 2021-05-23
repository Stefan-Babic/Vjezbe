drop database if exists vjezba_2;
create database vjezba_2;
use vjezba_2;

create table brat(
sifra int not null primary key auto_increment,
suknja varchar(47),
ogrlica int not null,
asocijalno bit not null,
neprijatelj int not null);

create table neprijatelj(
sifra int not null primary key auto_increment,
majica varchar(32),
haljina varchar(43) not null,
lipa decimal(16,8),
modelnaocala varchar(49) not null,
kuna decimal(12,6) not null,
jmbag char(11),
cura int);

create table cura(
sifra int not null primary key auto_increment,
haljina varchar(33) not null,
drugiputa datetime not null,
suknja varchar(38),
narukvica int,
introvertno bit,
majica varchar(40) not null,
decko int);

create table decko(
sifra int not null primary key auto_increment,
indiferentno bit,
vesta varchar(34),
asocijalno bit not null);

create table decko_zarucnica(
sifra int not null primary key auto_increment,
decko int not null,
zarucnica int not null);

create table zarucnica(
sifra int not null primary key auto_increment,
narukvica int,
bojakose varchar(37) not null,
novcica decimal(15,9),
lipa decimal(15,8) not null,
indiferentno bit not null);

create table prijatelj(
sifra int not null primary key auto_increment,
modelnaocala varchar(37),
treciputa datetime not null,
ekstrovertno bit not null,
prviputa datetime, 
svekar int not null);

create table svekar(
sifra int not null primary key auto_increment,
stilfrizura varchar(48),
ogrlica int not null,
asocijalno bit not null);

alter table brat add foreign key(neprijatelj) references neprijatelj(sifra);
alter table neprijatelj add foreign key(cura) references cura(sifra);
alter table cura add foreign key(decko) references decko(sifra);
alter table decko_zarucnica add foreign key(decko) references decko(sifra);
alter table decko_zarucnica add foreign key(zarucnica) references zarucnica(sifra);
alter table prijatelj add foreign key(svekar) references svekar(sifra);

insert into decko(indiferentno,vesta,asocijalno) values (0,'Plava',1),(1,'Zelena',0),(1,'Plava',1);
insert into zarucnica(narukvica,bojakose,novcica,lipa,indiferentno) values (1,'Plava',435.334,32.456,0),(2,'Crna',354.675,67.754,1),(3,'Smeđa',322.656,63.3423,0);
insert into cura(haljina,drugiputa,majica,decko) values ('Plava','2021-07-15 16:45:00','Zelena',1),('Roza','2021-09-24 20:00:00','Ljubičasta',2),('Karirana','2022-01-03 21:00:00','Crvena',3);
insert into neprijatelj(haljina,modelnaocala,kuna,cura) values ('Plava','Diesel',453.546,1),('Crvena','Ray Ban',2340.54,3),('Zelena','Police',32.145,2);
insert into decko_zarucnica(decko,zarucnica) values (1,2),(2,3),(3,1);
insert into svekar(ogrlica,asocijalno) values (1,0),(2,1),(3,0);
insert into prijatelj(treciputa,ekstrovertno,svekar) values ('2021-05-14',0,1),('2021-07.05',0,2),('2021-08-07',1,3);
insert into brat(suknja,ogrlica,asocijalno,neprijatelj) values ('Kratka',54,0,1),('Dugačka',11,1,2),('Taman',14,1,3);


update prijatelj set treciputa='2020-04-30';
select * from prijatelj;

delete from brat where ogrlica!=14;
select * from brat;






