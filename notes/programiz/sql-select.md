## SELECT
```
SELECT first_name, last_name
FROM customers;
```

## SELECT ALL
- SELECT all columns using *

```
SELECT * 
FROM Customers;
```

## SELECT FROM WHERE Clause
```
SELECT *
FROM Customers
WHERE last_name = "Doe";
```

## SELECT DISTINCT
- Select uniue rows from table
```
-- unique combination of country and first_name
SELECT DISTINCT country, first_name
FROM Customers;
```

## SELECT AS Alias
```
SELECT customer_id id, first_name AS name
FROM Customers;
```
```
SEELCT CONCAT(first_name, " ", last_name) full_name
FROM Customers;
```
