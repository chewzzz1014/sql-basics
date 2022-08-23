- Used within WHERE or HAVING clauses.

## AND
- Both conditions must be true
```
SELECT *
FROM Customers
WHERE country = "USA" AND last_name = "Doe";
```

## OR
- Either or both conditions are true
```
SELECT *
FROM Customers
WHERE country = "name" OR last_name = "Doe";
```

## NOT
- Select data if the condition is FALSE
```
SELECT *
FROM Customers
WHERE NOT country = "name";
```
