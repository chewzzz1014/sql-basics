## SQL UNION
- Select rows from two or more tables
- If rows of tables are the same, those rows are only included once in the result set
- Column count in all tables must be the same.
- Data types of columns must be the same
- Column must be in the same order in each table
- Slower in comparison to the UNION ALL operator.

```
SELECT age
FROM Teachers
UNION
SELECT age
FROM Students;
```

## SQL UNION ALL
- Selects rows from two or more tables similar to UNION.
- However, UNION ALL doesn't ignore duplicate rows.
- Executes fast as there is no need to filter the result-sets by removing duplicate values.

```
SELECT age
FROM Teachers
UNION ALL
SELECT age
FROM Students
```

| SQL JOIN|SQL UNION|
|---|---|
|It is used to combine data into new columns from different tables.|It is used to combine data into new rows from the result of different queries.|
|It uses the common column in both of the tables to fetch the data.|It selects data from two tables and combines the output.|
|Any number of columns can be present in tables.|Column counts must be the same in both of the tables.|
|Data type of columns can be different.|Data type of columns must be the same.|
