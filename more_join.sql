
-- 1. List the films where the yr is 1962 [Show id, title]
SELECT id, title FROM movie WHERE yr = 1962;

-- 2. Give year of 'Citizen Kane'.
SELECT yr FROM movie WHERE title = 'Citizen Kane';

-- 3. List all of the Star Trek movies, include the id, title and yr (all of these movies include the words Star Trek in the title). Order results by year.
SELECT id, title, yr FROM movie WHERE title LIKE 'Star Trek%' ORDER BY yr;

-- 4. What id number does the actor 'Glenn Close' have?
SELECT id FROM actor WHERE name = 'Glenn Close';

-- 5. What is the id of the film 'Casablanca'
SELECT id FROM movie WHERE title = 'Casablanca';

-- 6. Obtain the cast list for 'Casablanca'.
SELECT actor.name FROM actor JOIN casting ON casting.actorid = actor.id WHERE movieid = 11768;