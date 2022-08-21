## Data Cleaning
- Clean and re-structure messy data
- Convert columns to different data types
- Tricks for manipulating NULLs

## LEFT
- `LEFT`: Pull a specified number of characters for each row in a specified column starting at the beginning (or from the left)
- LEFT(column, num_chars)
- Eg, LEFT(phone_number, 3)

## RIGHT
- `RIGHT`: Pull a specified number of characters for each row in a specified column starting at the end (or from the right)
- RIGHT(column, num_chars)
- RIGHT(phone_number, 3)

## LENGTH
- `LENGTH`: Number of characters for each row of a specified column.
- LENGTH(column)

## POSITION
- `POSITION`: Takes a character and a column, and provides index where that character is for each row.
- Case sensitive
- Index of first position is 1
- POSITION(char, column)
- POSITION(',' IN city_state)

## STROPS
- `STROPS`: Provides same result as POSTION, but syntax is diff
- Case sensitive
- STROPS(column, char)
- STROPS(city_state, ',')

## LOWER
- Make all character lowercase
- LOWER(column)

## UPPER
- Make all character uppercase
- UPPER(column)

## CONCAT
- combine values from several columns into one column
- CONCAT(column_1, delimiter, column_2)

## Piping, ||
- combine values from several columns into one column
- column_1 ||''|| last_name

## TO_DATE
- TO_DATE('20170103','YYYYMMDD');
 ```
 DATE_PART("month", TO_DATE(month_string_literal, "month")) AS clean_month
 ```
 - date_part(text, timestamp): date_part('hour', timestamp '2001-02-16 20:38:40')

## CAST
- Change columns from one data type to another
- Convert a string to a date: `CAST(date_column AS DATE) AS formatted_date`

## ::
- Convert a string to a date: `date_column::DATE`

## COALESCE
- Returns the first non-null value passed for each row
- COALESCE(column, value_if_value_was_null)

