CREATE DATABASE football_stats_analytics

USE football_stats_analytics

-- 1. Total Number of Teams
SELECT COUNT(DISTINCT Teams) AS TotalTeams
FROM latest_football_players;

-- 2. Total Number of Players
SELECT COUNT(DISTINCT Players) AS TotalPlayers
FROM latest_football_players;

-- 3. Average Goals per Player
SELECT Players, AVG(Goals) AS AvgGoals
FROM latest_football_players
GROUP BY Players;

-- 4. Average Assists per Player
SELECT Players, AVG(Assists) AS AvgAssists
FROM latest_football_players
GROUP BY Players;

-- 5. Total Matches per Team
SELECT Teams, SUM(Matches) AS TotalMatches
FROM latest_football_players
GROUP BY Teams;

-- 6. Total Goals per Team
SELECT Teams, SUM(Goals) AS TotalGoals
FROM latest_football_players
GROUP BY Teams;

-- 7. Total Assists per Team
SELECT Teams, SUM(Assists) AS TotalAssists
FROM latest_football_players
GROUP BY Teams;

-- 8. Top 10 Players by Goals
SELECT Players, SUM(Goals) AS TotalGoals
FROM latest_football_players
GROUP BY Players
ORDER BY TotalGoals DESC
LIMIT 10;

-- 9. Top 10 Players by Assists
SELECT Players, SUM(Assists) AS TotalAssists
FROM latest_football_players
GROUP BY Players
ORDER BY TotalAssists DESC
LIMIT 10;

-- 10. Average Rating per Team
SELECT Teams, AVG(Seasons_Ratings) AS AvgRating
FROM latest_football_players
GROUP BY Teams;

-- 11. Goals per Match for Each Player
SELECT Players, SUM(Goals) / NULLIF(SUM(Matches), 0) AS GoalsPerMatch
FROM latest_football_players
GROUP BY Players;

-- 12. Assists per Match for Each Player
SELECT Players, SUM(Assists) / NULLIF(SUM(Matches), 0) AS AssistsPerMatch
FROM latest_football_players
GROUP BY Players;

-- 13. Average Goals per Season
SELECT Seasons, AVG(Goals) AS AvgGoals
FROM latest_football_players
GROUP BY Seasons;

-- 14. Average Assists per Season
SELECT Seasons, AVG(Assists) AS AvgAssists
FROM latest_football_players
GROUP BY Seasons;

-- 15. Performance Trend Over Seasons
SELECT Seasons, SUM(Goals) AS TotalGoals, SUM(Assists) AS TotalAssists
FROM latest_football_players
GROUP BY Seasons
ORDER BY Seasons;

-- 16. Top 5 Teams by Average Rating
SELECT Teams, AVG(Seasons_Ratings) AS AvgRating
FROM latest_football_players
GROUP BY Teams
ORDER BY AvgRating DESC
LIMIT 5;

-- 17. Player Performance by Team
SELECT Teams, Players, SUM(Goals) AS TotalGoals, SUM(Assists) AS TotalAssists
FROM latest_football_players
GROUP BY Teams, Players;

-- 18. Season with Highest Goals
SELECT Seasons, SUM(Goals) AS TotalGoals
FROM latest_football_players
GROUP BY Seasons
ORDER BY TotalGoals DESC
LIMIT 1;

-- 19. Season with Highest Assists
SELECT Seasons, SUM(Assists) AS TotalAssists
FROM latest_football_players
GROUP BY Seasons
ORDER BY TotalAssists DESC
LIMIT 1;

-- 20. Player Performance by Season and Team
SELECT Teams, Seasons, Players, SUM(Goals) AS TotalGoals, SUM(Assists) AS TotalAssists
FROM latest_football_players
GROUP BY Teams, Seasons, Players;

-- 21. Impact of Goals and Assists on Ratings
SELECT Players, AVG(Seasons_Ratings) AS AvgRating, SUM(Goals) AS TotalGoals, SUM(Assists) AS TotalAssists
FROM latest_football_players
GROUP BY Players;

-- 22. Top 5 Players by Overall Performance
SELECT Players, SUM(Goals) + SUM(Assists) AS OverallPerformance
FROM latest_football_players
GROUP BY Players
ORDER BY OverallPerformance DESC
LIMIT 5;

-- 23. Team Performance Over Time
SELECT Teams, Seasons, SUM(Goals) AS TotalGoals, SUM(Assists) AS TotalAssists
FROM latest_football_players
GROUP BY Teams, Seasons
ORDER BY Teams, Seasons;

-- 24. Player Performance Consistency
SELECT Players, COUNT(DISTINCT Seasons) AS SeasonsCount, AVG(Goals) AS AvgGoals, AVG(Assists) AS AvgAssists
FROM latest_football_players
GROUP BY Players
HAVING COUNT(DISTINCT Seasons) > 1;

-- 25. Comparative Analysis of Top Teams
SELECT Teams, AVG(Goals) AS AvgGoals, AVG(Assists) AS AvgAssists, AVG(Seasons_Ratings) AS AvgRating
FROM latest_football_players
GROUP BY Teams
ORDER BY AvgGoals DESC
LIMIT 5;

-- 26. Seasonal Impact Analysis
SELECT Seasons, AVG(Goals) AS AvgGoals, AVG(Assists) AS AvgAssists
FROM latest_football_players
GROUP BY Seasons;

-- 27. Performance Impact of Team Changes
SELECT Teams, Players, AVG(Goals) AS AvgGoals, AVG(Assists) AS AvgAssists
FROM latest_football_players
GROUP BY Teams, Players;

-- 28. Player Impact on Team Success
SELECT Teams, Players, SUM(Goals) AS TotalGoals, SUM(Assists) AS TotalAssists
FROM latest_football_players
GROUP BY Teams, Players
ORDER BY TotalGoals + TotalAssists DESC;
