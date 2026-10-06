SET SERVEROUTPUT ON;

DECLARE
    n NUMBER;
BEGIN
    n := &n;

    IF MOD(n, 2) = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Even Number');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Odd Number');
    END IF;
END;
/
