## BETWEEN
- To match values in a range
```
SELECT *
FROM Orders
WHERE amount BETWEEN 300 AND 500;
```

## NOT BETWEEN
```
SELECT *
FROM Orders
WHERE amount NOT BETWEEN 300 AND 500;
```

## BETWEEN Textx
```
SELECT item, amount
FROM Orders 
WHERE item BETWEEN 'I' AND 'L';
```

```
SELECT item, amount
FROM Orders 
-- include L as well
WHERE item BETWEEN 'I' AND 'L~';
```
