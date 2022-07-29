![image](https://user-images.githubusercontent.com/92832451/181703003-7b82f062-8c41-4444-9c54-db41ce1cb7a7.png)

![image](https://user-images.githubusercontent.com/92832451/181703019-efe239dc-9c48-4186-8a01-26e328a8d13a.png)


     CREATE TABLE person
     ( person_id SMALLINT UNSIGNED,
       fname VARCHAR(20),
       lname VARCHAR(20),
       eye_color ENUM('BR', 'BL', 'GR'),
       birth_date DATE,
       street VARCHAR(30),
       city VARCHAR(20),
       state VARCHAR (20),
       country VARCHAR(20),
       postal_code VARCHAR(20),
       CONSTRAINT pk_person PRIMARY KEY (person_id)
       );   
                 
     /* Primary key constraint (to specify primary key) with name pk_person for person_id column */
     
     
 - Check constraint:  constrains the allowable values for a particular column. Attach to column column.
      -   `eye_color CHAR(2) CHECK (eye_color IN ('BR', 'BL',GR')), `

-  Merge the check constraint into data type definition
      -   `eye_color ENUM('BR', 'BL', 'GR'), `

