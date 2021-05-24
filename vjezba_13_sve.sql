drop database if exists vjezba_13;
create database vjezba_13;
use vjezba_13;

create table mladic(
sifra int not null primary key auto_increment,
drugiputa datetime not null,
carape varchar(48) not null,
ogrlica int,
kratkamajica varchar(42) not null,
introvertno bit not null,
asocijalno bit not null,
ostavljen int);

create table cura(
sifra int not null primary key auto_increment,
ogrlica int,
hlace varchar(42),
vesta varchar(31) not null,
majica varchar(50),
mladic int);

create table ostavljen(
sifra int not null primary key auto_increment,
kratkamajica varchar(34),
drugiputa datetime,
asocijalno bit not null,
stilfrizura varchar(40),
svekrva int not null);

create table svekrva(
sifra int not null primary key auto_increment,
hlace varchar(35),
ogrlica int,
ekstrovertno bit not null,
narukvica int);

create table svekrva_svekar(
sifra int not null primary key auto_increment,
svekrva int not null,
svekar int not null);

create table svekar(
sifra int not null primary key auto_increment,
suknja varchar(40),
stilfrizura varchar(34) not null,
gustoca decimal(15,10) not null,
carape varchar(35) not null);

create table neprijatelj(
sifra int not null primary key auto_increment,
bojakose varchar(32),
novcica decimal(12,6) not null,
prviputa datetime,
indiferentno bit not null,
suknja varchar(44),
jmbag char(11),
muskarac int not null);

create table muskarac(
sifra int not null primary key auto_increment,
dukserica varchar(34),
gustoca decimal(13,10),
haljina varchar(42) not null,
majica varchar(39),
suknja varchar(50) not null,
kuna decimal(17,9) not null);

alter table neprijatelj add foreign key(muskarac) references muskarac(sifra);
alter table cura add foreign key(mladic) references mladic(sifra);
alter table mladic add foreign key(ostavljen) references ostavljen(sifra);
alter table ostavljen add foreign key(svekrva) references svekrva(sifra);
alter table svekrva_svekar add foreign key(svekrva) references svekrva(sifra);
alter table svekrva_svekar add foreign key(svekar) references svekar(sifra);

insert into svekar(stilfrizura,gustoca,carape) values ('Mohawk',32.33,'S Rupom na Palcu'),('Fudbalerka',34.55,'Rupa na Malom'),('Rep',45.44,'Rupa na peti');
insert into svekrva(ekstrovertno) values (0),(1),(1);
insert into svekrva_svekar(svekrva,svekar) values (1,1),(2,2),(3,3);
insert into ostavljen(asocijalno,svekrva) values (0,1),(0,2),(1,3);
insert into mladic(drugiputa,carape,kratkamajica,introvertno,asocijalno) values
('2021-10-11','Crvene','Ljubičasta',0,0),('2022-11-11','Plave','Zelena',1,1),('2021-04-05','Žute','Bijela',1,0);
insert into muskarac(haljina,suknja,kuna) values ('Crvena','Kratka',3445.44),('Roza','Prekratka',334.33),('Ljubičasta','Taman',4564.42);
insert into neprijatelj(novcica,indiferentno,muskarac) values (3245.344,0,1),(23442.33,1,2),(2343.22,0,3);
insert into cura(vesta) values ('Zelena'),('Plava'),('Crvena');

update neprijatelj set novcica=13.77;
select * from neprijatelj;

delete from cura where hlace not like 'AB';
select * from cura;




