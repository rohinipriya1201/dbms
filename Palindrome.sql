SET SERVEROUTPUT ON;

DECLARE
    a NUMBER := &a;
    b NUMBER := &b;
    t NUMBER;
BEGIN
    WHILE b <> 0 LOOP
        t := MOD(a, b);
        a := b;
        b := t;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('GCD = ' || a);
END;
/
