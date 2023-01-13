-- Q1
CREATE OR REPLACE VIEW REGISTRATION_GRADE_POINT 
AS
    SELECT matric, coursecode, sem_session, r.grade, credit, g.point
    FROM registration r
    JOIN grade_point g
    ON
        r.grade = g.grade;

SELECT * FROM REGISTRATION_GRADE_POINT;