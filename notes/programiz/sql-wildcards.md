## []

- `[]`: Represent any one character inside brackets
- Matched with U[KA]% : UK, UA, UAE...
```
SELECT *
FROM Customers
WHERE country LIKE 'U[KA]%';
```

## !
- `!`: Exclude characters from a string
- Matched with [!DR]: Any words that doesn't start with D or R
