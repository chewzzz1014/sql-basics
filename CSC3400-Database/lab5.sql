-- Q1
SELECT 
    COUNT(UNIQUE department_name) num_unique_department
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
    ROUND(MAX(salary)) AS Maximum,
    ROUND(MIN(salary)) AS Minimum,
    ROUND(SUM(salary)) AS Sum,
    ROUND(AVG(salary)) AS Average
FROM employees;


-- Q4
SELECT 
    job_title, 
    ROUND(MAX(salary)) AS Maximum,
    ROUND(MIN(salary)) AS Minimum,
    ROUND(SUM(salary)) AS Sum,
    ROUND(AVG(salary)) AS Average
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
SELECT 
    manager_id,
    MIN(salary) min_salary
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
HAVING MIN(salary)>6000
ORDER BY min_salary DESC;

-- Q11
SELECT
    job_title job,
    d.department_id department_id,
    SUM(salary) total_salary
FROM departments d
JOIN employees e
    ON d.department_id = e.department_id
JOIN jobs j
    ON j.job_id = e.job_id
WHERE d.department_id IN (20, 50, 80, 90)
GROUP BY job_title, d.department_id;