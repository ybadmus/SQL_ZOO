-- 1. Show the total population of the world.
SELECT SUM(population) FROM world

-- 2. List all the continents - just once each.
select distinct continent from world

-- 3. Give the total GDP of Africa
select SUM(gdp) from world where continent = 'Africa'
