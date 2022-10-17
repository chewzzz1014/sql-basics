-- Q1
SELECT employee_id, last_name, salary*12 "ANNUAL SALARY"
FROM employees;

-- Q2: Create a CUSTOMERS table 
CREATE TABLE CUSTOMERS(
    ID Number NOT NULL,
    Name varchar2(50),
    Age Number,
    Address char(250),
    salary Number,
    constraint customers_pk PRIMARY KEY (ID)
);

-- Q3: Insert 3 records in CUSTOMERS table 
INSERT INTO CUSTOMERS VALUES (1, 'Ramesh', 32,  'Ahmedabad', 2000);
INSERT INTO CUSTOMERS VALUES (2, 'Khilan', 25, 'Delhi', 1500);
INSERT INTO CUSTOMERS VALUES (3, 'kaushik', 23, 'Kota', 2000);


-- Q4: Update ADDRESS for a customer whose ID is 3 to ‘Pune’.
UPDATE CUSTOMERS
SET 
    Address = 'Pune'
WHERE ID = 3;

-- Q5: Delete a Customer whose ID is 2.
DELETE FROM CUSTOMERS
WHERE ID = 2;

-- Q6: Add another column to store the customer’s phone number.
ALTER TABLE CUSTOMERS
ADD phone_number Number;

-- Q7: Table CUSTOMERS will no longer be used. Remove the whole table from the database.
drop table customers;







