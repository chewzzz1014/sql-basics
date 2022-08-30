## SQL Subquery
- place a SQL query inside another query known as subquery
- Execute inner query -> Execute outer query

```
SELECT *
FROM Customers 
WHERE age = (
  SELECT MIN(age)
  FROM Customers
);
```

```
SELECT customer_id, first_name
FROM Customers
WHERE customer_id IN (
  SELECT customer_id
  FROM Orders
);
```

## Different ways to write query: SQL Subquery vs JOIN
JOIN
```
SELECT DISTINCT Customers.customer_id, Customers.first_name
FROM Customers
INNNER JOIN Orders
  ON Customers.customer_id = Orders.customer_id
ORDER BY Customers.customer_id;
```

Subquery
```
SELECT DISTINCT customer_id, first_name,
FROM Customers
WHERE customer_id IN(
    SELECT customer_id
    FROM Orders
)
ORDER BY customer_id;
```



