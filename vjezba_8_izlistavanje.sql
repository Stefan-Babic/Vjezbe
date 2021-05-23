use vjezba_8;

select prviputa from becar where treciputa is null;

#Prikažite bojakose iz tablice decko, neprijatelj iz tablice brat te
#introvertno iz tablice neprijatelj uz uvjet da su vrijednosti kolone
#treciputa iz tablice becar poznate te da su vrijednosti kolone
#drugiputa iz tablice muskarac poznate. Podatke posložite po
#introvertno iz tablice neprijatelj silazno.
select f.bojakose, a.neprijatelj, b.introvertno from neprijatelj b inner join brat a on a.neprijatelj=b.sifra 
inner join becar c on b.becar=c.sifra inner join muskarac d on c.muskarac=d.sifra inner join muskarac_decko e on e.muskarac=d.sifra 
inner join decko f on e.decko=f.sifra where c.treciputa is not null and d.drugiputa is not null order by b.introvertno desc;