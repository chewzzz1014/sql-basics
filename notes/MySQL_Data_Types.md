## MySQL Data Types
- characters, date (a.k.a temporal), numeric


### Character Data
- stored as either fixed-length or variable-length string
- fixed-length:  right-padded with spaces; Consume the same number of bytes
- variable-length string: opposite of fixed-length.
- When defining a character column, must specify the maximum size of any string to be stored in the column:

                    char(20)  /* fixed-length */
                    varchar(20) /*variable-length */
- maximum length for char columns is currently 255 bytes, whereas varchar col‐
umns can be up to 65,535 bytes.


### Character Sets
- characters that only a single byte / multiple bytes is needed to store each character
- View the supported charset in server

                mysql> SHOW CHARACTER SET;
                
### Text Data
- to store data that might exceed the 64 KB limit for varchar columns

![image](https://user-images.githubusercontent.com/92832451/181699370-41e69a74-23df-49c3-b73c-34666cddb9de.png)

- If the data being loaded into a text column exceeds the maximum size for that
type, the data will be truncated.
- Trailing spaces will not be removed when data is loaded into the column.
- The different text types are unique to MySQL


### Numerica Data
![image](https://user-images.githubusercontent.com/92832451/181699800-c6ae7796-0561-4e21-bb7b-1ebdecd4c54a.png)
- When you create a column using one of the integer types, MySQL will allocate an
appropriate amount of space to store the data

![image](https://user-images.githubusercontent.com/92832451/181699901-84bb8d8b-3218-4dac-9932-46b8f012e1ea.png)

- When using a floating-point type, we can specify a precision (the total number of
allowable digits both to the left and to the right of the decimal point) and a scale (the
number of allowable digits to the right of the decimal point), but they are not
required. [ represented as p and s ]
- data will be rounded if number of digits exceeds the scale and/or precision of
the column.


### Temporal Data
- Date and time

![image](https://user-images.githubusercontent.com/92832451/181700640-d1cccf1d-0c9e-4d04-af92-c1e292038885.png)

![image](https://user-images.githubusercontent.com/92832451/181700956-d177555e-d249-452a-847b-e4d54d440821.png)

