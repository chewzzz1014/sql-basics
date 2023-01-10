-- Q1
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
