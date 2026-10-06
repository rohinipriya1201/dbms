SET SERVEROUTPUT ON;

DECLARE
    a NUMBER;
    b NUMBER;
    t NUMBER;
BEGIN
    a := &a;
    b := &b;

    WHILE b != 0 LOOP
        t := MOD(a, b);
        a := b;
        b := t;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('GCD = ' || a);
END;
/
