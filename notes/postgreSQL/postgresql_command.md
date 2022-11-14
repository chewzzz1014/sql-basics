## Pre
- Log in to postgresql

```
psql --username=XXXX --dbname=XXXX
```
## Basics
- `\l`: List all database
- `\c database_name`: Connect to database. Connection is particular to database. Thus, this command will close old connection and acquire new connection using the specified database.
- `\d`: Display tables in database. `\d table_name` to view details (like columns, datatype etc) about a specific table.

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


