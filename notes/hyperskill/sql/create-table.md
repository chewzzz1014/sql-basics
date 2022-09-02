## CREATE
Let's store information about university students in a new database. We can use the CREATE DATABASE statement for this. Our database will be named students:
```
CREATE DATABASE students;
```
This simple SQL query will create the database. In addition to that, we will need a few tables to organize the data.

## Creating a new table

To create a table, use the CREATE TABLE statement.

Let's keep working with our students database and create a table students_info that will contain four columns: student_id, name, surname and age.

The column student_idwill hold the unique student identifier of the INT type. The columns name and surname will have VARCHAR(30) data. The age column will hold INT values.
```
CREATE TABLE students_info ( 
    student_id INT, 
    name VARCHAR(30), 
    surname VARCHAR(30), 
    age INT
);
```
As a result, we have an empty table students_info:

![image](https://user-images.githubusercontent.com/92832451/188105391-9615a275-4b50-486e-9d89-97e132ffbc2c.png)

The query above illustrates the main idea of CREATE statement implementation. The table created this way will be very simple. Soon you will learn how to make more complex tables.

## Drop a database

Now you know how to create a database or a table, so let's find out how to delete them. To delete a database, you can use the DROP DATABASE statement.

The following SQL query drops the existing database students:
```
DROP DATABASE students; 
```
Keep in mind that if you drop the database, you will lose all the tables stored in it.

## Drop a table

As we've mentioned above, DROP DATABASE will delete all the tables in the database and the database itself. If you want to delete only a specific table, use the DROP TABLE statement.

Let's delete our students_info table with a simple SQL query:
```
DROP TABLE students_info; 
```
While the DROP DATABASE statement deletes all the tables inside the database, DROP TABLE statement deletes the table itself and all information stored in it.
