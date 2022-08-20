-- Solution for : https://learn.udacity.com/courses/ud198/lessons/cb2fcad1-4e52-44f4-8ae1-9dddac9144a4/concepts/63b85c37-b0b4-4400-ae34-5e0b405c4063

-- Q1
SELECT s.name
FROM
(SELECT *
FROM sales_reps s
JOIN region r
  ON s.region_id = r.id
JOIN accounts a
  ON s.id = s.sales_rep_id
JOIN orders o
  ON a.id = o.account_id
GROUP BY r.name
ORDER BY o.total_amt_usd DESC) sub;


-- Q2
-- For the region with the largest (sum) of sales total_amt_usd, how many total (count) orders were placed?

SELECT sub.name, sub.id, sub.total_orders
FROM
(SELECT r.name, r.id, SUM(total_amt_usd), COUNT(o.total) as total_orders
FROM orders o
JOIN accounts a
  ON o.account_id = a.id
JOIN sales_reps s
  ON a.sales_rep_id = s.id
JOIN region r
  ON r.id = s.region_id
GROUP BY 1, 2
ORDER BY 3 DESC) sub;

-- Q3
-- How many accounts had more total purchases than the (account name which has bought the most standard_qty paper throughout their lifetime as a customer)?

SELECT a.name, a.id, SUM(standard_qty) total_standard_paper
FROM accounts a
JOIN orders o
  ON a.id = o.account_id
GROUP BY 1, 2
HAVING 
total_standard_paper >  
(SELECT a.name, a.id, SUM(standard_qty) total_standard_paper
FROM orders o
JOIN accounts a
  ON o.account_id = a.id
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 1) inner;





