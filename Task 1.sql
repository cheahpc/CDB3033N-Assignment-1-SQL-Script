-- Display subject details based on term and minimum weight

ACCEPT p_term CHAR PROMPT 'Enter the term (e.g., Fall-96): '
ACCEPT p_min_weight NUMBER PROMPT 'Enter the minimum weight: '

SELECT s.sno,
       UPPER(s.stitle) AS "Subject Title",
       REPLACE(REPLACE(c.term, 'f', 'Fall-'), 's', 'Spring-') AS Term,
       INITCAP(c.compname) AS "Component Name",
       c.maxpoints AS "Max Points",
       c.weight AS "Component Weight"
FROM subject s
JOIN courses c ON s.sno = c.sno
JOIN components comp ON c.term = comp.term AND c.lineno = comp.lineno
WHERE c.term = :p_term
AND c.weight >= :p_min_weight;


-- Task 1 b
-- Create a view to display student course averages

CREATE VIEW student_course_avg_view AS
SELECT e.term,
       e.lineno,
       e.sid,
       s.lname,
       s.fname,
       ROUND(SUM(comp.weight * sc.points) / SUM(comp.weight), 0) AS course_avg
FROM enrolls e
JOIN scores sc ON e.sid = sc.sid AND e.term = sc.term AND e.lineno = sc.lineno
JOIN components comp ON sc.term = comp.term AND sc.lineno = comp.lineno AND sc.compname = comp.compname
JOIN students s ON e.sid = s.sid
GROUP BY e.term, e.lineno, e.sid, s.lname, s.fname;

-- Query the results from the view based on the term and lineno

ACCEPT p_term_view CHAR PROMPT 'Enter the term for viewing course averages: '
ACCEPT p_lineno_view NUMBER PROMPT 'Enter the lineno for viewing course averages: '

SELECT * FROM student_course_avg_view
WHERE term = :p_term_view
AND lineno = :p_lineno_view;

```




























SET ECHO OFF; -- Clear output screen from showing the SQL statement

-- Define substitution variables for terms
DEFINE fallCode = 'f';

DEFINE springCode = 'sp';

DEFINE fallExpanded = 'Fall-';

DEFINE springExpanded = 'Spring-';

<<ASK_INPUT>>
ACCEPT P_TERM CHAR PROMPT 'Enter Term (e.g. f96): ';
ACCEPT P_MIN_WEIGHT CHAR PROMPT 'Enter Minimum Weight (e.g. 25): ';
 --  Check input values
IF((&P_MIN_WEIGHT < 0) OR
(&P_MIN_WEIGHT >100)) THEN
    DBMS_OUTPUT.PUT_LINE('!Error! -Minimum weight must be between 1 to 100.');
    GOTO ASK_INPUT;
ELSIF(&P_TERM NOT LIKE '&fallCode%' AND
&P_TERM NOT LIKE '&springCode%') THEN
    DBMS_OUTPUT.PUT_LINE('!Error! -Invalid term!');
    GOTO ASK_INPUT;
END IF;

SELECT
    DISTINCT UPPER(S.SNO) AS "Subject No",
    UPPER(S.STITLE) AS "Subject Title",
    REPLACE(REPLACE(CM.TERM,
    '&fallCode',
    '&fallExpanded'),
    '&springCode',
    '&springCode') AS "Term",
    INITCAP(CM.COMPNAME) AS "Component Name",
    CM.MAXPOINTS AS "Max Points",
    CM.WEIGHT AS "Component Weight"
FROM
    SUBJECT S
    JOIN COURSES CR
    ON S.SNO = CR.SNO
    JOIN COMPONENTS CM
    ON CR.TERM = CM.TERM
WHERE
    CM.TERM = '&p_term' AND
    CM.WEIGHT >= '&p_min_weight';
/