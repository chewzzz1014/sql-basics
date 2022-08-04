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
