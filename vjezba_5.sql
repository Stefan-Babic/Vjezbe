drop database if exists vjezba_5;
create database vjezba_5;
use vjezba_5;

create table mladic(
sifra int not null primary key auto_increment,
kratkamajica varchar(48) not null,
haljina varchar(30) not null,
asocijalno bit,
zarucnik int);

create table zarucnik(
sifra int not null primary key auto_increment,
jmbag char(11),
lipa decimal(12,8),
indiferentno bit not null);

create table ostavljena(
sifra int not null primary key auto_increment,
majica varchar(33),
ogrlica int not null,
carape varchar(44),
stilfrizura varchar(42),
punica int not null);

create table punica(
sifra int not null primary key auto_increment,
hlace varchar(43) not null,
nausnica int not null,
ogrlica int,
vesta varchar(49) not null,
modelnaocala varchar(31) not null,
treciputa datetime not null,
punac int not null);

create table punac(
sifra int not null primary key auto_increment,
dukserica varchar(33),
prviputa datetime not null,
majica varchar(36),
svekar int not null);

create table svekar(
sifra int not null primary key auto_increment,
bojakose varchar(33), 
majica varchar(31),
carape varchar(31) not null,
haljina varchar(43),
narukvica int,
eura decimal(14,5) not null);

create table svekar_cura(
sifra int not null primary key auto_increment,
svekar int not null,
cura int not null);

create table cura(
sifra int not null primary key auto_increment,
carape varchar(41) not null,
maraka decimal(17,10) not null,
asocijalno bit,
vesta varchar(41) not null);

alter table mladic add foreign key(zarucnik) references zarucnik(sifra);
alter table ostavljena add foreign key(punica) references punica(sifra);
alter table punica add foreign key(punac) references punac(sifra);
alter table punac add foreign key(svekar) references svekar(sifra);
alter table svekar_cura add foreign key(svekar) references svekar(sifra);
alter table svekar_cura add foreign key(cura) references cura(sifra);


insert into svekar(majica,carape,eura) values ('Urban','Probušene',350.33),('Sport','Treći dan',32.33),('Plava','Najlonke',222.22);
insert into cura(carape,maraka,asocijalno,vesta) values ('Probušene',32.10010,0,'Pamučna'),('Čitave',456.444,0,'Prozirna'),('Neoprane',3322.444,1,'Na bretele');
insert into svekar_cura(svekar,cura) values (1,3),(2,2),(3,1);
insert into punac(dukserica,prviputa,majica,svekar) values ('Nike','2020-03-05','Nike',1),('Adidas','2020-12-12','Adidas',2),
('Converse','2021-02-04','Converse',3);
insert into punica(hlace,nausnica,vesta,modelnaocala,treciputa,punac) values ('Dugačke',32,'Siva','Police','2021-11-21',1),
('Kratke',12,'Bijela','Diesel','2021-10-10',2),('Svečane',56,'Crna','Ray Ban','2022-04-03',3);
insert into mladic(kratkamajica,haljina) values ('Bijela','Crna'),('Siva','Crvena'),('Crna','Roza');
insert into ostavljena(ogrlica,punica) values (17,1),(24,2),(11,3);

update mladic set haljina='Osijek';

select * from mladic;

delete from ostavljena where ogrlica=17;

select * from ostavljena;
