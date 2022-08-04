## INNER JOIN
- `ON`: Specifies a logical statement to combine the table in from and join statements.

      SELECT table_1.*, table_2.*
      FROM database.table_1     -- First table that pulling data from
      JOIN database.table_2     -- Second table
          ON table_1.col_1 = table_2.col_1;
