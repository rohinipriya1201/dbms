
SET SERVEROUTPUT ON;

CREATE TABLE Student (
    RollNo NUMBER PRIMARY KEY,
    Name VARCHAR2(30),
    Mark NUMBER
);

INSERT INTO Student VALUES (1, 'Rohini', 85);
INSERT INTO Student VALUES (2, 'Priya', 90);
INSERT INTO Student VALUES (3, 'Ammu', 80);

COMMIT;

DECLARE
    CURSOR c1 IS
        SELECT Name FROM Student;

    v_name Student.Name%TYPE;

BEGIN
    OPEN c1;

    LOOP
        FETCH c1 INTO v_name;

        EXIT WHEN c1%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(v_name);
    END LOOP;

    CLOSE c1;
END;
/
