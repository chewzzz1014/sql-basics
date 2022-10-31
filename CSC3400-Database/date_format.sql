-- check date format on my sql developer
SELECT 
    value
FROM V$NLS_PARAMETERS
WHERE
    parameter = 'NLS_DATE_FORMAT';  -- DD/MM/RRRR
    
    
    
-- return current date
SELECT sysdate
FROM dual;  -- 31/20/2022


-- change date format on sql developer
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';



-- convert date to string
-- October 31, 2022
SELECT
    TO_CHAR(SYSDATE, 'FMMonth DD, YYYY')
FROM 
    dual;
    
SELECT
    TO_CHAR(SYSDATE, 'DD/FMMonth/YYYY')
FROM 
    dual;