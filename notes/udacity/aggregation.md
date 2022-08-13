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

## MIN & MAX
- `MIN`: return the lowest number, earliest date, or non-numerical value as early in the alphabet as possible
- `MAX`: return the highest number, the latest date, or the non-numerical value closest alphabetically to “Z.”
- Ignores NULL values
- Can be used for non-numerical columns

## AVERAGE (AVG)
- `SELECT AVG(col)` 
- For numerical column only
- Ignore NULL values


## GROUP BY
- Allows creating segments that will aggregate independent from one another
- Can group by multiple columns
- GROUP BY can be used to aggregate data within subsets of the data. For example, grouping for different accounts, different regions, or different sales representatives.
- `Any column in the SELECT statement that is not within an aggregator must be in the GROUP BY clause.`
- Placed between WHERE and ORDER clause


            SELECT  id, SUM(product_qty), SUM(anotherProduct_qty)
            FROM table_name
            GROUP BY id;
            
            
            SELECT  id, name, SUM(product_qty), SUM(anotherProduct_qty)
            FROM table_name
            GROUP BY id, name
            ORDER BY id, name;

## SELECT DISTINCT
- Return the unique rows for all columns written in the SELECT statement

            -- Return the unique rows across all 3 columns
            SELECT DISTINCT column1, column2, column3
            FROM table1;

## HAVING
- `WHERE cannot filter aggregated column`
- HAVING is the clean way to filter a query that has been aggregated.
- The WHERE of aggregated query.

## Date
- General format: DD-MM-YYYY
- In database: `YYYY-MM-DD`           

## DATE_TRUNC

            
            SELECT DATE_TRUNC('day', occurred_at) AS day,
                   SUM(standard_qty) AS standard_qty_sum
            FROM orders
            GROUP BY DATE_TRUNC('day', occurred_at)
            ORDER BY DATE_TRUNC('day', occurred_at)
            
            
            
 |Result|Input|
 |------|-----|
 |2017-04-01 12:15:01|DATE_TRUNC("second", 2017-04-01 12:15:01)|
 |2017-04-01 00:00:00|DATE_TRUNC("day", 2017-04-01 12:15:01)|
 |2017-04-01 00:00:00|DATE_TRUNC("month", 2017-04-01 12:15:01)|
 |2017-04-01 00:00:00|DATE_TRUNC("year", 2017-04-01 12:15:01)|


## DATE_PART

 |Result|Input|
 |------|-----|
 |1|DATE_PART("second", 2017-04-01 12:15:01)|
 |1|DATE_PART("day", 2017-04-01 12:15:01)|
 |4|DATE_PART("month", 2017-04-01 12:15:01)|
 |2017|DATE_PART("year", 2017-04-01 12:15:01)|
