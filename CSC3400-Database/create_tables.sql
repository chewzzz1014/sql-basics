CREATE TABLE regions(
	region_id number NOT NULL,
	region_number varchar(25),
	constraint regions_pk PRIMARY KEY (region_id)
);

INSERT INTO REGIONS VALUES  (1, 'Europe');
INSERT INTO REGIONS VALUES  (2, 'Americas');
INSERT INTO REGIONS VALUES (3, 'Asia');
INSERT INTO REGIONS VALUES(4, 'Middle East and Africe');


CREATE TABLE countries(
    country_id char(2) NOT NULL,
    country_name varchar2(40),
    region_id number,
    constraint countries_pk PRIMARY KEY (country_id),
    constraint countries_fk FOREIGN KEY (region_id) references regions(region_id)
);

INSERT INTO countries VALUES ('CA', 'Canada', 2);
INSERT INTO countries VALUES ('DE', 'Germany', 1);
INSERT INTO countries VALUES ('UK', 'United Kingdom', 1);
INSERT INTO countries VALUES ('US', 'United States of America', 2);

CREATE TABLE locations(
    location_id number(4) NOT NULL,
    street_address varchar2(40),
    postal_code varchar2(12),
    city varchar2(30) NOT NULL,
    state_province varchar2(25),
    country_id char(2),
    constraint locations_pk PRIMARY KEY (location_id),
    constraint locations_fk FOREIGN KEY (country_id) references countries(country_id)
);

insert into locations values (1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'); 
insert into locations values (1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US');
insert into locations values (1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'); 
insert into locations values (1800, '460 Bloor St.W.', 'ON M5S 1X8', 'Toronto', 'Ontario', 'CA'); 
insert into locations values (2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK');

CREATE TABLE departments(
    department_id number(4) NOT NULL,
    department_name varchar2(30) NOT NULL,
    manager_id number(6),
    location_id number(4),
    constraint departments_pk PRIMARY KEY (department_id),
    constraint departments_fk FOREIGN KEY (location_id) references locations(location_id)
);

INSERT INTO departments VALUES (10, 'Administration', 200, 1700);
INSERT INTO departments VALUES (20, 'Marketing', 201, 1800);
INSERT INTO departments VALUES (50, 'Shipping', 124, 1500);
INSERT INTO departments VALUES (60, 'IT', 103, 1400);
INSERT INTO departments VALUES (80, 'Sales', 149, 2500);
INSERT INTO departments VALUES (90, 'Executive', 100, 1700);
INSERT INTO departments VALUES (110, 'Accounting', 205, 1700);
INSERT INTO departments(department_id, department_name, location_id) VALUES (190, 'Contracting', 1700);


CREATE TABLE jobs(
    job_id varchar2(10) NOT NULL,
    job_title varchar2(35) NOT NULL,
    min_salary number(6),
    max_salary number(6),
    constraint jobs_pk PRIMARY KEY (job_id)
);

INSERT INTO jobs VALUES ('AD_PRES', 'President', 20000, 40000);
INSERT INTO jobs VALUES ('AD_VP', 'Administration Vice President', 15000, 30000);
INSERT INTO jobs VALUES ('AD_ASST', 'Administration Assistant', 3000, 6000);
INSERT INTO jobs VALUES ('AC_MGR', 'Accounting Manager', 8200, 16000);
INSERT INTO jobs VALUES ('AC_ACCOUNT', 'Public Accountant', 4200, 9000);
INSERT INTO jobs VALUES ('SA_MAN' , 'Sales Manager', 10000, 20000);
INSERT INTO jobs VALUES ('SA_REP', 'Sales Representative', 6000, 12000);
INSERT INTO jobs VALUES ('ST_MAN', 'Stock Manager', 5500, 8500);
INSERT INTO jobs VALUES ('ST_CLERK', 'Stock Clerk', 2000, 5000);
INSERT INTO jobs VALUES ('IT_PROG', 'Programmer', 4000, 10000);
INSERT INTO jobs VALUES ('MK_MAN', 'Marketing Manager', 9000, 15000);
INSERT INTO jobs VALUES ('MK_REP', 'Marketing Representative', 4000, 9000);


CREATE TABLE employees(
    employee_id number(6) NOT NULL,
    first_name varchar2(20),
    last_name varchar2(25) NOT NULL,
    email varchar2(25) NOT NULL,
    phone_number varchar2(20),
    hire_date date NOT NULL,
    job_id varchar2(10) NOT NULL,
    salary number(8, 2),
    commission_pct number(2,2),
    manager_id number(6),
    department_id number(4),
    constraint employees_pk PRIMARY KEY (employee_id),
    constraint employees_fk FOREIGN KEY (department_id) REFERENCES departments(department_id),
    constraint employees_fk_1 FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id) VALUES (100, 'Steven', 'King', 'SKING', '551.123.4567', '17-JUN-87', 'AD_PRES', 24000, 90);
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (101, 'Neena', 'Kochhar', 'NKOCHHAR', '521.123.4568', '21-SEP-89', 'AD_VP', 17000, 100, 90);
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '13-JAN-93', 'AD_VP', 17000, 100, 90);
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '03-JAN-90', 'IT_PROG', 9000, 102, 60);
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '21-MAY-91', 'IT_PROG', 5000, 103, 50);
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '07-FEB-99', 'IT_PROG', 4200, 103, 60);
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (124, 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', '16-NOV-99', 'ST_MAN', 5800, 100, 50);
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (141, 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', '17-OCT-95', 'ST_CLERK', 3500, 124, 50);
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (142, 'Curlis', 'Davies', 'CDAVIES', '650.121.2994', '29-JAN-97', 'ST_CLERK', 3100, 124, 50);
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (143, 'Randall', 'Matos', 'RMATOS', '650.121.2874', '15-MAR-98', 'ST_CLERK', 2600, 124, 50);
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (144, 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', '09-JUL-98', 'ST_CLERK', 2500, 124, 50);
INSERT INTO employees VALUES (149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', '29-JAN-00', 'SA_MAN', 10500, .2, 100, 80);
INSERT INTO employees VALUES (174, 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', '11-MAY-96', 'SA_REP', 11000, .3, 149, 80);
INSERT INTO employees  VALUES (176, 'Jonathan', 'Taylor', 'JTAYLOR', '011.44.1644.429265', '24-MAY-98', 'SA_REP', 8600, .2, 149, 80);
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id) VALUES (178, 'Kimberly', 'Grant', 'KGRANT', '011.44.1644.429263', '24-MAY-99', 'SA_REP', 7000, .15, 149);
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', '17-SEP-87', 'AD_ASST', 4400, 101, 10);
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', '17-sep-96', 'MK_MAN', 13000, 100, 20);
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (202, 'Pat', 'Fay', 'PFAY', '603.123.6666', '17-AUG-97', 'MK_REP', 6000, 201, 20);
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', '07-JUN-94', 'AC_MGR', 12000, 101, 110);
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (206, 'Wiliam', 'Gietz', 'WGIETS', '515.123.8181', '07-JUN-94', 'AC_ACCOUNT', 8300, 205, 110);


CREATE TABLE job_history(
    employee_id number(6) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    job_id varchar2(10) NOT NULL,
    department_id number(4),
    constraint job_history_pk PRIMARY KEY (employee_id, start_date),
    constraint job_history_fk_1 FOREIGN KEY (job_id) references jobs(job_id),
    constraint job_history_fk_2 FOREIGN KEY (department_id) references departments(department_id)
);

INSERT INTO job_history VALUES (102, '21-SEP-89', '24-JUL-98', 'IT_PROG', 60);
INSERT INTO job_history VALUES (101, '21-SEP-89', '27-OCT-93', 'AC_ACCOUNT', 110);
INSERT INTO job_history VALUES (101, '28-OCT-93', '15-MAR-97', 'AC_MGR', 110);
INSERT INTO job_history VALUES (201, '17-FEB-96', '19-DEC-99', 'MK_REP', 20);
INSERT INTO job_history VALUES (114, '24-MAR-98', '31-DEC-99', 'ST_CLERK', 50);
INSERT INTO job_history VALUES (122, '01-JAN-99', '31-DEC-99', 'ST_CLERK', 50);
INSERT INTO job_history VALUES (200, '17-SEP-87', '17-JUN-93', 'AD_ASST', 90);
INSERT INTO job_history VALUES (176, '24-MAR-98', '31-DEC-98', 'SA_REP', 80);
INSERT INTO job_history VALUES (176, '01-JAN-99', '31-DEC-99', 'SA_MAN', 80);
INSERT INTO job_history VALUES (200, '01-JUL-94', '31-DEC-98', 'AC_ACCOUNT', 90);


CREATE TABLE job_grades(
    grade_level varchar2(3),
    lowest_sal number,
    highest_sal number,
    constraint job_grades_pk PRIMARY KEY (grade_level)
);

INSERT INTO job_grades VALUES ('A', 1000, 2999);
INSERT INTO job_grades VALUES ('B', 3000, 5999);
INSERT INTO job_grades VALUES ('C', 6000, 9999);
INSERT INTO job_grades VALUES ('D', 10000, 14999);
INSERT INTO job_grades VALUES ('E', 15000, 24999);
INSERT INTO job_grades VALUES ('F', 25000, 40000);
    