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


-- Solution for : https://learn.udacity.com/courses/ud198/lessons/702c7d74-4000-497d-9330-92eeb994cd5d/concepts/fdb62a79-77da-4c96-964a-9d3bcb49b3cc

-- Q1
SELECT a.name, o.occurred_date
FROM accounts a
JOIN orders o
       ON a.id = o.account_id
ORDER BY o.occurred_at
LIMIT 1;

-- Q2
SELECT SUM(o.total_amt_usd), a.name
FROM accounts a
JOIN orders o
       ON a.id = o.account_id
GROUP BY a.name;

-- Q3
SELECT w.occurred_at date, w.channel, a.name account_name
FROM accounts a
JOIN web_events w
       ON w.account_id = a.id
ORDEY BY date DESC
LIMIT 1;

-- Q4
SELECT channel, COUNT(*) 
FROM web_events
GROUP BY channel;

-- Q5
SELECT a.primary_poc primary_contact
FROM accounts a
JOIN web_events w
       ON a.id = w.account_id
ORDER BY w.occurred_at
LIMIT 1;

-- Q6
SELECT a.name, MIN(o.total_amt_usd)
FROM accounts a
JOIN orders o
       ON a.id = o.account_id
GROUP BY a.name
ORDER BY o.total_amt_usd;

-- Q7
SELECT r.name, COUNT(s.id) num_sales_reps
FROM sales_reps s
JOIN region r
       ON s.region_id = r.id
GROUP BY r.name
ORDER BY num_sales_reps;


-- Solution for : https://learn.udacity.com/courses/ud198/lessons/702c7d74-4000-497d-9330-92eeb994cd5d/concepts/d4838435-ef71-4ba0-8a65-2f81cbd4c737

-- Q1
SELECT a.name, AVG(o.standard_qty) standard_avg,
       AVG(o.poster_qty) poster_avg, AVG(o.gloss_qty) gloss_avg
FROM accounts a
JOIN orders o
       ON a.id = o.account_id
GROUP BY a.name;

-- Q2
SELECT a.name, AVG(o.standard_amt_usd) standard_avg,
       AVG(o.gloss_amt_usd) gloss_avg, AVG(o.poster_amt_usd) poster_avg
FROM accounts a
JOIN orders o
       ON a.id = o.account_id
GROUP BY a.name;

-- Q3
SELECT s.name, w.channel, COUNT(w.channel) channel_count
FROM sales_rep s
JOIN accounts a
       ON s.id = a.sales_rep_id
JOIN web_events w
       ON w.account_id = a.id
GROUP BY s.name, w.channel
ORDER BY channel_count DESC;

-- Q4
SELECT r.name, w.channel, COUNT(w.channel) channel_count
FROM sales_reps s
JOIN region r
       ON s.region_id = r.id
JOIN accounts a
       ON s.id = a.sales_rep_id
JOIN web_events w
       ON a.id = w.id
GROUP BY r.name, w.channel
ORDER BY channel_count DESC;








