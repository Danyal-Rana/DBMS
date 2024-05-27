SELECT last_name, hire_date
FROM employees
WHERE department_id = (
    SELECT department_id
    FROM employees
    WHERE last_name = :input_last_name -- Parameter for the user's input
)
AND last_name != :input_last_name; -- Exclude the specified employee