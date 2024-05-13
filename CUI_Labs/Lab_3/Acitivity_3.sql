SELECT last_name, job_id, hire_date
FROM Employees
WHERE last_name IN('Matos', 'Taylor')
ORDER BY hire_date;