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
     
