/*Scrivere una query SQL che calcoli ed estragga in un'unica riga le seguenti statistiche demografiche sulle città:
1. Il numero complessivo di città individuate con alias NumeroCitta.
2. La popolazione minima registrata con alias PopolazioneMinima.
3. La popolazione massima registrata con alias PopolazioneMassima.
4. La popolazione media delle città considerate, arrotondata all'intero più vicino con alias PopolazioneMedia.
Condizioni di filtro obbligatorie:
• Considerare solo le città situate in Italia, Spagna o Francia (CountryCode IN ('ITA', 'ESP', 'FRA')).
• E il cui distretto/regione (District) inizia con la lettera 'M' (usare l'operatore LIKE).
*/

USE world;

SELECT 
Count(*) AS NumeroCitta, 
min(population) AS PopolazioneMinima,
max(population) AS PopolazioneMassima,
round(avg(population),0) AS PopolazioneMedia,
name, district
FROM city
WHERE 
CountryCode IN ('ITA','ESP','FRA') AND
District LIKE 'M%'
group by name, district;


/*
Considera le due tabelle collegate da chiave esterna:
 city 
 country 
 collegate tramite la relazione city.CountryCode = country.Code.   
 
 Richiesta:
 Scrivere una query SQL che colleghi le tabelle con una INNER JOIN e mostri:   
 1) Il nome della città (city.Name) con alias NomeCitta,
 2) Il nome della nazione (country.Name) con alias NomeNazione,
 3) Il continente (country.Continent),
 4) La popolazione della città (city.Population) con alias PopolazioneCitta.

----Condizioni di filtro e ordinamento:   
 A) Considerare solo le nazioni appartenenti al continente europeo ('Europe').
 B) Considerare unicamente le città con più di 1.000.000 di abitanti (population > 100000)
 C) Ordinare i record in ordine decrescente di popolazione cittadina (dalla metropoli più popolosa a scendere).
 D) Limitare l'output visualizzando esclusivamente le prime 5 città. (limit 5)
*/

USE world;

SELECT 
ci.Name AS NomeCitta,  
co.Name AS NomeNazione, 
co.Continent AS Continente,
ci.population AS PopolazioneCitta
FROM city ci
INNER JOIN country co 
ON ci.CountryCode = co.Code
WHERE
co.Continent = 'Europe' and
ci.population > 1000000
order by ci.population desc
limit 5;


/*
  country 
   city
collegate tramite country.Code = city.CountryCode.   Nel database world vi sono alcuni territori o microstati (come l'Antartide o piccole isole) per i quali non risulta censita alcuna città nella tabella city.   
Richiesta:
   Scrivere una query SQL che utilizzi una LEFT JOIN per trovare tutti i paesi del mondo che NON hanno alcuna città registrata nella tabella city.
   La query deve:   
   
Mostrare il codice dello stato (co.Code) con alias CodiceStato, il nome dello stato (co.Name) con alias NomeStato e il Continent con alias Continente.
   
Filtrare estraendo solo ed esclusivamente gli stati che non hanno alcuna corrispondenza nella tabella city (condizione con valore NULL).
*/

use world;

SELECT 
co.code AS CodiceStato, 
co.name AS NomeStato,
co.Continent AS Continente
FROM country co
LEFT JOIN
city ci 
on co.code = ci.CountryCode
where 
ci.name is null
order by co.name ASC;



