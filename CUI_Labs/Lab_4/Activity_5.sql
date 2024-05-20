SELECT country_id, country_name
FROM countries
MINUS
SELECT l.country_id, c.country_name
FROM locations l
INNER JOIN countries c
ON (l.country_id = c.country_id)
INNER JOIN departments d
ON (l.location_id = d.location_id);