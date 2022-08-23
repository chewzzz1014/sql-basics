## IN
```
SELECT first_name, country
FROM Customers
WHERE country IN ("USA", "UK");
```

```
SELECT first_name, country
FROM Customers
WHERE "USA" IN country;
```

```
SELECT first_name, country
FROM Customers

-- Duplicate value is ignore
WHERE country IN ("USA", "UK", "USA");
```

## NOT IN
```
SELECT first_name, country
FROM Customers
WHERE country NOT IN ("USA", "UK");
```
