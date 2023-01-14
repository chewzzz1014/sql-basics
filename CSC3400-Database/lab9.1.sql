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
    var_point NUMBER := 0;
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
                SELECT
                    point INTO var_point
                    FROM grade_point
                    WHERE grade = s2.grade;
                total_grade_point := total_grade_point + (var_point*s2.credit);
            END IF;
        END LOOP;
            gpa := total_grade_point / total_credit;
            INSERT INTO student_gpa VALUES (s1.matric, s1.sem_session, ROUND(gpa, 2), total_credit);
    END LOOP;
END;
    
BEGIN
    calculate_gpa();
END;

SELECT * FROM student_gpa;

-- Q3
CREATE TABLE student_cgpa(
    matric NUMBER,
    cgpa NUMBER
);

-- DROP TABLE student_cgpa;

CREATE OR REPLACE PROCEDURE calculate_cgpa
AS
    c_point NUMBER;
    c_credit NUMBER;
    cgpa NUMBER;
    var_point NUMBER;
    CURSOR student
    IS
        SELECT * FROM registration;
    CURSOR student_info
    IS
        SELECT DISTINCT matric FROM student_gpa;
BEGIN
    FOR s1 IN student_info
    LOOP
        c_point := 0;
        c_credit := 0;
        cgpa := 0;
        FOR s2 IN student
        LOOP
            IF (s1.matric = s2.matric)
            THEN
                SELECT
                    point INTO var_point
                    FROM grade_point
                    WHERE grade = s2.grade;
                c_point := c_point + (var_point*s2.credit);
                c_credit := c_credit + s2.credit;
            END IF;
        END LOOP;
        cgpa := c_point / c_credit;
        INSERT INTO student_cgpa VALUES (s1.matric, ROUND(cgpa, 2));
        -- dbms_output.put_line (s1.matric || ' ' || c_point/c_credit);
    END LOOP;
END;

BEGIN
    calculate_cgpa();
END;

SELECT * FROM student_cgpa;


-- Q4
CREATE TABLE deans_list(
    matric NUMBER,
    cgpa NUMBER
);

-- DROP TABLE deans_list;

CREATE OR REPLACE TRIGGER deans_list_trigger
AFTER
INSERT 
ON student_cgpa
FOR EACH ROW
WHEN (NEW.cgpa >= 3.75)
BEGIN
    INSERT INTO deans_list VALUES(:NEW.matric, :NEW.cgpa);
END;

SELECT * FROM deans_list;


-- Q5
DELETE FROM deans_list;
DELETE FROM student_cgpa;
DELETE FROM student_gpa;

-- Q6
INSERT INTO 