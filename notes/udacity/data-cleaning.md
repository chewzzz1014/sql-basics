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


