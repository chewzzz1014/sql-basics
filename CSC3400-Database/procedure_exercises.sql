-- create procedure
create or replace PROCEDURE greetings 
AS 
BEGIN 
   dbms_output.put_line('Good Morning!'); 
END;

-- create procedure
CREATE OR REPLACE PROCEDURE hello 
IS
Greetings VARCHAR(20);
BEGIN
Greetings:= 'Hello World';
dbms_output.put_line (greetings);
END hello;