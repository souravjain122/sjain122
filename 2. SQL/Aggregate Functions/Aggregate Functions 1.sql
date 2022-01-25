-- Select Everything from Table
SELECT *
FROM startups;

-- Count the number of startups
SELECT COUNT(*)
FROM startups;

-- Total valuation of all startups combined
SELECT SUM(valuation)
FROM startups;

-- Max fund raised
SELECT MAX(raised)
FROM startups;

-- Max fund raised during "Seed" stage
SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';

-- Oldest startup
SELECT MIN(founded)
FROM startups;

-- Valuation by categories
SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category
ORDER BY ROUND(AVG(valuation), 2) DESC;

-- Market competition by categories
SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3
ORDER BY COUNT(*) DESC;

-- Startups size by location
SELECT location, AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;