SELECT last_name, job_id, salary
FROM Employees
WHERE job_id IN ('SA_REP', 'SH_CLERK') AND salary NOT IN (2500, 3500, 7000);