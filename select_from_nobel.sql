-- 1. Change the query shown so that it displays Nobel prizes for 1950. 

SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950;

 -- 2. Show who won the 1962 prize for Literature. 

 SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature';

-- 3. Show the year and subject that won 'Albert Einstein' his prize. 

SELECT yr, subject
  FROM nobel
 WHERE winner= 'Albert Einstein';

 -- 4. Give the name of the 'Peace' winners since the year 2000, including 2000. 

 SELECT winner, subject, yr
  FROM nobel
 WHERE subject = 'Peace' AND yr >= 2000;

 -- 5. Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive. 

 SELECT winner, subject, yr
  FROM nobel
 WHERE subject = 'Literature' AND yr BETWEEN 1980 AND 1989;