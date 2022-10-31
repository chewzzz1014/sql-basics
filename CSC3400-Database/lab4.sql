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
    
-- Q3: num of weeks employed
SELECT last_name, (EXTRACT(YEAR FROM sysdate) - EXTRACT(YEAR FROM hire_date))*52 as num_weeks_employed
FROM employees
WHERE department_id = 60;


-- Q4
SELECT employee_id, last_name, salary, ROUND(salary * 1.155) "New Salary"
FROM employees;

-- Q5
SELECT 
    employee_id, 
    last_name, 
    salary, 
    ROUND(salary * 1.155) "New Salary",
    ROUND(salary * 1.155) - salary Increase
FROM employees;

-- Q6
SELECT
    UPPER(SUBSTR(last_name, 1, 1)) || '' || SUBSTR(last_name, 2) last_name,
    LENGTH(last_name) last_name_length
FROM employees
WHERE SUBSTR(first_name, 1, 1) IN ('J', 'A', 'M')
ORDER BY last_name;


-- Q7
SELECT
    last_name,
    ROUND((EXTRACT(YEAR FROM sysdate) - EXTRACT(YEAR FROM hire_date)) * 52) months_worked
FROM employees
ORDER BY months_worked;

-- Q8
SELECT 
    last_name,
    '$' || RPAD(TO_CHAR(salary), 15, '0') salary
FROM employees;


-- Q9: NVL(e1, e2...)
SELECT
    last_name,
    NVL(commission_pct, 0) as comm
FROM employees;


-- Q10
SELECT
    SUBSTR(last_name, 1, 8) || ' ' || RPAD('*', ROUND(salary/1000), '*') employees_and_their_salaries
FROM employees
ORDER BY salary DESC;


-- Q11: DECODE(att_compare, if_eq_this, then_this, if_eq_this, then_this..., else_this)
SELECT
    last_name,
    DECODE(job_id, 
                'AD_PRES', 'A',
                'ST_MAN', 'B',
                'IT_PROG', 'C',
                'SA_REP', 'D',
                'ST_CLERK', 'E',
                '0') grade
FROM employees;


-- Q12
SELECT
    last_name, 
    CASE job_id
    WHEN 'AD_PRES' THEN 'A'
    WHEN 'ST_MAN' THEN 'B'
    WHEN 'IT_PROG' THEN 'C'
    WHEN 'SA_REP' THEN 'D'
    WHEN 'ST_CLERK' THEN 'E'
    ELSE '0'
    END AS grade
FROM employees;