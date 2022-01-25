-- Cross Join
-- Combines each row of first table with each row of second table
SELECT riders.first,
   riders.last,
   cars.model
FROM riders, cars;

-- Left Join
-- All of left table, matching records of right table, null values on the right when no match
SELECT trips.date, 
   trips.pickup, 
   trips.dropoff, 
   trips.type, 
   trips.cost,
   riders.first, 
   riders.last,
   riders.username
FROM trips
LEFT JOIN riders 
  ON trips.rider_id = riders.id;

-- Inner Join
-- Match in both tables
SELECT *
FROM trips
JOIN cars
  ON trips.car_id = cars.id;

-- Union
-- Combine two tables
SELECT *
FROM riders
UNION
SELECT *
FROM riders2;