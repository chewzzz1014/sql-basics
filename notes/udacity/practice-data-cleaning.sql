-- Solution for : https://learn.udacity.com/courses/ud198/lessons/ee918449-4599-42ac-aeae-67228b32eb7f/concepts/8b4a6df4-8925-42c5-9038-b479dd35aaf8

-- Q1
SELECT RIGHT(website, 3) as domain, COUNT(*) as count
FROM accounts a
GROUP BY 1
ORDER BY 2 DESC;

-- Q2
SELECT LEFT(UPPER(name), 1), COUNT(*) count
FROM accounts
GROUP BY 1
ORDER BY 2 DESC;

-- Q3
SELECT SUM(start_with_num) as count_name_start_with_num, SUM(start_with_letter) as count_name_start_with_letter
FROM 
(SELECT CASE WHEN LEFT(name, 1) IN ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9') THEN 1 ELSE 0 END AS "start_with_num",
        CASE WHEN LEFT(name, 1) IN ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9') THEN 0 ELSE 1 END AS "start_with_letter"
 FROM accounts) sub;
        
-- Q4
-- Consider vowels as a, e, i, o, and u. What proportion of company names start with a vowel, and what percent start with anything else?

SELECT SUM(start_with_vowel) vowels, SUM(start_with_others) others
FROM
(SELECT CASE WHEN LEFT(LOWER(name), 1) IN ('a', 'e', 'i', 'o', 'u') THEN 1 ELSE 0 END AS start_with_vowel,
       CASE WHEN LEFT(LOWER(name), 1) IN ('a', 'e', 'i', 'o', 'u') THEN 0 ELSE 1 END AS start_with_others
FROM accounts) sub;

-- Solution for : https://learn.udacity.com/courses/ud198/lessons/ee918449-4599-42ac-aeae-67228b32eb7f/concepts/e24b22ba-a7e8-414a-8270-ccf85da9c5af

-- Q1
SELECT LEFT(primary_poc,  STRPOS(primary_poc, " ")-1) as first_name,
       RIGHT(primary_poc, LENGTH(primary_poc)-STRPOS(primary_poc, " ")) as last_name
FROM accounts;

-- Q2
SELECT LEFT(name, STRPOS(name, " ")) as first_name,
       RIGHT(name, LENGTH(name)-POSITION(" " IN name)) as last_name
FROM sales_reps;






