use vjezba_11;

select haljina from svekrva where carape like '%a%n%a';

#5. Prikažite drugiputa iz tablice mladic, haljina iz tablice punica te
#prstena iz tablice djevojka uz uvjet da su vrijednosti kolone carape iz
#tablice svekrva počinju slovom a te da su vrijednosti kolone kuna iz
#tablice punac različite od 21. Podatke posložite po prstena iz tablice
#djevojka silazno. (10)
select f.drugiputa, a.haljina, b.prstena from djevojka b inner join punica a on a.djevojka=b.sifra 
inner join svekrva c on b.svekrva=c.sifra inner join punac d on c.punac=d.sifra 
inner join punac_mladic e on e.punac=d.sifra inner join mladic f on e.mladic=f.sifra where c.carape like 'a%' and d.kuna!=21 order by b.prstena desc;