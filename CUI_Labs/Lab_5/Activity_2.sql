SELECT job_id, COUNT(last_name)
FROM Employees
GROUP BY job_id;