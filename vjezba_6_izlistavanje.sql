use vjezba_6;

select narukvica from brat where treciputa is null;

#Prikažite drugiputa iz tablice ostavljena, zena iz tablice decko te
#narukvica iz tablice zena uz uvjet da su vrijednosti kolone treciputa iz
#tablice brat poznate te da su vrijednosti kolone prstena iz tablice
#prijatelj jednake broju 219. Podatke posložite po narukvica iz tablice
#zena silazno. (10)

select f.drugiputa, a.zena, b.narukvica from zena b inner join decko a on a.zena=b.sifra 
inner join brat c on b.brat=c.sifra inner join prijatelj d on c.prijatelj=d.sifra inner join 
prijatelj_ostavljena e on e.prijatelj=d.sifra inner join ostavljena f on e.ostavljena=f.sifra where c.treciputa is not null
and d.prstena=219 order by b.narukvica desc;