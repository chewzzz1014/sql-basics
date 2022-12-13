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
