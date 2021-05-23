drop database if exists vjezba_4;
create database vjezba_4;
use vjezba_4;

create table punac(
sifra int not null primary key auto_increment,
treciputa datetime,
majica varchar(46),
jmbag char(11) not null,
novcica decimal(18,7) not null,
maraka decimal(12,6) not null,
ostavljen int not null);

create table ostavljen (
sifra int not null primary key auto_increment,
modelnaocala varchar(43),
introvertno bit,
kuna decimal(14,10));

create table prijatelj(
sifra int not null primary key auto_increment,
eura decimal(16,9),
prstena int not null,
gustoca decimal(16,5),
jmbag char(11) not null,	
suknja varchar(47) not null,
becar int not null);

create table becar(
sifra int not null primary key auto_increment,
novcica decimal(14,8),
kratkamajica varchar(48) not null,
bojaociju varchar(36) not null,
snasa int not null);

create table snasa(
sifra int not null primary key auto_increment,
introvertno bit,
treciputa datetime,
haljina varchar(44) not null,
zena int not null);

create table zena(
sifra int not null primary key auto_increment,
suknja varchar(39) not null,
lipa decimal(18,7),
prstena int not null);

create table zena_mladic(
sifra int not null primary key auto_increment,
zena int not null,
mladic int not null);

create table mladic(
sifra int not null primary key auto_increment,
kuna decimal(15,9),
lipa decimal(18,5),
nausnica int,
stilfrizura varchar(49),
vesta varchar(34) not null);

alter table punac add foreign key(ostavljen) references ostavljen(sifra);
alter table prijatelj add foreign key(becar) references becar(sifra);
alter table becar add foreign key(snasa) references snasa(sifra);
alter table snasa add foreign key(zena) references zena(sifra);
alter table zena_mladic add foreign key(zena) references zena(sifra);
alter table zena_mladic add foreign key(mladic) references mladic(sifra);

insert into zena(suknja,prstena) values ('Kratka',32),('Prekratka',12),('Taman',21);
insert into mladic(nausnica,vesta) values (35,'Plava'),(53,'Roza'),(24,'Skupa');
insert into zena_mladic(zena,mladic) values (1,2),(2,3),(3,1);
insert into snasa(treciputa,haljina,zena) values (null,'Crvena',1),('2020-04-04','Bijela',2),(null,'Crna',3);
insert into becar(kratkamajica,bojaociju,snasa) values ('Žuta','Smeđa',1),('Siva','Plava',2),('Crna','Zelena',3);
insert into ostavljen(introvertno) values (1),(0),(0);
insert into punac(majica,jmbag,novcica,maraka,ostavljen) values ('Kratka',12345678910,543.55,32.21,1),
('Dugačka',12345678911,213.221,23.31,2),('Bez rukava',12345678912,876.56,12.22,3);
insert into prijatelj(prstena,jmbag,suknja,becar) values (13,12345678913,'Plava',1),(22,12345678914,'Zelena',2),(76,12345678915,'Roza',3);

update punac set majica='Osijek';
select * from punac;

delete from prijatelj where prstena>17;
select * from prijatelj;


 





