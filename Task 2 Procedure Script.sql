-- Stored Procedure for Adding courses
CREATE OR REPLACE PROCEDURE add_course(
    p_term VARCHAR2,
    p_lineno NUMBER,
    p_sno VARCHAR2,
    p_grade_a NUMBER,
    p_grade_b NUMBER,
    p_grade_c NUMBER,
    p_grade_d NUMBER
) AS
 -- Custom EXCEPTION
    e_null_grade EXCEPTION;
    e_term_format_violation EXCEPTION;
    e_lineno_format_violation EXCEPTION;
    e_grade_sequence EXCEPTION;
    e_grade_gap EXCEPTION;
 -- Associate with the error code
    PRAGMA EXCEPTION_INIT(e_null_grade, -20000);
    PRAGMA EXCEPTION_INIT(e_term_format_violation, -2001);
    PRAGMA EXCEPTION_INIT(e_lineno_format_violation, -20002);
    PRAGMA EXCEPTION_INIT(e_grade_sequence, -20003);
    PRAGMA EXCEPTION_INIT(e_grade_gap, -20004);
 -- Variable declaration
BEGIN
    DBMS_OUTPUT.PUT_LINE('Attempting to insert new course data...');
 -- Insert new course data
    INSERT INTO courses VALUES (
        LOWER(P_TERM),
        p_lineno,
        LOWER(p_sno),
        p_grade_a,
        p_grade_b,
        p_grade_c,
        p_grade_d
    );
 -- Handle custom exceptions
    IF (p_grade_a IS NULL) OR (p_grade_b IS NULL) OR (p_grade_c IS NULL) OR (p_grade_d IS NULL) THEN
        RAISE e_null_grade;
    END IF;

    IF (NOT REGEXP_LIKE(p_term, '^(f|sp|s|F|SP|S)\d{2}$')) THEN
        RAISE e_term_format_violation;
    END IF;

    IF (NOT REGEXP_LIKE(p_lineno, '^\d{4}$')) THEN
        RAISE e_lineno_format_violation;
    END IF;

    IF (p_grade_a < p_grade_b) OR (p_grade_b < p_grade_c) OR (p_grade_c < p_grade_d) THEN
        RAISE e_grade_sequence;
    END IF;

    IF (p_grade_a - p_grade_b < 10) OR (p_grade_b - p_grade_c < 10) OR (p_grade_c - p_grade_d < 10) THEN
        RAISE e_grade_gap;
    END IF;

    DBMS_OUTPUT.PUT_LINE('New course data inserted successfully!');
    COMMIT;
EXCEPTION
 -- Handle custom exceptions
    WHEN e_null_grade THEN
        DBMS_OUTPUT.PUT_LINE('Grade cannot be null!');
        DBMS_OUTPUT.PUT_LINE('Error code: ' || SQLCODE);
        ROLLBACK;
    WHEN e_term_format_violation THEN
        DBMS_OUTPUT.PUT_LINE('Term code should begin with "f", "sp", or "s" followed by 2 digits! eg. f19, sp20, s21');
        DBMS_OUTPUT.PUT_LINE('Error code: ' || SQLCODE);
        ROLLBACK;
    WHEN e_lineno_format_violation THEN
        DBMS_OUTPUT.PUT_LINE('Line number should be a 4 digits number! eg. "1031"');
        DBMS_OUTPUT.PUT_LINE('Error code: ' || SQLCODE);
        ROLLBACK;
    WHEN e_grade_sequence THEN
        DBMS_OUTPUT.PUT_LINE('Grade values should be in the sequence of A > B > C > D!');
        DBMS_OUTPUT.PUT_LINE('Error code: ' || SQLCODE);
        ROLLBACK;
    WHEN e_grade_gap THEN
        DBMS_OUTPUT.PUT_LINE('Each grade should have at least 10 points gap!');
        DBMS_OUTPUT.PUT_LINE('Error code: ' || SQLCODE);
        ROLLBACK;
 -- Handle system exceptions
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE('Duplicate value on index. This course already exists!');
        DBMS_OUTPUT.PUT_LINE('Error code: ' || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('Error message: ' || SQLERRM);
        ROLLBACK;
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Insert operation failed!');
        DBMS_OUTPUT.PUT_LINE('Error code: ' || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('Error message: ' || SQLERRM);
        ROLLBACK;
END;