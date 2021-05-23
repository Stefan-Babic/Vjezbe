use vjezba_5;

select majica from punac where prviputa is null;

#Prikažite asocijalno iz tablice cura, stilfrizura iz tablice ostavljena te
#nausnica iz tablice punica uz uvjet da su vrijednosti kolone prviputa iz
#tablice punac poznate te da su vrijednosti kolone majica iz tablice
#svekar sadrže niz znakova ba. Podatke posložite po nausnica iz tablice
#punica silazno. (10)
select f.asocijalno, a.stilfrizura, b.nausnica from punica b inner join  ostavljena a on a.punica=b.sifra 
inner join punac c on b.punac=c.sifra inner join svekar d on b.punac=d.sifra inner join svekar_cura e on e.svekar=d.sifra 
inner join cura f on e.cura=f.sifra where c.prviputa is not null and d.majica like '%ba%' order by b.nausnica desc;

