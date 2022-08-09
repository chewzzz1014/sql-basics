## INNER JOIN
- `ON`: Specifies a logical statement to combine the table in from and join statements.
- Only return rows that appear in both tables.

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
        -- RIGHT OUTER JOIN
           ON o.id = a.id

## Left Join
- Include all rows from the left table, regardless whether they match the condition
- Unmatched rows have the column with empty cell, called NULL
- Unmatched rows stayed at the bottom of those rows that match

           SELECT *
           FROM left_table
           LEFT JOIN right_table
           -- LEFT OUTER JOIN

## Right Join
- Include all rows from the right table, regardless whether they match the condition
- Unmatched rows have the column with empty cell, called NULL
- Unmatched rows stayed at the bottom of those rows that match

           SELECT *
           FROM left_table
           RIGHT JOIN right_table

## Full Outer Join
- Return the inner join result set, as well as any unmatched rows from either of the two tables being joined

## Summary
|Type of Joins|Description|
|-------------|-----------|
|Inner Join | Only return rows that appear in both tables.|
|Left Join| ...|
|Right Join| ...|
