SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := 10;
    s NUMBER := 0;
BEGIN
    FOR i IN 1..n LOOP
        s := s + i;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Sum of Series = ' || s);
END;
/
