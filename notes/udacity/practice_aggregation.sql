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


-- Solution for : https://learn.udacity.com/courses/ud198/lessons/702c7d74-4000-497d-9330-92eeb994cd5d/concepts/a680b2a7-2d1c-4292-8d96-3b4f5dc51f12

-- Q1
SELECT a.id, a.name, r.id, r.name
FROM sales_reps s
JOIN region r 
       ON s.region_id = r.id
JOIN accounts a
       ON s.id = a.sales_rep_id;
     
SELECT DISTINCT id, name
FROM accounts;


-- Q2
SELECT DISTINCT s.id, s.name, COUNT(*) num_accounts
FROM sales_reps s
JOIN accounts a
       ON s.id = a.sales_rep_id;
GROUP BY s.id, s.name
ORDER BY num_accounts;

SELECT DISTINCT id, name
FROM sales_reps;


-- Solution for : https://learn.udacity.com/courses/ud198/lessons/702c7d74-4000-497d-9330-92eeb994cd5d/concepts/4daf9eeb-1940-4cab-8ea6-9a20647a99db

-- Q1
SELECT s.name, s.id, COUNT(*) num_of_account
FROM sales_reps s
JOIN accounts a
       ON s.id = a.sales_rep_id
GROUP BY s.name, s.id
HAVING COUNT(*) > 5
ORDER BY num_of_account;


-- Q2
SELECT a.id, a.name, COUNT(*) num_of_orders
FROM accounts a
JOIN orders o
       ON a.id = o.account_id
GROUP BY a.id, a.name
HAVING COUNT(*) > 20
ORDER BY num_of_orders;


-- Q3
SELECT a.id, a.name, COUNT(*) num_of_orders
FROM accounts a
JOIN orders o
       ON a.id = o.account_id
GROUP BY a.id, a.name
ORDER BY COUNT(*)
LIMIT 1;

-- Q4
SELECT a.id, a.name, SUM(o.total_amt_usd) total_amt_orders
FROM accounts a
JOIN orders o
       ON a.id = o.account_id
GROUP BY a.id, a.name
HAVING SUM(o.total_amt_usd) > 30000;

-- Q5
SELECT a.id, a.name, SUM(o.total_amt_usd) total_amt_orders
FROM accounts a
JOIN orders o
       ON a.id = o.account_id
GROUP BY a.id, a.name
HAVING SUM(o.total_amt_usd) < 1000
ORDER BY total_amt_orders;

-- Q6
SELECT a.id, a.name, SUM(total_amt_usd) total_spent
FROM accounts a
JOIN orders o
       ON a.id = o.account_id;
GROUP BY a.id, a.name
ORDER BY total_spent DESC
LIMIT 1;

-- Q7
SELECT a.id, a.name, SUM(total_amt_usd) total_spent
FROM accounts a
JOIN orders o
       ON a.id = o.account_id;
GROUP BY a.id, a.name
ORDER BY total_spent
LIMIT 1;

-- Q8
SELECT a.id, a.name, w.channel, COUNT(w.channel) freq_used_facebook
FROM accounts a
JOIN web_events w
       ON a.id = w.account_id;
GROUP BY a.id, a.name
HAVING w.channel = 'facebook' AND COUNT(w.channel) > 6
ORDER BY freq_used_facebook DESC;

-- Q9
SELECT a.id, a.name, w.channel, COUNT(*) freq_used_channel
FROM accounts a
JOIN web_events w
       ON a.id = w.account_id
WHERE w.channel = 'facebook'
GROUP BY a.id, a.name, w.channel
ORDER BY freq_used_channel DESC
LIMIT 1;

-- Q10
SELECT a.id, a.name, w.channel, COUNT(*) use_of_channel
FROM accounts a
JOIN web_events w
       ON a.id = w.account_id
GROUP BY a.id, a.name, w.channel
ORDER BY use_of_channel DESC
LIMIT 10;


-- Solution for : https://learn.udacity.com/courses/ud198/lessons/702c7d74-4000-497d-9330-92eeb994cd5d/concepts/a2ac1fbb-beb4-4935-9d9f-121ef251da29

-- Q1
SELECT DATE_PART("year", occurred_at) year, SUM(total_amt_usd)
FROM orders
GROUP BY 1
ORDER BY 2 DESC;


--Q2
SELECT DATE_PART("month", occurred_at) month, SUM(total_amt_usd)
FROM orders
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

-- Q3
SELECT DATE_PART("year", occurred_at), COUNT(*) total_sales
FROM orders
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

-- Q4
SELECT DATE_PART("month", occurred_at), COUNT(*) total_sales
FROM orders
WHERE BETWEEN '2014-01-01' AND '2017-01-01'
GROUP BY 1
ORDER BY 2 DESC;

-- Q5
SELECT SELECT_PART("month", o.occurred_at), SUM(o.gloss.amt_usd) total_amt_gloss_spent
FROM orders o
JOIN accounts a
       ON o.account_id = a.id;
WHERE a.name = 'Walmart'
GROUP BY 1
ORDER BY 2 DESC;


-- Solution for : https://learn.udacity.com/courses/ud198/lessons/702c7d74-4000-497d-9330-92eeb994cd5d/concepts/e943ef22-1951-44e7-a244-b27792a74911

-- Q1
SELECT account_id, 
       total_amt_usd,
       CASE WHEN total_amt_usd >= 3000 THEN 'Large' ELSE 'Small' END AS order_level
FROM orders;

-- Q2
SELECT CASE WHEN total>= 2000 THEN "At Least 2000"
            WHEN total >= 1000 AND total <= 2000 THEN "Between 1000 and 2000"
            ELSE "Less than 1000" END AS orders_cat.
            COUNT(*) AS order_count
FROM orders;

-- Q3
SELECT a.name, SUM(o.total_amt_usd) AS total_sales_all_order,
       CASE WHEN SUM(o.total_amt_usd) > 200000 THEN "Greater than 200,000"
            WHEN SUM(o.total_amt_usd) >=100000 AND SUM(o.total_amt_usd)<=200000 THEN "Between 100,000 and 200,000"
            ELSE "Under 100,000" END AS level
FROM orders o
JOIN accounts a
       ON o.account_id = a.id
GROUP BY a.name
ORDER BY total_sales_all_order DESC;


-- Q4
SELECT a.name, SUM(o.total_amt_usd) total_spent,
        CASE WHEN total_amt_usd >= 3000 THEN 'Large' ELSE 'Small' END AS order_level
FROM orders o
JOIN accounts a
       ON o.acocunt_id = a.id
WHERE o.occurred_at BETWEEN "2016-01-01" AND "2017-01-01"
GROUP BY a.name
ORDER BY 2 DESC;

       

-- Q5
SELECT s.name, COUNT(*) num_orders,
       CASE WHEN COUNT(*) > 200 THEN "top" ELSE "not" END AS more_than_200
FROM orders o
JOIN acocunts a
       ON a.id = o.account_id
JOIN sales_reps s
       ON s.id = a.sales_rep_id
GROUP BY 1
ORDER BY 2 DESC;



-- Q6
SELECT s.name, COUNT(*) num_orders, SUM(o.total_amt_usd) total_spent,
       CASE WHEN COUNT(*)>200 OR SUM(o.total_amt_usd)>750000 THEN "top"
            WHEN COUNT(*)>150 OR SUM(o.total_amt_usd)>500000 THEN "middle"
            ELSE "low" END AS level
FROM orders o
JOIN accounts a
       ON o.account_id = a.id
JOIN sales_reps s
       ON s.id = a.sales_rep_id
GROUP BY 1
ORDER BY 2 DESC;









