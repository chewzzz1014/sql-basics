## Pre
- Log in to postgresql

```
psql --username=XXXX --dbname=XXXX
```
## Basics
- `\l`: List all database
- `\c database_name`: Connect to database. Connection is particular to database. Thus, this command will close old connection and acquire new connection using the specified database.
- `\d`: Display tables in database

## SQL ( always end with ; )

- Create database

```
CREATE DATABASE database_name; 
```
