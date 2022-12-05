## Pre
- Log in to postgresql

```
psql --username=XXXX --dbname=XXXX
```

```
psql <dbname> <username>
```

## Basics
- `\l`: List all database
- `\c database_name`: Connect to database. Connection is particular to database. Thus, this command will close old connection and acquire new connection using the specified database.
- `\d`: Display tables in database. `\d table_name` to view details (like columns, datatype etc) about a specific table.

## Datatype
- INT
- VARCHAR(length): Specify max length
- serial: make the column an INT with NOT NULL constraint, and automatically increment the integer when a new row is added.
- numeric(4, 1): 4 digits,where 1 digit is behind the decimal (1 decimal place).

## SQL ( always end with ; )


>Database


- Create database

```
CREATE DATABASE database_name; 
```
- Rename database

```
ALTER DATABASE database_name RENAME TO new_database_name;
```

- Drop database

```
DROP DATABSE database_name;
```


>Table


- Create table

```
CREATE TABLE table_name();

CREATE TABLE table_name(column_name DATATYPE CONSTRAINTS);
```

- Add column to existing table

```
ALTER TABLE table_name ADD COLUMN column_name DATATYPE CONSTRAINT;
```

- Drop column from existing table

```
ALTER TABLE table_name DROP COLUMN column_name;
```

- Rename column

```
ALTER TABLE table_name RENAME COLUMN column_name TO new_name;
```

- Add primary key / foreign key to existing table

```
ALTER TABLE table_name ADD PRIMARY KEY(column_name);
ALTER TABLE table_name ADD COLUMN column_name DATATYPE REFERENCES referenced_table_name(referenced_column_name);
```

- Add / edit constraint to existing table
```
ALTER TABLE table_name ADD UNIQUE(column_name);

ALTER TABLE table_name ALTER COLUMN column_name SET NOT NULL;
```

- Drop constraint 

```
ALTER TABLE table_name DROP CONSTRAINT constraint_name;
```

- Update table

```
UPDATE table_name SET column_name=new_value WHERE condition;
```

- Insert rows

```
INSERT INTO table_name(col_1, col_2...) VALUES (value_1, value_2...);

# fill in all columns
INSERT INTO table_name VALUES (value_1, value_2...);

# many rows
INSERT INTO characters(name, homeland, favorite_color)
VALUES('Mario', 'Mushroom Kingdom', 'Red'),
('Luigi', 'Mushroom Kingdom', 'Green'),
('Peach', 'Mushroom Kingdom', 'Pink');
```

- Select column

```
SELECT columns FROM table_name;
```

- Delete row

```
DELETE FROM table_name WHERE condition;
```


- Drop table

```
DROP TABLE table_name;
```

