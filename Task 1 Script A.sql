SPOOL 'Task 1 Script A Output.txt'

SET ECHO ON

SET FEEDBACK ON

SET LINESIZE 100

SET PAGESIZE 200

SET SERVEROUTPUT ON

-- Accept user input for term and minimum weight
ACCEPT p_term CHAR PROMPT 'Enter Term (e.g. f96): '

ACCEPT p_min_weight CHAR PROMPT 'Enter Minimum Weight (e.g. 25): '

-- Begin query script
SELECT
    DISTINCT UPPER(s.sno)                                             AS "Subject No",
    UPPER(s.stitle)                                          AS "Subject Title",
    REPLACE(REPLACE(cm.term, 'f', 'Fall-'), 'sp', 'Spring-') AS "Term",
    INITCAP(cm.compname)                                     AS "Component Name",
    cm.maxpoints                                             AS "Max Points",
    cm.weight                                                AS "Component Weight"
FROM
    subject    s
    JOIN courses cr
    ON s.sno = cr.sno
    JOIN components cm
    ON cr.term = cm.term
WHERE
    cm.term = '&p_term' AND
    cm.weight >= '&p_min_weight';

SPOOL OFF