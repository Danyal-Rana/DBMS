SELECT country_id, country_name
FROM countries

MINUS

SELECT country_id, country_name
FROM countries c
JOIN location l USING (country_id)
JOIN department d USING (location_id)
WHERE department_id IS NOT NULL;