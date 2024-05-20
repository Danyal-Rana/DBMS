SELECT employee_id, last_name, salary, salary+(salary*15.5/100) AS "New Salary"
FROM employees;