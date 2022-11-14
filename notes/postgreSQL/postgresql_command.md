## Pre
- Log in to postgresql

```
psql --username=XXXX --dbname=XXXX
```
## Basics
- `\l`: List all database
- `\c database_name`: Connect to database. Connection is particular to database. Thus, this command will close old connection and acquire new connection using the specified database.
- `\d`: Display tables in database. `\d table_name` to view details (like columns, datatype etc) about a specific table.

## Datatype
- INT
- VARCHAR(length): Specify max length

## SQL ( always end with ; )

- Create database

```
CREATE DATABASE database_name; 
```

- Create table

```
CREATE TABLE table_name();
```

- Add column to existing table

```
ALTER TABLE table_name ADD COLUMN column_name DATATYPE;
```

- Drop column from existing table

```
ALTER TABLE table_name DROP COLUMN column_name;
```

- Rename column

```
ALTER TABLE table_name RENAME COLUMN column_name TO new_name;
```

- Insert rows

```
INSERT INTO table_name(col_1, col_2...) VALUES (value_1, value_2...);

# fill in all columns
INSERT INTO table_name VALUES (value_1, value_2...);
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
