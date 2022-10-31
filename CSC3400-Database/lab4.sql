-- Q1
SELECT 
    employee_id,
    first_name || ' ' || last_name AS full_name,
    LENGTH(last_name) as last_name_length,
    INSTR(last_name, 'a') as position_of_n
FROM employees
WHERE last_name LIKE '%n%';
    
