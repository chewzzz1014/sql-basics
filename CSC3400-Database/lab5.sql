-- Q1
SELECT 
    COUNT(UNIQUE department_name) unique_department
FROM departments;

-- Q2
SELECT  
    d.department_id, 
    SUM(salary) as total_salary
FROM departments d
JOIN employees e
    ON d.department_id = e.department_id
GROUP BY d.department_id;

-- Q3
SELECT 
    employee_id, 
    MAX(salary) 'Maximum',
    MIN(salary) 'Minimum',
    SUM(salary) 'Sum',
    AVG(salary) 'Average'
FROM employees
GROUP BY employee_id;


-- Q4
SELECT 
    job_title, 
    MAX(salary) 'Maximum',
    MIN(salary) 'Minimum',
    SUM(salary) 'Sum',
    AVG(salary) 'Average'
FROM employees e
JOIN jobs j
    ON e.job_id = j.job_id
GROUP BY job_title;

-- Q5
SELECT
    job_id,
    COUNT(*) num_ppl
FROM employees
GROUP BY job_id;


-- Q6
SELECT
   COUNT(UNIQUE manager_id) num_managers
FROM departments
WHERE manager_id IS NOT NULL;

-- Q7
SELECT 
    MAX(salary) - MIN(salary) difference
FROM employees;

-- Q8
SELECT 
    d.department_id,
    SUM(salary)
FROM departments d
JOIN employees e
    ON d.department_id = e.department_id
GROUP BY d.department_id
HAVING SUM(salary) > 25000;


-- Q9
SELECT
    d.department_id,
    AVG(salary) average_salary
FROM departments d
JOIN employees e
    ON d.department_id = e.department_id
WHERE d.department_id IN (50, 60)
GROUP BY d.department_id;


-- Q10

