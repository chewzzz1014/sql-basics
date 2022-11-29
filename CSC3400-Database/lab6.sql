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
SELECT *
FROM employees
WHERE 
        job_id != (
            SELECT job_id 
            FROM jobs
            WHERE job_title = 'Sales Representative'
        ) 
    AND 
       salary > (
            SELECT MIN(salary)
            FROM employees
            WHERE job_id = (SELECT job_id FROM jobs WHERE job_title = 'Sales Manager')
       );
       
-- Q3
SELECT employee_id, last_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees)
ORDER BY salary DESC;


-- Q4
SELECT last_name, job_id
FROM employees
WHERE job_id = (
    SELECT job_id
    FROM employees
    WHERE last_name = 'Grant'
) AND last_name != 'Grant';


-- Q5
SELECT last_name, department_id, job_id
FROM employees
WHERE department_id IN (
    SELECT UNIQUE department_id
    FROM departments
    WHERE location_id = 1700
);

-- Q6
SELECT last_name, salary
FROM employees
WHERE manager_id = (
    SELECT UNIQUE employee_id
    FROM employees
    WHERE last_name = 'King'
);

-- Q7
SELECT department_id, last_name, job_id
FROM employees
WHERE department_id = (
    SELECT department_id
    FROM departments
    WHERE department_name = 'Sales'
);

-- Q8
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE 
    job_id != 'IT_PROG'
    AND
    salary < (
            SELECT MIN(salary)
            FROM employees
            WHERE job_id = 'IT_PROG'
        );