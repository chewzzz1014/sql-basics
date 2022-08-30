## SQL HAVING
- The HAVING clause in SQL is used if we need to filter the result set based on aggregate functions such as MIN() and MAX(), SUM() and AVG() and COUNT().
- WHERE clause does not support aggregate functions. Also, GROUP BY must be used before the HAVING clause. 

```
SELECT COUNT(customer_id), country
FROM Customers
GROUP BY country
HAVING COUNT(customer_id)>1;
```

## HAVING vs WHERE

|HAVING|WHERE|
|---|---|
|checks the condition on a group of rows.|checks the condition on each individual row.|
|used with aggregate functions.|cannot be used with aggregate functions.|
|HAVING clause is executed after the GROUP BY clause.|WHERE clause is executed before the GROUP BY clause.|

```
SELECT customer_id, SUM(amount) AS tota;
FROM Orders
GROUP BY customer_id
HAVING SUM(amount)<500;
```
