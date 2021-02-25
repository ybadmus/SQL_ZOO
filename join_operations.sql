-- 1. Modify it to show the matchid and player name for all goals scored by Germany. To identify German players, check for: teamid = 'GER'
SELECT matchid, player FROM goal WHERE teamid LIKE 'GER';

-- 2. Show id, stadium, team1, team2 for just game 1012
SELECT id, stadium, team1, team2 FROM game WHERE id = 1012;

-- 3. Modify it to show the player, teamid, stadium and mdate for every German goal.
SELECT player, teamid, stadium, mdate FROM game JOIN goal ON (matchid=id) WHERE teamid='GER';