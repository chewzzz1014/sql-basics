## SQL EXISTS
- executes the outer SQL query if the subquery is not NULL (empty result-set)

![image](https://user-images.githubusercontent.com/92832451/187400064-b415842e-ad27-42c0-90a7-61818afffd0b.png)


```
SELECT customer_id, first_name
FROM Customers
WHERE EXISTS(
  SELECT order_id
  FROM Orders
  WHERE Orders.customer_id = Customers.customer_id
);
```

## SQL NOT EXISTS
- NOT to inverse the EXISTS cluase
```
SELECT customer_id, first_name
FROM Customers
WHERE NOT EXISTS (
  SELECT order_id
  FROM Orders
  WHERE Orders.customer_id = Customers.customer_id
);
```

