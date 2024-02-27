SET ECHO OFF;
SET SERVEROUTPUT OFF;

DROP TABLE courses CASCADE CONSTRAINTS;

CREATE TABLE courses (
    term VARCHAR2(10) NOT NULL,
    lineno NUMBER(4) NOT NULL,
    sno VARCHAR2(7) NOT NULL,
    a NUMBER(2) CHECK(a > 0),
    b NUMBER(2) CHECK(b > 0),
    c NUMBER(2) CHECK(c > 0),
    d NUMBER(2) CHECK(d > 0),
    PRIMARY KEY (term, lineno),
    FOREIGN KEY (sno) REFERENCES subject
);

INSERT INTO courses VALUES (
    'f96',
    1031,
    'csc226',
    90,
    80,
    65,
    50
);

INSERT INTO courses VALUES (
    'f96',
    1032,
    'csc226',
    90,
    80,
    65,
    50
);

INSERT INTO courses VALUES (
    'sp97',
    1031,
    'csc227',
    90,
    80,
    65,
    50
);

COMMIT;

CLEAR SCREEN;

SELECT
    *
FROM
    courses;