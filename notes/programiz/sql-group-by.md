## GROUP BY
- To group rows by one or more columns
- `GROUP BY is used in conjunction with aggregate functions such as MIN(), MAX(), SUM(), AVG(), COUNT()`
---


```
SELECT country, COUNT(*) AS number
FROM Customers
GROUP BY country;
```

```
SELECT country, state, MIN(age) as min_age
FROM Persons
GROUP BY country, state;
```

## GROUP BY With HAVING Clause
```
SELECT COUNT(customer_id), country
FROM Customers
GROUP BY country
HAVING COUNT(customer_id) > 1;
```

