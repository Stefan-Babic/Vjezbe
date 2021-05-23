drop database if exists vjezba_8;
create database vjezba_8;
use vjezba_8;

create table prijateljica(
sifra int not null primary key auto_increment,
vesta varchar(50),
nausnica int not null,
introvertno bit not null);

create table cura(
sifra int not null primary key auto_increment,
nausnica int not null,
indiferentno bit,
ogrlica int not null,
gustoca decimal(12,6),
drugiputa datetime,
vesta varchar(33),
prijateljica int);

create table brat(
sifra int not null primary key auto_increment,
introvertno bit,
novcica decimal(14,7) not null,
treciputa datetime,
neprijatelj int);

create table neprijatelj(
sifra int not null primary key auto_increment,
kratkamajica varchar(44),
introvertno bit,
indiferentno bit,
ogrlica int not null,
becar int not null);

create table becar(
sifra int not null primary key auto_increment,
eura decimal(15,10) not null,
treciputa datetime,
prviputa datetime,
muskarac int not null);

create table muskarac(
sifra int not null primary key auto_increment,
haljina varchar(47),
drugiputa datetime not null,
treciputa datetime);

create table muskarac_decko(
sifra int not null primary key auto_increment,
muskarac int not null,
decko int not null);

create table decko(
sifra int not null primary key auto_increment,
kuna decimal(12,10),
lipa decimal(17,10),
bojakose varchar(44),
treciputa datetime not null,
ogrlica int not null,
ekstrovertno bit not null);

alter table cura add foreign key(prijateljica) references prijateljica(sifra);
alter table brat add foreign key(neprijatelj) references neprijatelj(sifra);
alter table neprijatelj add foreign key(becar) references becar(sifra);
alter table becar add foreign key(muskarac) references muskarac(sifra);
alter table muskarac_decko add foreign key(muskarac) references muskarac(sifra);
alter table muskarac_decko add foreign key(decko) references decko(sifra);

insert into muskarac(drugiputa) values ('2021-10-12'),('2021-12-31'),('2021-08-08');
insert into decko(treciputa,ogrlica,ekstrovertno) values ('2021-04-21',21,1),('2021-05-06',33,0),('2021-07-07',76,1);
insert into muskarac_decko(muskarac,decko) values (1,3),(2,1),(3,2);
insert into becar(eura,muskarac) values (355.33,1),(221.33,2),(5463.35,3);
insert into neprijatelj(ogrlica,becar) values (32,1),(54,2),(75,3);
insert into cura(nausnica,ogrlica) values (21,45),(67,32),(76,23);
insert into brat(novcica) values (12.75),(32.45),(56.32);

update cura set indiferentno=false;

select * from cura;

delete from brat where novcica!=12.75;

select * from brat;

