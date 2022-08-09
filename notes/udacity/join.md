## INNER JOIN
- `ON`: Specifies a logical statement to combine the table in from and join statements.

      -- Joining 2 tables
      SELECT table_1.*, table_2.*
      FROM database.table_1     -- First table that pulling data from
      JOIN database.table_2     -- Second table
          ON table_1.col_1 = table_2.col_1;
          
      -- Joining 3 tables
      SELECT *
      FROM table_1
      JOIN table_2
          ON table_1.pk = table_2.pk
      JOIN table_3
          ON table_2.pk = table_3.pk

## PRIMARY KEY & FOREIGN KEY
- `Primary Key`: Column where every row has unique row.
- `Foreign Key`: Columns in one table that's a primary key in a different table.

## Using Alias
- Specify the alias for a table in FROM statement
            
            
     SELECT o.*, a.*
     FROM demo.orders o
     JOIN demo.accounts a
          ON o.id = a.id
