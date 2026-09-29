SELECT * FROM world.country;
SELECT * FROM world.city;


SELECT * FROM world.country WHERE name="Aruba";
SELECT * FROM world.country WHERE SurfaceArea = 103000; 
SELECT * FROM world.country WHERE Population >279000;
SELECT * FROM world.country WHERE SurfaceArea <= 3000;
SELECT * FROM world.country WHERE Continent = "Asia" and Population > 10000;
SELECT * FROM world.city WHERE CountryCode = 'AFG'; 
SELECT * FROM world.city ORDER BY Population DESC;

SELECT * FROM world.city WHERE District like '%Zuid%';

SELECT CountryCode, COUNT(Name) FROM world.city GROUP BY Name, Continent; 


SELECT DISTINCT Region, Name FROM world.country WHERE Continent ='Europe';

SELECT Name as Citta, Population as Popolazione FROM world.city WHERE CountryCode='USA' and Population > 1000000 order by Population DESC;

SELECT Name, Population from world.country GROUP BY Continent, Population; 

SELECT Continent, COUNT(Name), SUM(Population) AS PopTOT FROM world.country GROUP BY Continent ORDER BY PopTot DESC;

select CountryCode,  from world.city;


SELECT CountryCode, COUNT(Name) as Nr_citta FROM world.city
where Population > 500000;


SELECT CountryCode, COUNT(Name) as Nr_citta, SUM(Population) AS PopTOT
FROM world.city
WHERE Population > 500000
GROUP BY CountryCode;

