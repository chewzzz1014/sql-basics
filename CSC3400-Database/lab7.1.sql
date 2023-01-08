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
    
-- Q9
CREATE SEQUENCE CustomerIDSeq
INCREMENT BY 1
START WITH 10
MAXVALUE 99999
NOCACHE
NOCYCLE;

-- Q10
SELECT sequence_name, min_value, max_value,
increment_by, last_number
from user_sequences;

-- Q11
SELECT custid FROM CUSTOMER;

-- Q12
INSERT INTO customer
    VALUES ('C'||LPAD(CustomerIDSeq.NEXTVAL, 5, 0), 'Arizawati Saad', '0132119901', 'P', 'S00002', null);
    
SELECT custid FROM customer WHERE custname='Arizawati Saad';


-- Q13
Select sequence_name, min_value, max_value, 
increment_by, last_number 
from user_sequences
where sequence_name = 'CUSTOMERIDSEQ';

-- Q14
DROP SEQUENCE CustomerIDSeq;

-- Q15
CREATE INDEX custphone_idx
ON customer(custphone);

-- Q16
SELECT 
    ic.index_name,
    ic.column_name,
    ic.column_position col_pos,
    ix.uniqueness
FROM
    user_indexes ix,
    user_ind_columns ic
WHERE
    ic.index_name=ix.index_name
    AND
    ic.table_name='CUSTOMER';
    
-- Q17
DROP INDEX custphone_idx;