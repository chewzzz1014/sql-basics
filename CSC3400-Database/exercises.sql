SELECT
 first_name || ' ' || last_name "Employee Name",
 
 -- Use "" to reserve the small case of column name
 email "Email", 
 phone_number "Employee-Phone"
FROM employees
ORDER BY first_name;