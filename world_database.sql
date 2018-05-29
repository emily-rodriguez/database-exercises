USE world;

SELECT cl.language AS 'Language',
  cl.percentage AS 'Percentage'
FROM countrylanguage cl
JOIN country c ON cl.CountryCode = c.code
JOIN city ci ON ci.CountryCode = c.code
WHERE ci.name = 'Santa Monica'
ORDER BY Percentage;

SELECT c.region AS 'Region',
  count(c.name) AS 'num_countries'
FROM country c
GROUP BY Region;

SELECT c.region AS 'Region',
  sum(c.population) AS 'population'
FROM country c
GROUP BY Region;

SELECT c.continent AS 'Continent',
  sum(c.population) AS 'population'
FROM country c
GROUP by Continent;

SELECT avg(c.lifeexpectancy) FROM country c

SELECT c.continent AS 'Continent',
  avg(c.lifeexpectancy) AS 'life_expectancy'
FROM country c
GROUP BY Continent;



