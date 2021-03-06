drop database if exists vjezba_6;
create database vjezba_6;
use vjezba_6;

create table decko(
sifra int not null primary key auto_increment,
prviputa datetime,
modelnaocala varchar(41),
nausnica int,
zena int not null);

create table zena(
sifra int not null primary key auto_increment,
novcica decimal(14,8) not null,
narukvica int not null,
dukserica varchar(40) not null,
haljina varchar(30),
hlace varchar(32),
brat int not null);

create table brat(
sifra int not null primary key auto_increment,
nausnica int not null,
treciputa datetime not null,
narukvica int not null,
hlace varchar(31),
prijatelj int);

create table prijatelj(
sifra int not null primary key auto_increment,
haljina varchar(35),
prstena int not null,
introvertno bit,
stilfrizura varchar(36) not null);

create table prijatelj_ostavljena(
sifra int not null primary key auto_increment,
prijatelj int not null,
ostavljena int not null);

create table ostavljena(
sifra int not null primary key auto_increment,
prviputa datetime not null,
kratkamajica varchar(39) not null,
drugiputa datetime,
maraka decimal(14,10));

create table svekrva(
sifra int not null primary key auto_increment,
hlace varchar(48) not null,
suknja varchar(42) not null,
ogrlica int not null,
treciputa datetime not null,
dukserica varchar(32) not null,
narukvica int not null,
punac int);

create table punac(
sifra int not null primary key auto_increment,
ekstrovertno bit not null,
suknja varchar(30) not null,
majica varchar(44) not null,
prviputa datetime not null);

alter table svekrva add foreign key(punac) references punac(sifra);
alter table decko add foreign key(zena) references zena(sifra);
alter table zena add foreign key(brat) references brat(sifra);
alter table brat add foreign key(prijatelj) references prijatelj(sifra);
alter table prijatelj_ostavljena add foreign key(prijatelj) references prijatelj(sifra);
alter table prijatelj_ostavljena add foreign key(ostavljena) references ostavljena(sifra);

insert into prijatelj(prstena,stilfrizura) values (32,'Jež'),(67,'Fudbalerka'),(12,'Šabanka');
insert into ostavljena(prviputa,kratkamajica) values ('2021-04-12','Plava'),('2021-10-21','Žuta'),('2021-06-21','Zelena');
insert into prijatelj_ostavljena(prijatelj,ostavljena) values (1,2),(2,3),(3,1);
insert into brat(nausnica,treciputa,narukvica,prijatelj) values (12,'2022-02-21',21,1),(43,'2022-04-12',45,2),(87,'2021-10-21',54,3);
insert into zena(novcica,narukvica,dukserica,brat) values (324.32,32,'Converse',1),(43534.453,54,'Nike',2),(3422.33,64,'Adidas',3);
insert into punac(ekstrovertno,suknja,majica,prviputa) values (1,'Plava','Zelena','2021-11-11'),(0,'Crvena','Roza','2021-06-12'),(1,'Ljubičasta','Žuta','2021-07-07');
insert into svekrva(hlace,suknja,ogrlica,treciputa,dukserica,narukvica,punac) values ('Dugačke','Prekratka',32,'2021-10-23','Adidas',34,1),('Kratke','Dugačka',12,'2021-11-21','Nike',88,2),
('Traper','Taman',33,'2022-03-03','Converse',65,3);
insert into decko(modelnaocala,nausnica,zena) values ('Ray Ban',32,1),('Police',56,2),('Diesel',21,3);
select * from svekrva;

update svekrva set suknja='Osijek';

select * from decko;

delete from decko where modelnaocala<'AB';







