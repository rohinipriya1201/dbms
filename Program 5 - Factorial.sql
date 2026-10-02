
DECLARE
    n NUMBER := 5;
    f NUMBER := 1;
BEGIN
    FOR i IN 1..n LOOP
        f := f * i;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Factorial = ' || f);
END;
/
