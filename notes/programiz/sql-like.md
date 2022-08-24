## SQL Like
- Return a result set that matches the given string pattern.
- `%`: Wildcards character that means zero or more character

```
SELECT *
FROM Customers
WHERE last_name  LIKE "R%";
```

## _
- `_`: One character
- Start with U and follow by one character

```
SELECT *
FROM Customers
WHERE country LIKE 'U_';
```
