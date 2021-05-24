use vjezba_10;

select kuna from svekrva where carape like '%a%n%a%';

#5. Prikažite maraka iz tablice neprijatelj, indiferentno iz tablice zena
#te lipa iz tablice mladic uz uvjet da su vrijednosti kolone carape iz
#tablice svekrva počinju slovom a te da su vrijednosti kolone eura iz
#tablice punac različite od 22. Podatke posložite po lipa iz tablice
#mladic silazno. (10)
select f.maraka, a.indiferentno, b.lipa from mladic b inner join zena a on a.mladic=b.sifra 
inner join svekrva c on b.svekrva=c.sifra inner join punac d on c.punac=d.sifra 
inner join punac_neprijatelj e on e.punac=d.sifra inner join neprijatelj f on e.neprijatelj=f.sifra where 
c.carape like 'a%' and d.eura!=22 order by b.lipa desc;