use vjezba_2;

select suknja from cura where drugiputa is null;

#Prikažite novcica iz tablice zarucnica, neprijatelj iz tablice brat te
#haljina iz tablice neprijatelj uz uvjet da su vrijednosti kolone
#drugiputa iz tablice cura poznate te da su vrijednosti kolone vesta iz
#tablice decko sadrže niz znakova ba. Podatke posložite po haljina iz
#tablice neprijatelj silazno. (10)

select f.novcica, a.neprijatelj, b.haljina from neprijatelj b inner join brat a on a.neprijatelj=b.sifra
inner join cura c on  b.cura=c.sifra inner join decko d on c.decko=d.sifra inner join decko_zarucnica e on
e.decko=d.sifra inner join zarucnica f on e.zarucnica=f.sifra where c.drugiputa is not null and d.vesta='%ba%'
order by b.haljina desc;