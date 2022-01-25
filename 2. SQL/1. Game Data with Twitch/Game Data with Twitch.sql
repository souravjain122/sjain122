-- Top 20 Streamers
SELECT TOP 20 *
FROM stream;

-- Unique Games
SELECT DISTINCT Game
FROM stream;

-- Unique Streamers on Twitch
SELECT DISTINCT Player
FROM stream;

-- Popularity of different games (Games and their viewers)
SELECT Game, COUNT(*) AS number_of_viewers
FROM stream
GROUP BY Game
ORDER BY COUNT(*) DESC;

-- League of Legends viewers location
SELECT Country, COUNT(*) AS number_of_viewers
FROM stream
WHERE Game = 'League of Legends'
GROUP BY Country
ORDER BY COUNT(*) DESC;

-- Device Popularity (DeviceType and Number of Streamers)
SELECT DeviceType AS Source, COUNT(*) AS number_of_streamers
FROM stream
GROUP BY DeviceType
ORDER BY COUNT(*) DESC;

-- Add new column "Genre"
SELECT Game, 
  CASE
    WHEN Game = 'League of Legends' THEN 'MOBA'
    WHEN Game = 'Dota 2' THEN 'MOBA'
    WHEN Game = 'Heroes of the Storm' THEN 'MOBA'
    WHEN Game = 'Counter-Strike: Global Offensive' THEN 'FPS'
    WHEN Game = 'DayZ' THEN 'Survival'
    WHEN Game = 'ARK: Survival Evolved' THEN 'Survival'
    ELSE 'Other'
  END AS Genre
FROM stream
GROUP BY Game
ORDER BY Game;

-- How number of viewers change by Day for US
SELECT DATEPART(HOUR, Timestamp) AS Hour, COUNT(*) as number_of_viewers
FROM stream
WHERE Country = 'US'
GROUP BY DATEPART(HOUR, Timestamp)
ORDER BY DATEPART(HOUR, Timestamp);

-- Join stream and chat tables
SELECT *
FROM stream
JOIN chat
  ON stream.DeviceID = chat.DeviceID;