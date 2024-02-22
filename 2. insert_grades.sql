INSERT INTO subject VALUES (
  'csc226',
  'Introduction to Programming I'
);

INSERT INTO subject VALUES (
  'csc227',
  'Introduction to Programming II'
);

INSERT INTO subject VALUES (
  'csc343',
  'Assembly Programming'
);

INSERT INTO subject VALUES (
  'csc481',
  'Automata and Formal Languages'
);

INSERT INTO subject VALUES (
  'csc498',
  'Introduction to Database Systems'
);

INSERT INTO subject VALUES (
  'csc880',
  'Deductive Databases and Logic Programming'
);

INSERT INTO students VALUES (
  '1111',
  'Nandita',
  'Rajshekhar',
  'K'
);

INSERT INTO students VALUES (
  '2222',
  'Sydney',
  'Corn',
  'A'
);

INSERT INTO students VALUES (
  '3333',
  'Susan',
  'Williams',
  'B'
);

INSERT INTO students VALUES (
  '4444',
  'Naveen',
  'Rajshekhar',
  'B'
);

INSERT INTO students VALUES (
  '5555',
  'Elad',
  'Yam',
  'G'
);

INSERT INTO students VALUES (
  '6666',
  'Lincoln',
  'Herring',
  'F'
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

INSERT INTO components VALUES (
  'f96',
  1031,
  'exam1',
  100,
  30
);

INSERT INTO components VALUES (
  'f96',
  1031,
  'quizzes',
  80,
  20
);

INSERT INTO components VALUES (
  'f96',
  1031,
  'final',
  100,
  50
);

INSERT INTO components VALUES (
  'f96',
  1032,
  'programs',
  400,
  40
);

INSERT INTO components VALUES (
  'f96',
  1032,
  'midterm',
  100,
  20
);

INSERT INTO components VALUES (
  'f96',
  1032,
  'final',
  100,
  40
);

INSERT INTO components VALUES (
  'sp97',
  1031,
  'paper',
  100,
  50
);

INSERT INTO components VALUES (
  'sp97',
  1031,
  'project',
  100,
  50
);

INSERT INTO enrolls VALUES (
  '1111',
  'f96',
  1031
);

INSERT INTO enrolls VALUES (
  '2222',
  'f96',
  1031
);

INSERT INTO enrolls VALUES (
  '4444',
  'f96',
  1031
);

INSERT INTO enrolls VALUES (
  '1111',
  'f96',
  1032
);

INSERT INTO enrolls VALUES (
  '2222',
  'f96',
  1032
);

INSERT INTO enrolls VALUES (
  '3333',
  'f96',
  1032
);

INSERT INTO enrolls VALUES (
  '5555',
  'sp97',
  1031
);

INSERT INTO enrolls VALUES (
  '6666',
  'sp97',
  1031
);

INSERT INTO scores VALUES (
  '1111',
  'f96',
  1031,
  'exam1',
  90
);

INSERT INTO scores VALUES (
  '1111',
  'f96',
  1031,
  'quizzes',
  75
);

INSERT INTO scores VALUES (
  '1111',
  'f96',
  1031,
  'final',
  95
);

INSERT INTO scores VALUES (
  '2222',
  'f96',
  1031,
  'exam1',
  70
);

INSERT INTO scores VALUES (
  '2222',
  'f96',
  1031,
  'quizzes',
  40
);

INSERT INTO scores VALUES (
  '2222',
  'f96',
  1031,
  'final',
  82
);

INSERT INTO scores VALUES (
  '4444',
  'f96',
  1031,
  'exam1',
  83
);

INSERT INTO scores VALUES (
  '4444',
  'f96',
  1031,
  'quizzes',
  71
);

INSERT INTO scores VALUES (
  '4444',
  'f96',
  1031,
  'final',
  74
);

INSERT INTO scores VALUES (
  '1111',
  'f96',
  1032,
  'programs',
  400
);

INSERT INTO scores VALUES (
  '1111',
  'f96',
  1032,
  'midterm',
  95
);

INSERT INTO scores VALUES (
  '1111',
  'f96',
  1032,
  'final',
  99
);

INSERT INTO scores VALUES (
  '2222',
  'f96',
  1032,
  'programs',
  340
);

INSERT INTO scores VALUES (
  '2222',
  'f96',
  1032,
  'midterm',
  65
);

INSERT INTO scores VALUES (
  '2222',
  'f96',
  1032,
  'final',
  95
);

INSERT INTO scores VALUES (
  '3333',
  'f96',
  1032,
  'programs',
  380
);

INSERT INTO scores VALUES (
  '3333',
  'f96',
  1032,
  'midterm',
  75
);

INSERT INTO scores VALUES (
  '3333',
  'f96',
  1032,
  'final',
  88
);

INSERT INTO scores VALUES (
  '5555',
  'sp97',
  1031,
  'paper',
  80
);

INSERT INTO scores VALUES (
  '5555',
  'sp97',
  1031,
  'project',
  90
);

INSERT INTO scores VALUES (
  '6666',
  'sp97',
  1031,
  'paper',
  80
);

INSERT INTO scores VALUES (
  '6666',
  'sp97',
  1031,
  'project',
  85
);

COMMIT;