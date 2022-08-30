## SQL ANY 
-  compares a value of the first table with all values of the second table and returns the row in first table if there is a match with any value.

```
SELECT *
FROM Teachers
WHERE age = ANY(
  SELECT age
  FROM Students
);
```

## SQL ALL
- compares a value of the first table with all values of the second table and returns the row if there is a match with all values.

```
SELECT *
FROM Teachers
WHERE age > ALL(
    SELECT age
    FROM Students
);
```



