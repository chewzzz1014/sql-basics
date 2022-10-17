--describe structure of table dapartments
describe departments;
-- describe contents of table departments
select * from departments;


-- describe structure of table employees
describe employees;


-- display the last name, job code, hire date and employee number for each employee, with employee number appearing first. Provide an alias STARTDATE for the HIRE_DATE column. 
SELECT employee_id, last_name, job_id, hire_date as STARTDATE
FROM employees;


-- display all unique job codes from the EMPLOYEES table.
SELECT DISTINCT job_id
FROM employees;

--  Display the last name, salary and the annual compensation of the employees.
SELECT last_name, salary, salary*12+300 "annual compensation"
FROM employees;


--  Name the column headings Emp#, Employee, Job, and Hire Date from table employees
SELECT 
    employee_id EMP#, 
    first_name || ' ' || last_name Employee,
    job_id Job,
    hire_date "Hire Date"
FROM employees;

-- Display the last name concatenated with the job ID (separated by a comma and space) and name the column Employee and Title.
SELECT last_name || ', ' || job_id "Employee and Title"
FROM employees;

-- display all the data from the EMPLOYEES table. Separate each column output by a comma. Name the column title THE_OUTPUT.
SELECT 
    employee_id || ',' ||
    first_name || ',' || 
    last_name || ',' || 
    email || ',' ||
    phone_number || ',' ||
    hire_date || ',' ||
    job_id || ',' ||
    salary || ',' ||
    commission_pct || ',' ||
    manager_id || ',' ||
    department_id AS "THE OUTPUT"
FROM employees;