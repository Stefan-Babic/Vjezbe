use vjezba_7;

select kratkamajica from ostavljen where introvertno is null;

#Prikažite narukvica iz tablice mladic, stilfrizura iz tablice sestra te
#gustoca iz tablice prijateljica uz uvjet da su vrijednosti kolone
#introvertno iz tablice ostavljen poznate te da su vrijednosti kolone
#asocijalno iz tablice zarucnik poznate. Podatke posložite po gustoca iz
#tablice prijateljica silazno. (10)
select a.narukvica, f.stilfrizura, e.gustoca from prijateljica e inner join sestra f on f.prijateljica=e.sifra 
inner join ostavljen d on e.ostavljen=d.sifra 
inner join zarucnik c on d.zarucnik=c.sifra
inner join zarucnik_mladic b on b.zarucnik=c.sifra inner join mladic a on b.mladic=a.sifra
where d.introvertno is not null and c.asocijalno is not null order by e.gustoca desc;


