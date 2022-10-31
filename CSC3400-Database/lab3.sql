-- Lab3

-- Q1
SELECT first_name || ' ' || last_name as full_name, department_id, salary
FROM employees
WHERE last_name = 'Higgins';

-- Q2
SELECT last_name, salary
FROM employees 
WHERE salary > 10000;

-- Q3
SELECT last_name, department_id
FROM employees
WHERE employee_id = 201;

-- Q4
SELECT last_name, salary
FROM employees
WHERE salary NOT BETWEEN 5000 AND 12000;

-- Q5
SELECT last_name, job_id, hire_date as start_date
FROM employees
WHERE last_name IN ('Matos', 'Taylor')
ORDER BY hire_date;


-- Q6
SELECT last_name, department_id 
FROM employees
WHERE department_id IN (20, 50)
ORDER BY last_name;

-- Q7
SELECT last_name Employee, salary "Monthly Salary"
FROM employees
WHERE department_id IN (20, 50) AND (salary BETWEEN 5000 AND 12000);

-- Q8
SELECT first_name || ' ' || last_name "Full Name", job_title, salary 
FROM employees e
JOIN jobs j
    ON e.job_id = j.job_id
WHERE TO_CHAR(salary) LIKE '170%';

-- Q9 
SELECT last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1994;
-- WHERE TO_CHAR(hire_date, 'yyyy') = '1994';

-- Q10
SELECT last_name, job_title
FROM employees
JOIN jobs
   USING (job_id)
WHERE manager_id IS NULL;

-- Q11
SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY salary DESC, commission_pct DESC;

-- Q12
SELECT last_name
FROM employees
WHERE last_name LIKE '__a%';

-- Q13
SELECT last_name
FROM employees
WHERE last_name LIKE '%a%' AND last_name LIKE '%e%';

-- Q14
SELECT last_name, job_title, salary
FROM employees
JOIN jobs
    USING (job_id)
WHERE job_id IN ('SA_REP', 'ST_CLERK') AND salary NOT IN (2500, 3500, 7000);

-- Q15
SELECT *
FROM employees
WHERE job_id = 'ST_CLERK' and EXTRACT(YEAR FROM hire_date)>1997;
-- EXTRACT (YEAR FROM TO_DATE(hire_date, 'DD-MM-RRRR')) > 1997

-- Q16
SELECT first_name || ' ' || last_name full_name
FROM employees 
WHERE 
    last_name NOT LIKE '%A%' and 
--    first_name NOT LIKE '%A%' and 
--    first_name NOT LIKE '%a%' and 
    last_name NOT LIKE '%a%';

-- Q17
SELECT last_name, job_title, salary, commission_pct 
FROM employees
JOIN jobs
    USING(job_id)
WHERE commission_pct IS NOT NULL
ORDER BY salary DESC;

-- Q18
SELECT last_name, salary, commission_pct * 100 || '%' commission
FROM employees
WHERE commission_pct * 100 = 20;
