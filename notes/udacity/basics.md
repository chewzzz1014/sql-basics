## Entity Relationship Diagram
- Entity, attributre and relationship between datasets.


## Basic SQL Statement
- `CREATE TABLE` : creates a new table in a database.
- `DROP TABLE`: removes a table in a database.
- `SELECT`: read data and display it. This is called a query.
- SQL is case insensitive.
- End SQL statement with semicolon (not mandatory)


## SELECT ... FROM ...
- `SELECT`: column(s) you want to be given the data for.
- `FROM`: which table(s) you want to select the columns. Notice the columns need to exist in this table.
- `SELECT * FROM orders` : Select all columns from table orders
- SELECT did not create a new table, but display the output of this command only


## LIMIT ...
- `LIMIT num_of_rows`: Limit number of rows displayed.
- Always the very last part of a query.
              
       SELECT *
       FROM table_name
       LIMIT 12;

## ORDER BY col
- `ORDER BY column_name`: sort results into ascending order using the data in any column
- Add `DESC` after column to flip the order (into descending order)
- Must appear `after FROM` and before `LIMIT`

       SELECT *
       FROM table_name
       ORDER BY column_name DESC
       LIMIT 12;
       
 
 ## ORDER BY col1, col2
 - ordering occurs using the leftmost column in your list first, then the next column from the left, and so on


## WHERE ...
- `WHERE`: display subsets of tables based on conditions that must be met.
- Appear `after FROM` and `before ORDER BY and LIMIT`
- <, >, <=, >=, =, !=
- Wrapped non-numerical value in single qoutes

       SELECT *
       FROM table_name
       WHERE [condition]
       ORDER BY column_name DESC
       LIMIT 12;

## Derived Column / Calculated Column / Computed Column
- Creating new column that is combination of existing columns
- `AS`: Alias to the new column
- Derived column along with its alias only exist for the duration of the query ( do not modify the table) 


      SELECT col1, (col3 * col4 )*100 AS col5, col6
      FROM table_name
      LIMIT 10;

## Logical Operator
  1. `LIKE`: 
      - Perform operations similar to using WHERE and =, but for case when did not know exactly what we're looking for.
      - Using wildcard that describes the matching (case sensitive). Eg: `WHERE referrer_url LIKE '%google%'`
      - % : Any num of chars
  2. `IN`: 
      - Perform operations similar to using WHERE and =, but for more than one condition.
      - For numeric or non-numeric
      - Eg: `WHERE name IN ('Walmart', 'Apple'); `
  3. `NOT`: 
      - Used with IN and LIKE to select all of the rows NOT LIKE or NOT IN.
      - To exclude certain conditions.
      - Eg: `WHERE referrer_url NOT LIKE '%google%'`
      - Eg: `WHERE name NOT IN ('Walmart', 'Apple'); `
  4. `AND & BETWEEN`: 
      - Combine operations where all combined conditions must be true
  5. `OR`: 
      - Combine operations where at least one of the combined conditions must be true.
