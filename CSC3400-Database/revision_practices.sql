--Refer slide Chapter 6.2

-- for dropping table and redo
drop table self_employee;

-- Create table
CREATE TABLE self_employee(
    empid number NOT NULL,
    lname VARCHAR2(30) NOT NULL,
    fname VARCHAR2(30) NOT NULL,
    dept_id VARCHAR2(4),
    salary NUMBER,
    commission NUMBER,
    gender VARCHAR2(1) CHECK (gender in ('F', 'M')),
    status VARCHAR2(20) CHECK 
        (status IN ('Academic Staff', 
             'Technical Staff',
             'Support Staff')),
    CONSTRAINT self_employee_pk PRIMARY KEY(empid)
);

-- Insert values
INSERT INTO self_employee 
        VALUES(7, 'Gopal', 'Nantha', 
               'D001', 4000, 0.3, 'M', 
               'Support Staff');
INSERT INTO self_employee(empid, lname, fname, dept_id, salary, gender, status)
        VALUES(1, 'Sitit Razilah', 'Awang', 
               'D001', 1000, 'F', 'Academic Staff');
INSERT INTO self_employee 
        VALUES(2, 'Musa Ahmad', 'Kadir', 
               'D001', 1200, 0.2, 'M', 
               'Academic Staff');
INSERT INTO self_employee 
        VALUES(3, 'Martin Luke', 'Alex', 
               'D002', 1500, 0.6, 'M', 
               'Technical Staff');
INSERT INTO self_employee 
        VALUES(4, 'Ahmad Faizul', 'Ahmad', 
               'D003', 1800, 0.3, 'M', 
               'Academic Staff');
INSERT INTO self_employee(empid, lname, fname, dept_id, salary, gender, status)
        VALUES(5, 'Safiyah Sahizan', 'Shahri', 
               'D004', 1230, 'F', 
               'Support Staff');
INSERT INTO self_employee 
        VALUES(6, 'Taylor Duff', 'Matthew', 
               'D003', 2500, 0.8, 'M', 
               'Technical Staff');


-- Increase the salary of each staff by 1000
UPDATE self_employee
SET salary = salary + 1000;

--increase the salary of the academic staffs by 500
UPDATE self_employee
SET salary = salary + 500
WHERE status = 'Academic Staff';

--Change Gopal’s to ‘Gobalakrishna’
UPDATE self_employee
SET lname = 'Gobalakrishna'
WHERE lname = 'Gopal';

--Empid 4 has resigned, delete his record 
DELETE FROM self_employee
WHERE empid = 4;

-- include ' in the literal string
select lname || q'['s Money]'
from self_employee;

-- prompt the use for value
select * from self_employee
where dept_id = &dept_id;




