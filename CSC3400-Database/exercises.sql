-- 1
SELECT
 first_name || ' ' || last_name "Employee Name",
 -- Use "" to reserve the small case of column name
 email "Email", 
 phone_number "Employee-Phone"
FROM employees
ORDER BY first_name;

-- 2
SELECT 
    department_name "Department Name",
    COUNT(*) "No of Department"
FROM job_history j
JOIN departments d
    ON j.department_id = d.department_id
GROUP BY department_name
HAVING COUNT(*)>1;

-- alternative of using JOIN
SELECT 
    department_name "Department Name",
    COUNT(*) "No of Department"
FROM job_history j, departments d
WHERE j.department_id = d.department_id
GROUP BY department_name
HAVING COUNT(*)>1;


-- 3
SELECT 
    employee_id,
    last_name,
    SUBSTR(phone_number, 1, 3) || '-' || SUBSTR(phone_number, 5, 3) || SUBSTR(phone_number, 9, 3) AS Phone
FROM employees;

SELECT 
    employee_id,
    last_name,
      CASE WHEN SUBSTR(phone_number, 1, 3)='011'
        THEN SUBSTR(phone_number, 1, 3) || '-' || SUBSTR(phone_number, 5, 3) || SUBSTR(phone_number, 9, 4)
      ELSE SUBSTR(phone_number, 1, 3)|| '-' || SUBSTR(phone_number, 5, 3) || SUBSTR(phone_number,9) 
      END as phone
FROM employees;
