use vjezba_3;
select majica from ostavljena where not lipa=9 or lipa=10 or lipa=20 or lipa=30 or lipa=35;
 
#5. Prikažite ekstroventno iz tablice brat, vesta iz tablice punica te
#kuna iz tablice snasa uz uvjet da su vrijednosti kolone lipa iz tablice
#ostavljena različito od 91 te da su vrijednosti kolone haljina iz tablice
#prijatelj sadrže niz znakova ba. Podatke posložite po kuna iz tablice
#snasa silazno. (10)

select a.ekstrovertno, f.vesta, e.kuna from snasa e inner join punica f on f.snasa=e.sifra inner join
ostavljena d on e.ostavljena=d.sifra inner join prijatelj c on d.prijatelj=c.sifra inner join prijatelj_brat b on
b.prijatelj=c.sifra inner join brat a on b.brat=a.sifra where c.haljina like '%ba%' order by e.kuna desc;