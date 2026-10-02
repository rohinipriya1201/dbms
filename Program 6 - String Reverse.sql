SET SERVEROUTPUT ON;

DECLARE
    s VARCHAR2(30) := 'HELLO';
    rev VARCHAR2(30) := '';
BEGIN
    FOR i IN REVERSE 1..LENGTH(s) LOOP
        rev := rev || SUBSTR(s, i, 1);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Original String = ' || s);
    DBMS_OUTPUT.PUT_LINE('Reversed String = ' || rev);
END;
/
