SELECT department_id, job_id, SUM(salary)
FROM employees
WHERE department_id IN(20, 50, 80, 90)
GROUP BY ROLLUP(department_id, job_id);