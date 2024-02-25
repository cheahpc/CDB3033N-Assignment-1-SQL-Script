/as SYSDBA

ALTER SESSION SET CONTAINER = PDB;

ALTER DATABASE OPEN;

-- conn pdb_user/user123@localhost:1521/pdb
-- conn pdb_user/user123@localhost:1521/gpdb

DESC subject;

DESC students;

DESC courses;

DESC components;

DESC enrolls;

DESC scrores;

SELECT
  *
FROM
  subject;

SELECT
  *
FROM
  students;

SELECT
  *
FROM
  courses;

SELECT
  *
FROM
  components;

SELECT
  *
FROM
  enrolls;

SELECT
  *
FROM
  scores;

SELECT
  *
FROM
  subject;

SELECT
  *
FROM
  components;

SELECT
  *
FROM
  courses;

CREATE TABLE subject (
  sno VARCHAR2(7) NOT NULL,
  stitle VARCHAR2(50),
  PRIMARY KEY (sno)
);

CREATE TABLE students (
  sid VARCHAR2(5) NOT NULL,
  fname VARCHAR2(20),
  lname VARCHAR2(20) NOT NULL,
  minit CHAR,
  PRIMARY KEY (sid)
);

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

CREATE TABLE components (
  term VARCHAR2(10) NOT NULL,
  lineno NUMBER(4) NOT NULL CHECK(lineno >= 1000),
  compname VARCHAR2(15) NOT NULL,
  maxpoints NUMBER(4) CHECK(maxpoints >= 0),
  weight NUMBER(2) CHECK(weight>=0),
  PRIMARY KEY (term, lineno, compname),
  FOREIGN KEY (term, lineno) REFERENCES courses
);

CREATE TABLE enrolls (
  sid VARCHAR2(5) NOT NULL,
  term VARCHAR2(10) NOT NULL,
  lineno NUMBER(4) NOT NULL,
  PRIMARY KEY (sid, term, lineno),
  FOREIGN KEY (sid) REFERENCES students,
  FOREIGN KEY (term, lineno) REFERENCES courses
);

CREATE TABLE scores (
  sid VARCHAR2(5) NOT NULL,
  term VARCHAR2(10) NOT NULL,
  lineno NUMBER(4) NOT NULL,
  compname VARCHAR2(15) NOT NULL,
  points NUMBER(4) CHECK(points >= 0),
  PRIMARY KEY (sid, term, lineno, compname),
  FOREIGN KEY (sid, term, lineno) REFERENCES enrolls,
  FOREIGN KEY (term, lineno, compname) REFERENCES components
);