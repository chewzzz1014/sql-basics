## ORDER BY 
- ASC or DESC
```
SELECT *
FROM Customers
ORDER BY first_name;
```

## ORDER BY With Multiple Columns
- Sort by first_name first then follow by age:
```
SELECT *
FROM Customers
ORDER BY first_name, age;
```
