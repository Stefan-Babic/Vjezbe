drop database if exists vjezba_12;
create database vjezba_12;
use vjezba_12;

create table decko(
sifra int not null primary key auto_increment,
hlace varchar(46),
asocijalno bit,
stilfrizura varchar(43) not null,
indiferentno bit not null,
ogrlica int,
zena int not null);

create table zena(
sifra int not null primary key auto_increment,
eura decimal(16,6) not null,
indiferentno bit,
novcica decimal(15,5));

create table sestra(
sifra int not null primary key auto_increment,
lipa decimal(15,9),
ogrlica int,
kratkamajica varchar(43) not null);

create table zarucnica_sestra(
sifra int not null primary key auto_increment,
zarucnica int not null,
sestra int not null);

create table zarucnica(
sifra int not null primary key auto_increment,
hlace varchar(48) not null,
kratkamajica varchar(46) not null,
jmbag char(11),
nausnica int);

create table svekrva(
sifra int not null primary key auto_increment,
maraka decimal(14,7),
kuna decimal(15,8),
vesta varchar(44),
asocijalno bit not null,
ekstrovertno bit,
zarucnica int);

create table djevojka(
sifra int not null primary key auto_increment,
modelnaocala varchar(34) not null,
vesta varchar(40) not null,
kratkamajica varchar(39) not null,
suknja varchar(36) not null,
bojaociju varchar(32) not null,
prstena int not null,
svekrva int not null);

create table prijatelj(
sifra int not null primary key auto_increment,
lipa decimal(16,10),
asocijalno bit,
stilfrizura varchar(37),
kuna decimal(14,6),
modelnaocala varchar(38),
djevojka int);

alter table decko add foreign key(zena) references zena(sifra);
alter table zarucnica_sestra add foreign key(sestra) references sestra(sifra);
alter table zarucnica_sestra add foreign key(zarucnica) references zarucnica(sifra);
alter table svekrva add foreign key(zarucnica) references zarucnica(sifra);
alter table djevojka add foreign key(svekrva) references svekrva(sifra);
alter table prijatelj add foreign key(djevojka) references djevojka(sifra);

insert into zarucnica(hlace,kratkamajica) values ('Svečane','Siva'),('ZaPokući','Crna'),('Poderane','Bijela');
insert into sestra(kratkamajica) values ('Zelena'),('Žuta'),('Ljubičasta');
insert into zarucnica_sestra(zarucnica,sestra) values (1,1),(2,2),(3,3);
insert into svekrva(asocijalno) values (1),(0),(1);
insert into djevojka(modelnaocala,vesta,kratkamajica,suknja,bojaociju,prstena,svekrva) values 
('Ray Ban','Pamučna','Bijela','Kratka','Plava',32,1),('Police','Vunena','Crvena','Prekratka','Zelena',67,2),('Diesel','Poderana','Ljubičasta','Provokativna','Smeđa',65,3);
insert into zena(eura) values (234.33),(356.322),(54656.44);
insert into decko(stilfrizura,indiferentno,zena) values ('Mohawk',1,1),('Jež',0,2),('Šabanka',0,3);
insert into prijatelj(asocijalno) values (1),(1),(0);

update decko set asocijalno=0;
select * from decko;

delete from prijatelj where asocijalno=0;
select * from prijatelj;




