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
