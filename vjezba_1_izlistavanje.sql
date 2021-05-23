use vjezba_1;

select * from zena;

select kratkamajica * from zena where hlace='%ana%'

select * from svekar;

select a.dukserica, f.asocijalno, e.hlace from svekar a inner join sestra_svekar b on a.sifra=b.svekar
inner join sestra c on b.sestra=c.sifra inner join zena d on c.sifra=d.sestra inner join muskarac e on d.sifra=e.zena
inner join mladic f on e.sifra=f.muskarac where d.hlace='%a' and c.haljina like'%ba%' order by e.hlace desc;