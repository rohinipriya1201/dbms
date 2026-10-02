
DECLARE
    a NUMBER := 12;
    b NUMBER := 18;
    t NUMBER;
BEGIN
    WHILE b != 0 LOOP
        t := MOD(a, b);
        a := b;
        b := t;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('GCD = ' || a);
END;
/
