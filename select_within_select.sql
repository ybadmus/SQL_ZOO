-- 1. List each country name where the population is larger than that of 'Russia'. 

SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia');

-- 2. Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.

SELECT name
 FROM world 
WHERE continent = 'Europe' AND gdp/population > (SELECT gdp/population
               FROM world 
               WHERE name = 'United Kingdom');

-- 3. List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.

SELECT name, continent 
 FROM world 
WHERE continent IN (SELECT continent FROM world 
 WHERE name IN ('Argentina', 'Australia')) ORDER BY name;

-- 4. Which country has a population that is more than Canada but less than Poland

SELECT name 
 FROM world 
WHERE 
  (SELECT population FROM world WHERE name = 'Canada') > 
  (SELECT population FROM world WHERE name = 'Poland');

-- 5. Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany.

SELECT name, CONCAT(ROUND(population/(SELECT population FROM world WHERE name = 'Germany')*100), '%') AS percentage 
 FROM world 
WHERE continent = 'Europe'; 

-- 6. Which countries have a GDP greater than every country in Europe

SELECT name
 FROM world
WHERE gdp > 
  ALL(SELECT gdp FROM world WHERE continent = 'Europe' AND gdp IS NOT NULL);

-- 7. Find the largest country (by area) in each continent, show the continent, the name and the area

SELECT continent, name, area 
 FROM world wor 
WHERE area >= 
  ALL (SELECT area FROM world worl WHERE wor.continent = worl.continent AND area > 0);

-- 8. List each continent and the name of the country that comes first alphabetically.

SELECT continent, name 
 FROM world wor
WHERE name <= 
  ALL (SELECT name FROM world worl WHERE wor.continent = worl.continent ORDER BY name);