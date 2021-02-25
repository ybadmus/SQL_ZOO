-- 1. How many stops are in the database.
SELECT COUNT(stops.id) FROM stops;

-- 2. Find the id value for the stop 'Craiglockhart'
SELECT stops.id FROM stops WHERE stops.name = 'Craiglockhart';

-- 3. Give the id and the name for the stops on the '4' 'LRT' service.
SELECT stops.id, stops.name FROM stops, route WHERE stops.id = route.stop AND route.company = 'LRT' AND route.num = '4';