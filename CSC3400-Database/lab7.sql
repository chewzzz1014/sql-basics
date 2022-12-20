-- Views
-- Q1
CREATE VIEW employees_vu AS
SELECT 
    employee_id,
    last_name employee,
    department_id
FROM employees;

-- Q2
SELECT *
FROM employees_vu;

-- Q3
SELECT 
    employee_id,
    department_id
FROM employees_vu;

-- Q4
CREATE OR REPLACE VIEW dept_50 AS
SELECT
    employee_id empno,
    last_name employee,
    department_id deptno
FROM employees
WHERE department_id = 50;

-- Q5
desc dept_50;
SELECT * FROM dept_50;


-- Sequence

