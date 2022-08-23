## COUNT()
- COUNT(\*): Return count of all records in result set regardless of NULL values.
- COUNT(column): Return count of all records containing non-null values only
```
SELECT COUNT(*) as total_customers
FROM Customers;
```

```
SELECT COUNT(country) AS customers_in_uk
FROM Customers
WHERE country = "UK";
```

## COUNT DISTINCT
```
SELECT COUNT(DISTINCT country)
FROM Customers;
```

## COUNT with GROUP BY
```
-- Number of customers for each country
SELECT country, COUNT(*) customers
FROM Customers
GROUP BY country;
```
