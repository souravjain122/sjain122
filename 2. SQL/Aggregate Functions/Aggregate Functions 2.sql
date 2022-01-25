-- Most Popular Titles
SELECT TOP 5 title, score
FROM hacker_news
ORDER BY score DESC;

-- Total Score of all news combined
SELECT SUM(score) AS total_score
FROM hacker_news;

-- Users with total score of more than 200
SELECT [user], SUM(score) AS total_score
FROM hacker_news
GROUP BY [user]
HAVING SUM(score) > 200
ORDER BY SUM(score) DESC;


-- Users with link containing "watch?v=dQw4w9WgXcQ"
SELECT [user], COUNT(*) as Counts
FROM hacker_news
WHERE url LIKE '%watch?v=dQw4w9WgXcQ%'
GROUP BY [user]
ORDER BY COUNT(*) DESC;

-- Different sources of clicks and their counts
SELECT Source, COUNT(*) as Counts
FROM (
	SELECT CASE
		WHEN url LIKE '%github.com%' THEN 'GitHub'
		WHEN url LIKE '%medium.com%' THEN 'Medium'
		WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
		ELSE 'Other'
	END AS Source
  FROM hacker_news) as sub
GROUP BY Source;

-- Best time to post the story
SELECT DATEPART(HOUR, timestamp) AS 'Hour', 
   ROUND(AVG(score), 1) AS 'Average Score', 
   COUNT(*) AS 'Number of Stories'
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY DATEPART(HOUR, timestamp)
ORDER BY DATEPART(HOUR, timestamp);