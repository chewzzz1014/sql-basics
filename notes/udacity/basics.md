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

       SELECT *
       FROM table_name
       WHERE [condition]
       ORDER BY column_name DESC
       LIMIT 12;
