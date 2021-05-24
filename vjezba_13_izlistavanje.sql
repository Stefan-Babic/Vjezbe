use vjezba_13;

select asocijalno from ostavljen where drugiputa is null;

#Prikažite gustoca iz tablice svekar, majica iz tablice cura te carape
#iz tablice mladic uz uvjet da su vrijednosti kolone drugiputa iz tablice
#ostavljen poznate te da su vrijednosti kolone ogrlica iz tablice svekrva
#jednake broju 193. Podatke posložite po carape iz tablice mladic
#silazno. (10)

select f.gustoca, a.majica, b.carape from mladic b inner join cura a on a.mladic=b.sifra 
inner join ostavljen c on b.ostavljen=c.sifra inner join svekrva d on c.svekrva=d.sifra 
inner join svekrva_svekar e on e.svekrva=d.sifra inner join svekar f on e.svekar=f.sifra where 
c.drugiputa is not null and d.ogrlica=193 order by b.carape desc;


#vrijeme utrošeno na zadatak : 24 min i 58 sec.