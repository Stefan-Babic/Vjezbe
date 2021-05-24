drop database if exists vjezba_11;
create database vjezba_11;
use vjezba_11;

create table muskarac(
sifra int not null primary key auto_increment,
maraka decimal(16,5),
novcica decimal (13,10),
nausnica int,
narukvica int not null,
gustoca decimal(12,6),
neprijatelj int not null);

create table neprijatelj(
sifra int not null primary key auto_increment,
narukvica int not null,
novcica decimal(12,8) not null,
bojakose varchar(39) not null,
gustoca decimal(14,10),
introvertno bit not null,
asocijalno bit);

create table punica(
sifra int not null primary key auto_increment,
carape varchar(33) not null,
drugiputa datetime,
majica varchar(40) not null,
haljina varchar(30) not null,
bojakose varchar(37) not null,
djevojka int not null);

create table djevojka(
sifra int not null primary key auto_increment,
kratkamajica varchar(45) not null,
prstena int,
ekstrovertno bit not null,
majica varchar(42) not null,
introvertno bit not null,
svekrva int);

create table svekrva(
sifra int not null primary key auto_increment,
narukvica int not null,
carape varchar(39) not null,
haljina varchar(31),
punac int not null);

create table mladic(
sifra int not null primary key auto_increment,
ogrlica int not null,
stilfrizura varchar(35),
drugiputa datetime not null,
hlace varchar(41) not null);

create table punac_mladic(
sifra int not null primary key auto_increment,
punac int not null,
mladic int not null);

create table punac(
sifra int not null primary key auto_increment,
jmbag char(11),
kuna decimal(16,5) not null,
vesta varchar(45) not null);

alter table muskarac add foreign key(neprijatelj) references neprijatelj(sifra);
alter table punica add foreign key(djevojka) references djevojka(sifra);
alter table djevojka add foreign key(svekrva) references svekrva(sifra);
alter table svekrva add foreign key(punac) references punac(sifra);
alter table punac_mladic add foreign key(punac) references punac(sifra);
alter table punac_mladic add foreign key(mladic) references mladic(sifra);

insert into punac(kuna,vesta) values (2345.22,'Siva'),(324.22,'Crvena'),(324235.55,'Plava');
insert into mladic(ogrlica,drugiputa,hlace) values (22,'2022-10-11','Crne'),(45,'2021-12-10','Sive'),(67,'2021-06-05','Smeđe');
insert into punac_mladic(punac,mladic) values (1,2),(2,1),(3,3);
insert into svekrva(narukvica,carape,punac) values (32,'Probušene',1),(45,'Čitave',2),(67,'Oprane',3);
insert into djevojka(kratkamajica,ekstrovertno,majica,introvertno) values ('Plava',1,'Plava',0),('Zelena',0,'Zelena',0),('Crvena',1,'Crvena',0);
insert into neprijatelj(narukvica,novcica,bojakose,introvertno) values (45,3354.44,'Plava',0),(12,456.44,'Crna',0),(68,1234.11,'Smeđa',1);
insert into muskarac(narukvica,neprijatelj) values (32,1),(45,2),(56,3);
insert into punica(carape,majica,haljina,bojakose,djevojka) values('Iznošene','Plava','Roza','Plava',1),('Poderane','Žuta','Crvena','Crna',2),('Nove','Bijela','Ljubičasta','Crvena',3);

update muskarac set novcica=15.70;
select * from muskarac;

delete from punica where drugiputa='2019-04-08';


