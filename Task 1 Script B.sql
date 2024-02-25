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
