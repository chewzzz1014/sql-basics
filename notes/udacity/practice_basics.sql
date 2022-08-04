-- Solution for: https://learn.udacity.com/courses/ud198/lessons/f72745e9-2fc9-4439-9f9d-3dbcea46a6c3/concepts/f33f9c57-0312-4d2e-8958-a842610bbf78

-- Q1

SELECT id, occurred_at, total_amt_usd
FROM orders
ORDER BY occurred_ar
LIMIT 10;


-- Q2

SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC
LIMIT 5;


-- Q3

SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd
LIMIT 20;



-- Solution for: https://learn.udacity.com/courses/ud198/lessons/f72745e9-2fc9-4439-9f9d-3dbcea46a6c3/concepts/4febf1ad-3cef-4309-bebf-934d58658365

-- Q1

SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY account_id, total_amt_usd DESC;


-- Q2
SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC, account_id;


-- Solution for : https://learn.udacity.com/courses/ud198/lessons/f72745e9-2fc9-4439-9f9d-3dbcea46a6c3/concepts/c69c3ace-1fbb-4705-a46e-26bb4eb0eae2

-- Q1
SELECT *
FROM orders
WHERE gloss_amt_usd >= 1000
LIMIT 5;


-- Q2
SELECT *
FROM orders
WHERE total_amt_usd < 500
LIMIT 10;



-- Solution for : https://learn.udacity.com/courses/ud198/lessons/f72745e9-2fc9-4439-9f9d-3dbcea46a6c3/concepts/ced05354-d943-4dac-9b1c-25b9e778fd19

SELECT name, website, primary_poc
FROM accounts
WHERE name = 'Exxon Mobil';


-- Solution for : https://learn.udacity.com/courses/ud198/lessons/f72745e9-2fc9-4439-9f9d-3dbcea46a6c3/concepts/4200aea4-f9b7-4092-b5e9-ec09c5bc8a92

-- Q1
SELECT id, account_id, (standard_amt_usd / standard_qty) AS unit_price
FROM orders
LIMIT 10;


-- Q2
SELECT id, account_id, ( poster_amt_usd/(standard_amt_usd + gloss_amt_usd + poster_amt_usd) ) AS per_revenue
FROM orders
LIMIT 10;


-- Solution for : https://learn.udacity.com/courses/ud198/lessons/f72745e9-2fc9-4439-9f9d-3dbcea46a6c3/concepts/5a28944f-e21e-48d8-ae25-bb695fd26da5
-- Q1
SELECT name
FROM accounts
WHERE name LIKE 'C%';

-- Q2
SELECT name
FROM accounts
WHERE name LIKE '%one%';

-- Q3
SELECT name
FROM accounts
WHERE name LIKE '%s';
