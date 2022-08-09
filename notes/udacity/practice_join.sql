-- Solution for : https://learn.udacity.com/courses/ud198/lessons/279f3b98-a2ca-46ef-975b-e943daffc30b/concepts/7280d5f4-a6a2-4f06-abde-c154cf13c606

-- Q1
SELECT accounts.*, orders.*
FROM accounts
JOIN orders
     ON accounts.id = orders.id;
     
     
-- Q2
SELECT orders.standard_qty, orders.gloss_qty, orders.poster_qty, 
       accounts.website, accounts.primary_poc
FROM orders
JOIN accountss
    ON orders.id = accounts.id;


-- Solution for : https://learn.udacity.com/courses/ud198/lessons/279f3b98-a2ca-46ef-975b-e943daffc30b/concepts/e80fffa3-0f87-405e-8675-2d23a4dd51ce

-- Q1
SELECT a.primary_poc, w.occurred_at, w.channel, a.name
FROM accounts a
JOIN web_events w
    ON a.id = w.id
WHERE a.name = 'Walmart';

-- Q2
SELECT r.name, s.name, a.name
FROM region r
JOIN sales_reps s
    ON s.region_id = r.id
JOIN accounts a
    ON s.id = a.sales_rep_id
ORDER BY a.name;
    
-- Q3
SELECT r.name region, a.name account, (o.total_amt_usd / (o.total + 0.01)) unit_price
FROM region r
JOIN sales_reps s
     ON r.id = s.region_id
JOIN accounts a
     ON s.id = a.sales_rep_id
JOIN orders o
     ON o.account_id = a.id;
  
  
-- Solution for : https://learn.udacity.com/courses/ud198/lessons/279f3b98-a2ca-46ef-975b-e943daffc30b/concepts/4aef110e-56ee-447e-86cc-5103aa4b5b71

-- Q1 
SELECT r.name region_name, s.name sales_represent_name, a.name account_name
FROM region r
JOIN sales_reps s
     ON r.id = s.region_id
JOIN accounts a
     ON a.sales_rep_id = s.id
WHERE r.name = 'MidWest'
ORDER BY a.name;

-- Q2
SELECT r.name region_name, s.name sales_represent_name, a.name account_name
FROM sales_reps s
JOIN region r
     ON s.region_id = r.id
JOIN accounts a
     ON s.id = sales_rep_id
WHERE s.name LIKE 'S%' AND r.name = 'Midwest'
ORDER BY a.name;

-- Q3
SELECT r.name region_name, s.name sales_represent_name, a.name account_name
FROM sales_reps s
JOIN region r
     ON s.region_id = r.id
JOIN accounts a
     ON s.id = a.sales_rep_id
WHERE s.name LIKE 'K%' AND r.name = 'Midwest'
ORDER BY a.name;


-- Q4
SELECT r.name region_name, a.name account_name, o.total_amt_usd/(o.total+0.01) unit_price
FROM sales_reps s
JOIN region r
     ON r.name = s.region_id 
JOIN accounts a
     ON s.id = a.sales_rep_id
JOIN orders o
     ON a.id = o.account_id
WHERE o.standard_amt_usd > 100;

-- Q5
SELECT r.name region_name, a.name account_name, o.total_amt_usd/(o.total+0.01) unit_price
FROM sales_reps s
JOIN region r
     ON s.region_id = r.id
JOIN accounts a
     ON s.id = a.sales_rep_id
JOIN orders o
     ON a.id = o.account_id
WHERE o.standard_qty > 100 AND o.poster_qty > 50
ORDER BY unit_price;


-- Q6
SELECT r.name region_name, a.name account_name, o.total_amt_usd/(o.total+0.01) unit_price
FROM sales_reps s
JOIN region r
     ON s.region_id = r.id
JOIN accounts a
     ON s.id = a.sales_rep_id
JOIN orders o
     ON a.id = o.account_id
WHERE o.standard_qty > 100 AND o.poster_qty >50
ORDER BY unit_price DESC;

-- Q7
SELECT DISTINCT a.name account_name, w.channel channel
FROM account a
JOIN web_events
     ON a.id = w.account_id 
WHERE a.id = '1001';
     
     
-- Q8
SELECT o.occurred_at order_time, a.name account_name, o.total total, o.total_amt_usd total_amount_in_usd
FROM accounts a
JOIN orders o
     ON a.id = o.account_id
WHERE o.occurred_at BETWEEN '01-01-2015' AND '01-01-2016'
ORDER BY o.occurred_at DESC;










