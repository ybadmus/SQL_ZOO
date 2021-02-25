-- 1. Show the total population of the world.
SELECT SUM(population) 
 FROM world;

-- 2. List all the continents - just once each.
select distinct continent FROM world;

-- 3. Give the total GDP of Africa
select SUM(gdp) FROM world WHERE continent = 'Africa'

-- 4. How many countries have an area of at least 1000000
select count(name) FROM world WHERE area >= 1000000;

-- 5. What is the total population of ('Estonia', 'Latvia', 'Lithuania')
select sum(population) FROM world WHERE name in ('Estonia', 'Latvia', 'Lithuania')

-- 6. For each continent show the continent and number of countries.
select continent, count(name) FROM world group by continent;

-- 7. For each continent show the continent and number of countries with populations of at least 10 million.
select continent, count(name) FROM world WHERE population >= 10000000 group by continent;

-- 8. List the continents that have a total population of at least 100 million.
select distinct continent FROM world x WHERE 100000000 <= (select sum(population) FROM world y WHERE x.continent = y.continent);