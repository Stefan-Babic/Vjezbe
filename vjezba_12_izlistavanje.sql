use vjezba_12;

select vesta from svekrva where not kuna=8 or kuna=13 or kuna=20 or kuna=28 or kuna=35;

#Prikažite kratkamajica iz tablice sestra, kuna iz tablice prijatelj te
#vesta iz tablice djevojka uz uvjet da su vrijednosti kolone kuna iz
#tablice svekrva veće od 87 te da su vrijednosti kolone kratkamajica iz
#tablice zarucnica sadrže niz znakova ba. Podatke posložite po vesta iz
#tablice djevojka silazno. (10)
 select a.kratkamajica, f.kuna, e.vesta from djevojka e inner join prijatelj f on f.djevojka=e.sifra 
 inner join svekrva d on e.svekrva=d.sifra inner join zarucnica c on d.zarucnica=c.sifra inner join 
 zarucnica_sestra b on b.zarucnica=c.sifra inner join sestra a on b.sestra=a.sifra where d.kuna>87 and 
 c.kratkamajica like '%ba&' order by e.vesta desc;