use vjezba_4;

select haljina from snasa where treciputa is null;

#5. Prikažite nausnica iz tablice mladic, jmbag iz tablice prijatelj te
#kratkamajica iz tablice becar uz uvjet da su vrijednosti kolone
#treciputa iz tablice snasa poznate te da su vrijednosti kolone lipa iz
#tablice zena različite od 29. Podatke posložite po kratkamajica iz
#tablice becar silazno. (10)
select f.nausnica, a.jmbag, b.kratkamajica from becar b inner join prijatelj a on a.becar=b.sifra 
inner join snasa c on b.snasa=c.sifra inner join zena d on c.zena=d.sifra
inner join zena_mladic e on e.zena=d.sifra inner join mladic f on e.mladic=f.sifra where c.treciputa is not null and d.lipa!=29
order by b.kratkamajica desc;