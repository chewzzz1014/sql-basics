## SELECT FROM
You already know that SQL is designed to handle data structured as tables, which comes in handy in various application areas. You also know that to extract all the data from a table called "table_name", you should use the following query:
```
SELECT * FROM table_name;
```
In this topic, we'll learn more about the SELECT statement and how to extract preprocessed data from the table.

## Projection

Assume you have a table weather that stores information about the weather in London for the past 5 days.

![image](https://user-images.githubusercontent.com/92832451/188108342-6c700419-8947-4838-abe0-0e06353ce14a.png)

As you can see, there are a lot of attributes for every hour. Do we need all of them? Let's write a query that selects only the basic info to be displayed on a mobile phone screen, for example, day, hour, weather phenomena, temperature, feels like, and wind speed.
```
SELECT
    day, 
    hour,
    phenomena,
    temperature AS "temperature in Celsius",
    feels_like AS "feels like in Celsius",
    wind_speed AS "wind speed in m/s"
FROM
    weather
;
```
After the SELECT keyword, we list the columns that we want to select and specify aliases where needed. The query evaluation results in the following table:

![image](https://user-images.githubusercontent.com/92832451/188108457-2a04642c-01f5-4587-8ab3-7c9fa98a0d61.png)

The type of data extraction when you select a subset of table columns is called projection.

Here's a general schema for such queries: keyword SELECT, list of column names with optional aliases, keyword FROM, table name, and a semicolon to mark the end of the statement:
```
SELECT
    col1 [AS alias1], ..., colN [AS aliasN]  
FROM
    table_name
;
```


## Expressions

Now, let's imagine that for some reason we need to have different results based on the same data, for example, add columns that state the place, show the temperature in Fahrenheit, and estimate whether it feels colder than that.

```
  SELECT
      'London' AS place,
      day, 
      hour,
      phenomena,
      temperature*9/5+32 AS "temperature in Fahrenheit",
      feels_like < temperature AS "feels colder",
      wind_speed AS "wind speed in m/s"
  FROM
      weather
  ;
```

We specified the corresponding expressions for attributes place, temperature in Fahrenheit, and feels colder based on literals and column names. Yes, you can use column names in expressions as well! When the data management system executes your query, it will substitute the column names with the corresponding attribute value for each processed row.

## Logical table

A data management system hides the way your data is physically stored behind an abstract concept of a logical table. All you need to know to be able to run a query is the database schema—table names, column names and types—and appropriate access permissions. Internally, the query processor maps table and column references from queries to physical data such as files, network connections, and even the results of executing other queries.
