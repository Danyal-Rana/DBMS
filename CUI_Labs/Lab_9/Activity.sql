UPDATE employee
SET commission_pct = (commission_pct+(0.05 * commission_pct))
WHERE department_id = 80;

SELECT employee_id, first_name, department_id, commission_pct
FROM Employees
WHERE department_id = 80;