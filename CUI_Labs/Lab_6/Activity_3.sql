SELECT e.last_name, e.job_id, e.department_id, d.department_name
FROM (employees e JOIN departments d USING (manager_id)) NATURAL JOIN locations
WHERE city = 'Toronto';