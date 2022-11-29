-- Q1
SELECT 
    employee_id Id,
    first_name || ' ' || last_name Names
FROM employees
WHERE department_id = (
    SELECT UNIQUE department_id
    FROM departments
    WHERE department_name = 'Sales'
);

-- Q2