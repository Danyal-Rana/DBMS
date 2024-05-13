SELECT last_name, salary, commission_pct
FROM Employees
WHERE commission_pct IS NOT NULL
ORDER BY salary DESC, commission_pct;