-- Create Table
CREATE TABLE Friends (
  id INTEGER,
  name VARCHAR(255),
  birthday DATE
);

-- Insert Values in Table
INSERT INTO Friends (id, name, birthday)
VALUES (1, 'Ororo Munroe', '1940-05-30');

INSERT INTO Friends (id, name, birthday)
VALUES (2, 'Gaurav Jain', '2002-05-15');

INSERT INTO Friends (id, name, birthday)
VALUES (3, 'Prerna Jain', '2002-05-21');

-- Update values depending upon the condition
UPDATE Friends
SET name = 'Storm'
WHERE name  = 'Ororo Munroe';

-- Add a new Column to the Table
ALTER TABLE Friends
ADD email VARCHAR(255);

-- Update Values depending upon the Condition
UPDATE Friends
SET email = 'storm@codecademy.com'
WHERE id = 1;

UPDATE Friends
SET email = 'storm@codecademy.com'
WHERE id = 2;

UPDATE Friends
SET email = 'storm@codecademy.com'
WHERE id = 3;

-- Delete Row depending upon the Condition
DELETE FROM Friends
WHERE name = 'storm';

-- Select Table
SELECT * FROM Friends;