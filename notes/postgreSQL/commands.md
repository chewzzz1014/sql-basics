## Starting PostgreSQL Command Line
```
psql -U postgres

( after enter password, we will enter super user prompt )
( # indicate super user )
```

## List databases in server
```
\l
```

## List tables in database

```
\dt
```

## List Attributes in table
```
\d+ <table name>

(or)

\d <table name>
```

## Create User and Database
```
CREATE USER <username> WITH PASSWORD '<password>';
CREATE DATABASE <database name> WITH OWNER '<username>';
\q
```

## Connect to Database
```
psql <database name> <user name>
```
