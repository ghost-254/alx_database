-- Find the state_id for California
SET @california_state_id := (SELECT id FROM states WHERE name = 'California');

-- List all the cities in California from the cities table
SELECT * 
FROM cities
WHERE state_id = @california_state_id
ORDER BY id ASC;
