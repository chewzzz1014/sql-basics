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

-- DROP TABLE student_gpa;

CREATE OR REPLACE PROCEDURE calculate_gpa
AS
    total_credit NUMBER := 0;
    total_grade_point NUMBER := 0;
    gpa NUMBER := 0;
    CURSOR student_info
    IS
        SELECT 
            DISTINCT matric, sem_session, 
            SUM(credit) as t_credit
        FROM registration r1
        GROUP BY matric, sem_session
        ORDER BY matric;
    CURSOR all_info 
    IS
        SELECT * FROM registration;
BEGIN
    FOR s1 IN student_info
    LOOP
        total_credit := s1.t_credit;
        total_grade_point := 0;
        FOR s2 IN all_info
        LOOP
            IF(s2.matric = s1.matric AND s2.sem_session = s1.sem_session)
            THEN
                CASE s2.grade
                    WHEN 'A' THEN total_grade_point := total_grade_point + (4*s2.credit);
                    WHEN 'A-' THEN total_grade_point := total_grade_point + 3.75*s2.credit;
                    WHEN 'B+' THEN total_grade_point := total_grade_point + 3.5*s2.credit;
                    WHEN 'B' THEN total_grade_point := total_grade_point + 3*s2.credit;
                    WHEN 'B-' THEN total_grade_point := total_grade_point + 2.75*s2.credit;
                    WHEN 'C+' THEN total_grade_point := total_grade_point + 2.5*s2.credit;
                    WHEN 'C' THEN total_grade_point := total_grade_point + 2*s2.credit;
                    WHEN 'C-' THEN total_grade_point := total_grade_point + 1.75*s2.credit;
                    WHEN 'D+' THEN total_grade_point := total_grade_point + 1.5*s2.credit;
                    WHEN 'D' THEN total_grade_point := total_grade_point + 1*s2.credit;
                    ELSE total_grade_point := total_grade_point + 0*s2.credit;
                END CASE;
            END IF;
        END LOOP;
            gpa := total_grade_point / total_credit;
            INSERT INTO student_gpa VALUES (s1.matric, s1.sem_session, ROUND(gpa, 2), total_credit);
    END LOOP;
    dbms_output.put_line (total_credit);
END;
    
BEGIN
    calculate_gpa();
END;

SELECT * FROM student_gpa;