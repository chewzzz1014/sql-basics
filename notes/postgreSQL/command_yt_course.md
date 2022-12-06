## Set Up Server Using Command (in PSQL Shell)
1. `Server` prompt is the url of the remote server we want to connect
2. Use localhost (default) if we test on our own
3. Database, port, username can use default
4. password is the password we enter when we just installed the postgresql

## Set Up Server Using PgAdmin
1. Servers -> PostgreSQL

## Quit

```
\q
```

## List Database 
```
\l
```

## Create Database
```
CREATE DATABASE <database name>
```
 
## Connect to Server
```
psql -h localhost -p 5432 -U <username> <databasename>
```

## Connect to Database
```
\c <database name>
```
