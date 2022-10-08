## SQL Inner Join

- Only return rows where there's a match of the condition (ON...)
```
SELECT columns
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
```

- 3 Tables

```
SELECT columns
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name
INNER JOIN table2
ON table2.column_name = table1.column_name;
```

## SQL Left Join
- The SQL LEFT JOIN joins two tables based on a common column, and selects records that have matching values in these columns and remaining rows from the left table.

```
SELECT columns
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;
```

## SQL Right Join
- The SQL RIGHT JOIN joins two tables based on a common column, and selects records that have matching values in these columns and remaining rows from the right table.

```
SELECT columns
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;
```

## SQL Full Outer Join
- The SQL FULL OUTER JOIN joins two tables based on a common column, and selects records that have matching values in these columns and remaining rows from both of the tables.

```
SELECT columns
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name;
```
