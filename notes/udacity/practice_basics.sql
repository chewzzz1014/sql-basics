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

