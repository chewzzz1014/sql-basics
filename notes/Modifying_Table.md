## insert, update, delete, select


### insert
- Main components of insert:
   - Name of table 
   - Name of column
   - Value to be added

- How values are generated for numeric primary keys
   -  Look at the largest value currently in the table and add one.
   -  Let the database server provide the value for you.
   
- `ALTER TABLE person MODIFY person_id SMALLINT UNSIGNED AUTO_INCREMENT;`

- 
