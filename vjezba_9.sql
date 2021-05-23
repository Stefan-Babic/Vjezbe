drop database if exists vjezba_9;
create database vjezba_9;
use vjezba_9;

create table prijateljica(
sifra int not null primary key auto_increment,
treciputa datetime,
novcica decimal(16,7),
kuna decimal(14,10) not null,
drugiputa datetime,
haljina varchar(45),
kratkamajica varchar(49));

create table punac_prijateljica(
sifra int not null primary key auto_increment,
punac int not null,
prijateljica int not null);

create table punac(
sifra int not null primary key auto_increment,
narukvica int not null,
modelnaocala varchar(30),
kuna decimal(12,8),
bojaociju varchar(33),
suknja varchar(45));

create table cura(
sifra int not null primary key auto_increment,
vesta varchar(49) not null,
ekstrovertno bit,
carape varchar(37),
suknja varchar(37) not null,
punac int not null);

create table brat(
sifra int not null primary key auto_increment,
novcica decimal(18,9) not null,
ekstrovertno bit,
vesta varchar(32) not null,
cura int);

create table zarucnik(
sifra int not null primary key auto_increment,
gustoca decimal(17,6),
haljina varchar(40),
kratkamajica varchar(48) not null,
nausnica int not null,
brat int not null);

create table snasa(
sifra int not null primary key auto_increment,
prstena int,
drugiputa datetime not null,
haljina varchar(38) not null,
ostavljena int);

create table ostavljena(
sifra int not null primary key auto_increment,
modelnaocala varchar(34) not null,
suknja varchar(32),
eura decimal(18,7) not null,
lipa decimal(15,7) not null,
treciputa datetime not null,
drugiputa datetime not null);

alter table snasa add foreign key(ostavljena) references ostavljena(sifra);
alter table punac_prijateljica add foreign key(punac) references punac(sifra);
alter table punac_prijateljica add foreign key(prijateljica) references prijateljica(sifra);
alter table cura add foreign key(punac) references punac(sifra);
alter table brat add foreign key(cura) references cura(sifra);
alter table zarucnik add foreign key(brat) references brat(sifra);

insert into punac(narukvica) values (32),(12),(54);
insert into prijateljica(kuna) values (322.22),(3567.21),(564.33);
insert into punac_prijateljica(punac,prijateljica) values (1,1),(2,2),(3,3);
insert into cura(vesta,suknja,punac) values ('Bijela','Kratka',1),('Crna','Dugačka',2),('Siva','Taman',3);
insert into brat(novcica,vesta) values (324.21,'Pamučna'),(32425.32,'Vunena'),(234.25,'Poderana');
insert into snasa(drugiputa,haljina) values ('2021-10-21','Crvena'),('2021-11-26','Plava'),('2021-04-21','Zelena');
insert into zarucnik(kratkamajica,nausnica,brat) values ('Plava',32,1),('Zelena',23,2),('Žuta',67,3);

update snasa set drugiputa='2020-04-24';
select * from snasa;

delete from zarucnik where haljina='AB';
select * from zarucnik;



