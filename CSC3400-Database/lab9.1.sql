-- Q1
CREATE OR REPLACE VIEW REGISTRATION_GRADE_POINT 
AS
    SELECT matric, coursecode, sem_session, r.grade, credit, g.point
    FROM registration r
    JOIN grade_point g
    ON
        r.grade = g.grade;

SELECT * FROM REGISTRATION_GRADE_POINT;

-- Q2
CREATE TABLE student_gpa(
    matric NUMBER,
    sem_session VARCHAR2(20),
    gpa NUMBER(4, 2),
    total_credit NUMBER
);

CREATE OR REPLACE PROCEDURE calculate_gpa(input_matric NUMBER, session VARCHAR)
IS
    temp_table registration%type;
    total_credit NUMBER := 0;
    total_grade_point NUMBER := 0;
    gpa NUMBER := 0;
BEGIN
    SELECT SUM(credit) INTO total_credit
    FROM registration
    WHERE matric = input_matric AND sem_session = session;
    
    
    dbms_output.put_line (total_credit);
END;
    
BEGIN
    calculate_gpa(214321, 'SEM 1 2021-2022');
END;
--SELECT DISTINCT matric, sem_session, SUM(credit)
--FROM registration
--GROUP BY matric, sem_session
--ORDER BY matric;