## SQL Aggregations

## NULL
- Datatype that specifies where no data exists in SQL
- Not zero, but cells where data does not exist
- Use `WHERE IS NULL` or `WHERE IS NOT NULL` because NULL is not a value but a property instead

## COUNT
- `SELECT COUNT(*)`: Return the number of rows that contain non-null data in all columns
- `SELECT COUNT(table_name.col_name)`: Return the number of non-null records in the specified column

## SUM
- `SELECT (table_name.col_name)`: Calculate the sum of all values in the specified column
- Treat NULL as 0
