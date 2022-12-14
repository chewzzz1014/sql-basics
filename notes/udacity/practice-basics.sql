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


-- Solution for : https://learn.udacity.com/courses/ud198/lessons/f72745e9-2fc9-4439-9f9d-3dbcea46a6c3/concepts/5a28944f-e21e-48d8-ae25-bb695fd26da5
-- Q1
SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE sales_rep_id IN ('Walmart', 'Target', 'Nordstrom');

-- Q2
SELECT *
FROM web_events
WHERE channel IN ('organic', 'adwords');


-- Solution for : https://learn.udacity.com/courses/ud198/lessons/f72745e9-2fc9-4439-9f9d-3dbcea46a6c3/concepts/4ded649a-5557-477b-bea8-8012b50d0697

-- Q1.1
SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE name NOT IN ('Walmart', 'Target', 'Nordstrom');

-- Q1.2
SELECT *
FROM web_events
WHERE channel NOT IN ('organic', 'adwords');

-- Q2.1
SELECT name
FROM accounts
WHERE name NOT LIKE 'C%';

-- Q2.2
SELECT name
FROM accounts
WHERE name NOT LIKE '%one%';

-- Q2.3
SELECT name
FROM accounts
WHERE name NOT LIKE '%S';


Solution for : https://learn.udacity.com/courses/ud198/lessons/f72745e9-2fc9-4439-9f9d-3dbcea46a6c3/concepts/72ca3f61-d78a-4a71-a388-5ca2c47511ba

-- Q1

SELECT *
FROM orders
WHERE stansard_qty > 1000 AND poster_qty = 0 AND gloss_qty = 0;


-- Q2
SELECT name
FROM accounts
WHERE name NOT LIKE 'C%' AND name LIKE '%s';


-- Q3
SELECT occurred_at, gloss_qty
FROM orders
WHERE gloss_qty BETWEEN 24 AND 29;

-- Q4
SELECT *
FROM web_events 
WHERE channel IN ('organic', 'adwords') AND occurred_at BETWEEN '2016-01-01' AND '2017-01-01'
ORDER BY occurred_at DESC;


-- Solution for : https://learn.udacity.com/courses/ud198/lessons/f72745e9-2fc9-4439-9f9d-3dbcea46a6c3/concepts/9e00e8bc-af6b-4c69-8979-4d1e0e9bc751

-- Q1
SELECT id
FROM orders
WHERE gloss_qty > 4000 OR poster_qty > 4000;

-- Q2
SELECT *
FROM orders
WHERE standard_qty = 0 AND (gloss_qty > 1000 OR poster_qty > 1000);

--Q3
SELECT *
FROM accounts
WHERE (name LIKE 'C%' OR name LIKE 'W%') 
      AND (primary_poc LIKE '%ana%' OR primary_poc LIKE '%Ana%') 
       AND primary_poc NOT LIKE '%eana%';
