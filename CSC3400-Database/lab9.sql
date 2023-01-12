-- Q1 (done)
CREATE OR REPLACE FUNCTION add_two_value (n1 number, n2 number)
RETURN NUMBER
IS 
    result Number(2) := 0;
BEGIN
    result := n1 + n2;
    RETURN result;
END;

SELECT
    add_two_value(2, 5)
FROM DUAL;


-- Q2 (done)
CREATE OR REPLACE PROCEDURE raise_amount (id VARCHAR, amount NUMBER)
AS
BEGIN
    UPDATE
        employees
    SET
        salary = salary * (1+amount)
    WHERE employee_id = id;
END;

BEGIN
    raise_amount(100, 1);
END;

-- Q3 (done)

CREATE OR REPLACE PROCEDURE DisplayEmployeeInfo(EmpNum NUMBER)
AS
    c_name employees.first_name%type;
    c_job employees.job_id%type;
    c_salary employees.salary%type;
    CURSOR c_employees 
    IS
        SELECT first_name, job_id, salary 
        FROM employees
        WHERE employee_id = EmpNum;
BEGIN
open c_employees;
FETCH c_employees INTO c_name, c_job, c_salary;
   dbms_output.put_line ('Employee Name :'|| c_name);
   dbms_output.put_line ('Employee Position :'||c_job);
   dbms_output.put_line ('Salary :' || c_salary);
close c_employees;
END;

BEGIN 
    DisplayEmployeeInfo(100);
END;

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
