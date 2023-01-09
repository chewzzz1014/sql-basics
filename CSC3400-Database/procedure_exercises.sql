-- create procedure
create or replace PROCEDURE greetings 
AS 
BEGIN 
   dbms_output.put_line('Good Morning!'); 
END;

-- create procedure
CREATE OR REPLACE PROCEDURE hello 
IS
Greetings VARCHAR(20);
BEGIN
Greetings:= 'Hello World';
dbms_output.put_line (greetings);
END hello;

-- create function
SELECT * FROM fatimahcd.customers;

CREATE OR REPLACE FUNCTION totalCustomers
RETURN NUMBER
IS
    total NUMBER(2) := 0;
BEGIN
    -- select total numbers of customers
    SELECT COUNT(*)
    INTO total
    FROM fatimahcd.customers;
    -- return the total sales
    RETURN total;
END;

SELECT 
    totalCustomers()
FROM dual;

DECLARE
    c NUMBER(2):= 0;
BEGIN
    c := totalCustomers();
    DBMS_OUTPUT.PUT_LINE('Total no. of Customers: ": ' || c);
END;