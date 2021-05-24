use vjezba_9;

select carape from cura where ekstrovertno is null;

#Prikažite kuna iz tablice prijateljica, nausnica iz tablice zarucnik te
#ekstroventno iz tablice brat uz uvjet da su vrijednosti kolone
#ekstroventno iz tablice cura poznate te da su vrijednosti kolone
#modelnaocala iz tablice punac sadrže niz znakova ba. Podatke
#posložite po ekstroventno iz tablice brat silazno. (10)

select a.kuna, f.nausnica, e.ekstrovertno from brat e inner join zarucnik f on f.brat=e.sifra 
inner join cura d on e.cura=d.sifra inner join punac c on d.punac=c.sifra 
inner join punac_prijateljica b on b.punac=c.sifra inner join prijateljica a on b.prijateljica=a.sifra where d.ekstrovertno is not null and 
c.modelnaocala like '%ba%' order by e.ekstrovertno desc;