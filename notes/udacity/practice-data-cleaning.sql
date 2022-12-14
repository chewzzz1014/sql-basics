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


-- Solution for : https://learn.udacity.com/courses/ud198/lessons/ee918449-4599-42ac-aeae-67228b32eb7f/concepts/e3542078-bac0-41f6-ac69-3a9664913da4

-- Q1
SELECT CONCAT(first_name, '.', last_name, '@', name, '.com') email
FROM 
(SELECT 
        name,
        LEFT(primary_poc, STRPOS(primary_poc, ' ')-1) AS first_name,
        RIGHT(primary_poc, LENGTH(primary_poc)-STRPOS(primary_poc, ' ')) AS last_name
FROM accounts) sub;

-- Q2
-- Remove spaces in company name: replace(string text, from text, to text)
SELECT CONCAT(first_name, '.', last_name, '@', REPLACE(name, " ", ""), '.com') email
FROM 
(SELECT 
        name,
        LEFT(primary_poc, STRPOS(primary_poc, ' ')-1) AS first_name,
        RIGHT(primary_poc, LENGTH(primary_poc)-STRPOS(primary_poc, ' ')) AS last_name
FROM accounts) sub;

--Q3
-- We would also like to create an initial password, which they will change after their first log in. The first password will be the first letter of the primary_poc's first name (lowercase), then the last letter of their first name (lowercase), the first letter of their last name (lowercase), the last letter of their last name (lowercase), the number of letters in their first name, the number of letters in their last name, and then the name of the company they are working with, all capitalized with no spaces.

SELECT CONCAT( LOWER(LEFT(first_name, 1)), LOWER(RIGHT(first_name, 1)), LOWER(LEFT(last_name, 1)), LOWER(RIGHT(last_name, 1)), LENGTH(first_name), LENGTH(last_name), UPPER(REPLACE(name, ' ', '')) )
FROM 
(SELECT 
        name,
        LEFT(primary_poc, STRPOS(primary_poc, " ")-1) AS first_name,
        RIGHT(primary_poc, LENGTH(primary_poc)-STRPOS(primary_poc, " ")) AS last_name
FROM accounts) sub;






