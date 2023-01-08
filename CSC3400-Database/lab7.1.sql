-- Lab Practice 7.1: View, Sequence and Index

-- View
-- Q1: create view
CREATE OR REPLACE VIEW vcustomer
AS SELECT 
    custid "Customer-ID",
    custname "Customer-Name",
    custphone "Customer-Phone"
FROM customer;

-- display contents of view
SELECT * FROM vcustomer;

-- Q2
SELECT "Customer-Name", "Customer-Phone"
FROM vcustomer;

-- Q3
INSERT INTO vcustomer 
    VALUES('C00007','Roslina Ahmad','0198888999');
    
-- Q4
SELECT * FROM CUSTOMER;

-- Q5
SELECT * FROM vcustomer;

-- Q6
DROP VIEW vcustomer;

-- Q7
CREATE OR REPLACE VIEW v2customer
AS SELECT
 custid "Customer-ID",
    custname "Customer-Name",
    custphone "Customer-Phone"
FROM customer
WITH READ ONLY;

-- Q8
INSERT INTO v2customer
    VALUES('C00007','Roslina Ahmad','0198888999');