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
CREATE TABLE supplier(
    supplierid NUMBER(3),
    supplier_name VARCHAR2(30),
    CONSTRAINT supplierpk PRIMARY KEY(supplierid)
);

-- Q1
CREATE SEQUENCE supplier_seq
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 20;
    
-- Q2: Get next num from supplier_seq and add to table
INSERT INTO supplier
VALUES(supplier_seq.NEXTVAL,'Kraft Foods');


