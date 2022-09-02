## Basic data types 
As you already know, SQL is a language used for working with different types of data organized into a table. Usually, data values from the same column in a table have the same meaning and type. For example, a table Car may look like this:

![image](https://user-images.githubusercontent.com/92832451/188098751-8fbebe26-2ecf-4190-bab8-9e4e21898aba.png)

We see that values in the manufacture yearcolumn are integer numbers, values in price are decimal, and values in electricity are boolean. SQL databases usually require that each column in a database table has a name and a data type. The columndata type restricts the set of values that can be stored in the column and defines a set of possible operations on them.

ANSI standard defines a pretty complex set of data types. Besides, database vendors usually add their non-standard data options. In this topic, we will consider a very basic subset of data types: INTEGER, FLOAT, DECIMAL, VARCHAR, and BOOLEAN.

## Numerical data types

INTEGER is a numeric data type that represents some range of mathematical integers (usually from -2147483648 to +2147483647).INTEGER type is good for counters, numeric identifiers, and any integer business value you can imagine that fits the scale range.

In everyday life, we usually face decimal numbers quite a lot: for example, when measuring body temperature (36.6 degrees Celsius) or counting our precious finances ($103050.79). SQL supports a special data type for such values – DECIMAL(precision, scale).

This type has two parameters: precision and scale.
- Scale is the count of digits to the right of the decimal point.
- Precision is the total count of digits in the number.

![image](https://user-images.githubusercontent.com/92832451/188098862-292bdd68-b20c-4875-9c89-54f82cbefc3a.png)

The FLOAT data type is an approximate numeric data type used for floating-point numbers. With the FLOAT data type, we can store very large or very small numbers. Also, it is used for calculations that require fast processing. The FLOAT data type has an optional parameter n that specifies the precision and storage size (from 1 to 53).

By the way, sometimes in SQL, you can encounter the REAL data type. And so REAL isFLOAT(24), or FLOAT of certain accuracy.

## Text

Of course, one may want to process something other than numeric data, and SQL supports a family of data types designed to represent text data. Let's consider one of them, quite universal and basic – VARCHAR(n).

This type represents a string of symbols of varying lengths not longer than n. For example, one can insert the strings apple, plum, and peach into a column with the type VARCHAR(5). The strings orange and banana will exceed the length restriction and the system will either truncate them or generate an error if one tries to insert such long values.

## Boolean

The BOOLEAN type represents boolean logic values: either TRUE or FALSE. This simple data type can be utilized for any attributes with flag semantics, for example, whether a client has visited a competitor's site.

## Who defines types and how?

As a database user, you should just know the types of table columns you utilize to be able to process them correctly. However, as a software engineer, you should also know how to create a table and define the column types.

Let's consider an example of an SQL query that defines a table census with five columns: id of type INTEGER, name of type VARCHAR(20), birth_place_latitude of type REAL, year_income of type DECIMAL(20,3), and is_parent of type BOOLEAN.

```
CREATE TABLE census (
    id INTEGER,
    name VARCHAR(20),
    birth_place_latitude REAL,
    year_income DECIMAL(20,3),
    is_parent BOOLEAN
);
```

```
CREATE TABLE table_name (
    column_name_1 column_type_1,
    ..., 
    column_name_n column_type_n
);
```
