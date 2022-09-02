## SELECT 
Tuple

In a SELECT statement, you can specify more than one value separated by a comma. For example, the query below selects a string literal, a numeric literal, and an arithmetic expression:
```
SELECT 'Alice', 170, 170*0.393701;
```
Such a set of values (or attributes, fields) is called a tuple (record, row). Actually, the result of the Hello World query is also a row with a single attribute.

## Alias
In a query, you may specify a name (alias) for each attribute of a tuple. To do so, you should use the keyword AS followed by a name for the value. If the attribute alias consists of several words or matches an SQL keyword, it should be stated in double-quotes. The query below illustrates the application of aliases:
```
SELECT 
  'Alice' AS name, 
  170 AS height_in_centimeters, 
  170*0.393701 AS "height in inches"
;
```
The query evaluation result is a tuple with three attributes: "name", "height_in_centimeters", and "height in inches". It's a good idea to specify human-readable aliases; alternatively, your data management system can generate some for you.

As you remember, SQL is designed to process data organized in tables. Actually, the result of the example query is also a table with column names specified in aliases and consisting of only one row.

## Code readability

SQL is case insensitive (keywords may be written in any case), so SELECT, select, SeLeCt, and seLEct are all valid. However, it is most common to type keywords in uppercase to emphasize them and improve code readability.

We also recommend using indentation, which is leaving a bit of free space to visually separate the line. There are different code style guides: use your intuition and follow with your team's preferences.

Compare the following formatting options of the same query. Which one would you prefer to read?

```
SELECT 'Bob' AS name, 160 AS "height in centimeters", 160*0.393701 AS "height in inches";

SELECT 
  'Bob' AS "name", 
  160 AS "height in centimeters", 
  160*0.393701 AS "height in inches"
;

SELECT 
  'Bob'        AS "name", 
  160          AS "height in centimeters", 
  160*0.393701 AS "height in inches"
;
```
