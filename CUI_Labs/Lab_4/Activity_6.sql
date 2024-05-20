SELECT last_name, department_id, TO_CHAR(NULL)
FROM employees
UNION
SELECT TO_CHAR(NULL), department_id, department_name
FROM departments;