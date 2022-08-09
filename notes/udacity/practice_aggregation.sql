-- Solution for : https://learn.udacity.com/courses/ud198/lessons/702c7d74-4000-497d-9330-92eeb994cd5d/concepts/fb36ad68-865d-487b-941a-9acc57327f54

-- Q1
SELECT SUM(poster_qty)
FROM orders;

-- Q2
SELECT SUM(standard_qty)
FROM orders;

-- Q3
SELECT SUM(total_amt_usd)
FROM orders;

--Q4
SELECT  standard_amt_usd + gloss_amt_usd
FROM orders;

--Q5
SELECT SUM(standard_amt_usd) / SUM(standard_qty)
FROM orders;


-- Solution for : https://learn.udacity.com/courses/ud198/lessons/702c7d74-4000-497d-9330-92eeb994cd5d/concepts/a3408dc7-476f-4f43-a44d-a6a0b31983a3

-- Q1
SELECT MIN(occurred_at)
FROM orders;

-- Q2
SELECT occurred_at
FROM orders
ORDER BY occurred_at
LIMIT 1;

-- Q3
SELECT MAX(occurred_at)
FROM web_events;

-- Q4
SELECT occurred_at
FROM web_events
ORDER BY occurred_at DESC
LIMIT 1;

-- Q5
SELECT AVG(standard_qty) mean_standard, AVG(poster_qty) mean_poster,
       AVG(gloss_qty) mean_gloss, AVG(standard_amt_usd) mean_standard_usd,
       AVG(gloss_amt_usd) mean_gloss_usd, AVG(poster_amt_usd) mean_poster_usd
FROM orders;
