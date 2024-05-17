
-- 1. vaicājums(Izvada dalibniekus, kuri nav pilngadīgi)

select vards, uzvards, dzimsanasGads
from dalibnieki
where year(current_date()) - dzimsanasGads < 18;

-- 2. vaicājums(Izvada dalībniekus ar vienādiem vārdiem)

select vards, uzvards
from dalibnieki
where vards in (
    select vards
    from dalibnieki
    group by vards
    having count(*) > 1);
    
-- 3. vaicājums(Izvada datus no sacensību tabulas par vadītājiem un žūrijas epastiem, kas satur @inbox.lv)

select vards, uzvards, epasts 
from zurija
join sacensibas on zurija.id_zurija = sacensibas.id_zurija
where epasts like '%@inbox.lv%'
union
select vards, uzvards, epasts 
from vaditajs
join sacensibas on vaditajs.id_vaditajs = sacensibas.id_vaditajs
where epasts like '%@inbox.lv%';

-- 4. vaicājums(Izvada pirmās spēles sākuma laiku un pēdējās spēles beigu laiku un aprēķina cik stundas kopā iet pasākums)

select
	(select MIN(sakums) from sacensibas) as Sakums,
    (select MAX(beigas) from sacensibas) as Beigas,
    timestampdiff(hour, (select min(sakums) from sacensibas),
    (select max(beigas) from sacensibas)) as ilgums;
  
-- 5. vaicājums(Izvada visus dalībniekus, kuri saņēmuši vietu divas vai vairāk reizes)

select d.vards, d.uzvards, r.id_dalibnieki, group_concat(r.vieta) as visasVietas
from dalibnieki d
join rezultati r on d.id_dalibnieki = r.id_dalibnieki
where r.vieta != 0
group by r.id_dalibnieki
having count(distinct r.vieta) >= 2;

-- 6. vaicājums(Izvada uzvarētāju pēc kopējā punktu skaita)

select d.id_dalibnieki, d.vards,d.uzvards,sum(r.punkti) as punkti
from rezultati r
join dalibnieki d on r.id_dalibnieki =d.id_dalibnieki
group by d.id_dalibnieki, d.vards, d.uzvards
order by punkti desc
limit 1;

-- 7. vaicājums(Izvada pirmās vietas ieguvējus,kas dzimuši 2002. gadā)

select dalibnieki.vards, dalibnieki.uzvards, dalibnieki.dzimsanasGads
from rezultati
join dalibnieki on rezultati.id_dalibnieki=dalibnieki.id_dalibnieki
join sacensibas on rezultati.id_sacensibas =sacensibas.id_sacensibas
where rezultati.vieta=1 and dalibnieki.dzimsanasGads=2005;

-- 8. vaicājums(Izvada dalibnieku kam ir uzslava un vissmazāk punktu)

select dalibnieki.id_dalibnieki, dalibnieki.vards,
dalibnieki.uzvards, rezultati.punkti, rezultati.uzslavas
from rezultati
join dalibnieki on rezultati.id_dalibnieki = dalibnieki.id_dalibnieki
where rezultati.uzslavas !=''
order by rezultati.punkti asc
limit 1;

-- 9.vaicājums(Izvada dalibniekus, kuri nav guvuši uzslavu un ir jaunāki par 23 gadiem)

select id_dalibnieki, vards, uzvards, dzimsanasGads
from dalibnieki
where dzimsanasgads>year(current_date())-23 and id_dalibnieki 
not in(select id_dalibnieki from rezultati where uzslavas !='');

-- 10. vaicājums(Izvada dalibniekus, kuriem ir vismaz 2 rezultāti ar vienādu vietu un vismaz vien uzslava)

select d.id_dalibnieki, d.vards, d.uzvards, r1.vieta, r1.uzslavas,r2.vieta,r2.uzslavas
from dalibnieki d
join rezultati r1 on d.id_dalibnieki = r1.id_dalibnieki
join rezultati r2 on d.id_dalibnieki = r2.id_dalibnieki
where r1.uzslavas != '' and r1.id_rezultati < r2.id_rezultati and r1.vieta = r2.vieta;

-- 11. vaicājums(Izvada dalībniekus, kas ieguvuši divas vietas, bet nevienu uzslavu)

select d.id_dalibnieki, d.vards, d.uzvards, count(r.id_rezultati) as vietuSkaits,
group_concat(r.vieta order by r.vieta) as visasVietas
from dalibnieki d
join rezultati r on d.id_dalibnieki = r.id_dalibnieki
group by d.id_dalibnieki, d.vards, d.uzvards
having vietuSkaits >= 2 and count(r.uzslavas) = 0;

-- 12.vaicājums(Izvada visus dalībniekus, kas ieguvuši vietu spēlē NBA 2k23)

select d.vards, d.uzvards, r.vieta, sp.nosaukums as spelesNosaukums
from dalibnieki d
join rezultati r on d.id_dalibnieki = r.id_dalibnieki
join sacensibas s on r.id_sacensibas = s.id_sacensibas
join speles sp on s.id_speles = sp.id_speles
where sp.nosaukums ='NBA 2k23'
order by sp.nosaukums, r.vieta;
