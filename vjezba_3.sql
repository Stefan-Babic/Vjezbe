drop database if exists vjezba_3;
create database vjezba_3;
use vjezba_3;

create table svekar(
sifra int not null primary key auto_increment,
novcica decimal(16,8) not null,
suknja varchar(44) not null,
bojakose varchar(36),
prstena int,
narukvica int not null,
cura int not null);

create table cura(
sifra int not null primary key auto_increment,
dukserica varchar(49),
maraka decimal(13,7),
drugiputa datetime,
majica varchar(49),
novcica decimal(15,8),
ogrlica int not null);

create table snasa(
sifra int not null primary key auto_increment,
introvertno bit,
kuna decimal(15,6) not null,
eura decimal(12,9) not null,
treciputa datetime,
ostavljena int not null);

create table punica(
sifra int not null primary key auto_increment,
asocijalno bit,
kratkamajica varchar(44),
kuna decimal(13,8) not null,
vesta varchar(32) not null,
snasa int);

create table ostavljena(
sifra int not null primary key auto_increment,
kuna decimal(17,5),
lipa decimal(15,6),
majica varchar(36),
modelnaocala varchar(31) not null,
prijatelj int);

create table prijatelj(
sifra int not null primary key auto_increment,
kuna decimal(16,10),
haljina varchar(37),
lipa decimal(13,10),
dukserica varchar(31),
indiferentno bit not null);

create table prijatelj_brat(
sifra int not null primary key auto_increment,
prijatelj int not null,
brat int not null);

create table brat(
sifra int not null primary key auto_increment,
jmbag char(11),
ogrlica int not null,
ekstrovertno bit not null);

alter table svekar add foreign key(cura) references cura(sifra);
alter table punica add foreign key(snasa) references snasa(sifra);
alter table snasa add foreign key(ostavljena) references ostavljena(sifra);
alter table ostavljena add foreign key(prijatelj) references prijatelj(sifra);
alter table prijatelj_brat add foreign key(prijatelj) references prijatelj(sifra);
alter table prijatelj_brat add foreign key(brat) references brat(sifra);


insert into brat(ogrlica,ekstrovertno) values (12,1),(7,0),(56,1);
insert into prijatelj(indiferentno) values (0),(1),(0);
insert into ostavljena(majica,modelnaocala,prijatelj) values ('Kratka','Diesel',1),('Dugačka','Police',2),('Taman','Ray Ban',3);
insert into prijatelj_brat(prijatelj,brat) values (1,3),(2,2),(3,1);
insert into snasa(kuna,eura,ostavljena) values (321.54,53.22,1),(5434.54,32.32,2),(456.32,34.67,3);
insert into cura(majica,ogrlica) values ('Zelena',32),('Crvena',12),('Roza',43);
insert into svekar(novcica,suknja,narukvica,cura) values (432.21,'Zelena',32,1),(8756.44,'Plava',43,2),(32.21,'Crvena',13,3);
insert into punica(kratkamajica,kuna,vesta,snasa) values ('AB',32.33,'Vunena',1),('Dobra',4354.32,'Pamučna',2),('Viteški Oklop',4342.65,'Kožna',3);

update svekar set suknja='Osijek';

select * from svekar;

delete from punica where kratkamajica='AB';

select * from punica;


