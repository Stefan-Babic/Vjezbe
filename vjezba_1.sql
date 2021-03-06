drop database if exists Vjezba_1;
create database Vjezba_1;
use Vjezba_1;

create table svekar(
sifra int not null primary key auto_increment,
bojaociju varchar(40) not null,
prstena int,
dukserica varchar(41),
lipa decimal(13,8),
eura decimal(12,7),
majica varchar(35));

create table sestra_svekar(
sifra int not null primary key auto_increment,
sestra int not null,
svekar int not null);

create table sestra(
sifra int not null primary key auto_increment,
introvertno bit,
haljina varchar(31) not null,
maraka decimal(16,6),
hlace varchar(46) not null,
narukvica int not null);

create table zena(
sifra int not null primary key auto_increment,
treciputa datetime,
hlace varchar(46),
kratkamajica varchar(31) not null,
jmbag char(11) not null,
bojaociju varchar(39) not null,
haljina varchar(44),
sestra int not null);

create table muskarac(
sifra int not null primary key auto_increment,
bojaociju varchar(50) not null,
hlace varchar(30),
modelnaocala varchar(43),
maraka decimal(14,5) not null,
zena int not null);

create table mladic(
sifra int not null primary key auto_increment,
suknja varchar(50) not null,
kuna decimal(16,8) not null,
drugiputa datetime,
asocijalno bit,
ekstrovertno bit not null,
dukserica varchar(48) not null,
muskarac int);

create table punac(
sifra int not null primary key auto_increment,
ogrlica int,
gustoca decimal(14,9),
hlace varchar(41) not null);

create table cura(
sifra int not null primary key auto_increment,
novcica decimal(16,5) not null,
gustoca decimal(18,6) not null,
lipa decimal(13,10),
ogrlica int not null,
bojakose varchar(38),
suknja varchar(36),
punac int);

alter table sestra_svekar add foreign key(svekar) references svekar(sifra);
alter table sestra_svekar add foreign key(sestra) references sestra(sifra);
alter table zena add foreign key(sestra) references sestra(sifra);
alter table muskarac add foreign key(zena) references zena(sifra);
alter table mladic add foreign key(muskarac) references muskarac(sifra);
alter table cura add foreign key(punac) references punac(sifra);

insert into svekar(bojaociju) values ('Zelena'),('Plava'),('Sme??a');
insert into sestra(haljina,hlace,narukvica) values ('Plava','Sme??e',1),('Zelena','Crne',2),('Roza','Ljubi??aste',3);
insert into zena(kratkamajica,bojaociju,sestra,jmbag) values ('Plava','Plava',1,12345678910),('Crvena','Zelena',2,12345678911),('Roza','Sme??a',3,12345678912);
insert into muskarac(bojaociju,maraka,zena) values ('Plava',43.12345,1),('Zelena',32.23456,2),('Sme??a',65.34567,3);
insert into sestra_svekar(sestra,svekar) values (1,2),(2,3),(3,1);
insert into punac(hlace) values ('Sve??ane'),('ZaPoKu??i'),('Radne');
insert into cura(novcica,gustoca,ogrlica,punac) values (320.32,34.332211,3,1),(230.32,45.002233,4,2),(420.23,52.222211,5,3);
insert into mladic(suknja,kuna,ekstrovertno,dukserica) values ('Crvena',53.87,1,'Roza'),('Plava',342.57,0,'Plava'),('Roza',13.334,1,'Ljubi??asta');

select * from cura;

update cura set gustoca=15.77;

select * from mladic;

delete from mladic where kuna>15.78;








