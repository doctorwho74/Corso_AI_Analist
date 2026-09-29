
SELECT * FROM world.country;

-- Conta quante città del database world hanno una popolazione compresa 
-- tra 500.000 e 1.000.000 di abitanti e mostra solo quelle appartenenti 
-- all’Italia in ordine ascendente

SELECT COUNT(*) FROM world.city
WHERE Population BETWEEN 50000 AND 100000 
AND CountryCode ='ITA'
ORDER BY Population ASC;

-- Sul database world conta il numero totale delle nazioni presenti nel database 
-- e calcola la somma totale della loro popolazione 

SELECT COUNT(Countrycode) as Tutti, SUM(Population) as Popo
FROM world.city;


-- Conta quante nazioni appartengono ai 
-- continenti Asia, North America e South America e raggruppale in base alla loro forma di governo.

SELECT COUNT(GovernmentForm), Name, GovernmentForm
FROM world.country
WHERE Code IN ('AFG','AIA','ARG')
GROUP BY GovernmentForm, name;