SELECT *
FROM nomnom;

-- Different neighborhoods
SELECT DISTINCT neighborhood
FROM nomnom;

-- Different cuisines
SELECT DISTINCT cuisine
FROM nomnom;

-- Only chinese cuisine
SELECT *
FROM nomnom
WHERE cuisine = 'Chinese';

-- Review greater than or equal to 4
SELECT *
FROM nomnom
WHERE review >= 4;

-- Only italian cuisine where price is atleast $$$
SELECT *
FROM nomnom
WHERE cuisine = 'Italian'
   AND price LIKE '%$$$%';

-- Name contains "meatball"
SELECT *
FROM nomnom
WHERE name LIKE '%meatball%';

-- "Midtown", "Downtown" or "Chinatown" neighborhoods
SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown'
   OR neighborhood = 'Downtown'
   OR neighborhood = 'Chinatown'; 

-- No health rating given
SELECT *
FROM nomnom
WHERE health IS NULL;

-- Top 10 review
SELECT TOP 10 *
FROM nomnom
ORDER BY review DESC;

-- Numerical rating to Ordinal Rating
SELECT name,
 CASE
  WHEN review > 4.5 THEN 'Extraordinary'
  WHEN review > 4 THEN 'Excellent'
  WHEN review > 3 THEN 'Good'
  WHEN review > 2 THEN 'Fair'
  ELSE 'Poor'
 END AS 'Review'
FROM nomnom;

