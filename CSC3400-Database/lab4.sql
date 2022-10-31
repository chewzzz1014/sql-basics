-- Q1
SELECT 
    employee_id,
    first_name || ' ' || last_name AS full_name,
    LENGTH(last_name) as last_name_length,
    INSTR(last_name, 'a') as position_of_n
FROM employees
WHERE last_name LIKE '%n';


-- Q2
SELECT
    sysdate AS "DATE"
FROM dual;
    
-- Q3: num of weeks empoyed
SELECT last_name, EXTRACT(YEAR FROM sysdate) - EXTRACT(YEAR FROM hire_date)
FROM employees
WHERE department_id = 60;