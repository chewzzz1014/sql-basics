|Keyword|Supported in Which Database System|
|---|---|
|TOP|SQL Server, MS Access|
|LIMIT| MySQL, PostgreSQL, SQLite|
|FETCH FIRST|Oracle|

## TOP
- Select a fixed number of rows from a database
```
-- Select last_name and first_name columns of first 2 rows
SELECT TOP 2 first_name, last_name
FROM Customers;
```

## LIMIT
```
SELECT first_name, age
FROM Customers
LIMIT 2;
```

## FETCH FIRST
```
SELECT *
FROM Customers
FETCH FIRST 2 ROWS ONLY;
```





