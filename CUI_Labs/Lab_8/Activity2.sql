SELECT department_id
FROM employees
MINUS
SELECT department_id
FROM employees
WHERE UPPER (job_id) = UPPER('ST_CLERK')
ORDER BY 1;