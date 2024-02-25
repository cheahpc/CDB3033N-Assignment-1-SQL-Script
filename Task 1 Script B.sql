SPOOL 'Task 1 Script B Output.txt'

SET ECHO ON

SET FEEDBACK ON

SET LINESIZE 100

SET PAGESIZE 200

SET SERVEROUTPUT ON

-- Create the view
CREATE OR REPLACE VIEW course_avg AS
    SELECT
        DISTINCT sc.term                                             AS "Term",
        sc.lineno                                           AS "Line No",
        sc.sid                                              AS "Student ID",
        s.lname                                             AS "Last Name",
        s.fname                                             AS "First Name",
        ROUND(SUM((SC.POINTS/COM.MAXPOINTS)*COM.WEIGHT), 0) AS "Course Average"
    FROM
        students   s
        JOIN scores sc
        ON s.sid = sc.sid
        JOIN components com
        ON sc.term = com.term AND
        sc.lineno = com.lineno AND
        sc.compname = com.compname
    WHERE
        sc.term = '&1' AND
        sc.lineno = '&2'
    GROUP BY
        sc.term,
        sc.lineno,
        sc.sid,
        s.lname,
        s.fname,
        'Course Average';

-- Show the view
SELECT
    *
FROM
    course_avg;

SPOOL OFF