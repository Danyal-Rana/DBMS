SELECT last_name, ROUND(months_between(sysdate, hire_date), 0) AS "Months Worked"
FROM employees
ORDER BY 2;