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
BEGIN
    ans := add_two_value(2, 5);
    DBMS_OUTPUT.PUT_LINE('Total of 2 and 5 is: ' || ans);
END;