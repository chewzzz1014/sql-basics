-- Q1 (done)
CREATE OR REPLACE FUNCTION add_two_value (n1 number, n2 number)
RETURN NUMBER
IS 
    result Number(2) := 0;
BEGIN
    result := n1 + n2;
    RETURN result;
END;

DECLARE
    ans NUMBER(2):= 0;
    a NUMBER(2) := 2;
    b NUMBER(2) := 5;
BEGIN
    ans := add_two_value(a, b);
    DBMS_OUTPUT.PUT_LINE('Total of 2 and 5 is: ' || ans);
END;

-- Q2
CREATE OR REPLACE PROCEDURE raise_amount (id VARCHAR, amount NUMBER)
AS
BEGIN
    UPDATE
        employees
    SET
        salary = salary * (1+amount)
    WHERE employee_id = id;
END;

-- Q3
CREATE OR REPLACE PROCEDURE DisplayEmployeeInfo(EmpNum NUMBER)
IS
    name VARCHAR := '';
    position VARCHAR := '';
    salary NUMBER := 0;
BEGIN
   SELECT 
   first_name INTO name
   FROM employees
   WHERE employee_id = EmpNum;
   SELECT 
   job_id INTO position
   FROM employees
   WHERE employee_id = EmpNum;
   SELECT 
   salary INTO salary
   FROM employees
   WHERE employee_id = EmpNum;
   dbms_output.put_line ('Employee Name :'|| name);
   dbms_output.put_line ('Employee Position :'||position);
   dbms_output.put_line ('Salary :' || salary);
END;

SELECT 
    DisplayEmployeeInfo(100)
FROM dual;

-- Q4 (done)
CREATE OR REPLACE VIEW dept50 
AS
    SELECT employee_id empno,
    last_name employee,
    department_id deptno
    FROM employees
    WHERE department_id = 50
WITH CHECK OPTION CONSTRAINT deptno50_v;

SELECT * FROM dept50;

-- Q6 (done)
CREATE OR REPLACE FUNCTION return_total_salary(dept_id NUMBER)
RETURN NUMBER
IS
    total_salary NUMBER(8,2):=0;
BEGIN 
   SELECT SUM(salary)
   INTO total_salary 
   FROM employees
   WHERE department_id = dept_id;

   RETURN (total_salary);
END;

SELECT 
    RETURN_TOTAL_SALARY(90)
FROM dual;
