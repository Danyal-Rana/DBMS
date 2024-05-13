SELECT manager_id, last_name, employee_id, department_id
FROM Employees
WHERE manager_id = &manager
ORDER BY &order_column;