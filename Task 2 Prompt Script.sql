SPOOL 'Task 2 Add Course.txt'

SET ECHO ON

SET FEEDBACK ON

SET LINESIZE 100

SET SERVEROUTPUT ON

-- Prompt user for input
ACCEPT p_term PROMPT 'Enter Term(eg. f99): '

ACCEPT p_lineno PROMPT 'Enter Line Number(eg. 1031): '

ACCEPT p_sno PROMPT 'Enter Subject Number(eg. ccs2233): '

ACCEPT p_grade_a PROMPT 'Enter Grade A value(eg. 80): '

ACCEPT p_grade_b PROMPT 'Enter Grade B value(eg. 70): '

ACCEPT p_grade_c PROMPT 'Enter Grade C value(eg. 60): '

ACCEPT p_grade_d PROMPT 'Enter Grade D value(eg. 50): '

-- Call the procedure and pass the input values
EXECUTE add_course('&p_term', '&p_lineno', '&p_sno', '&p_grade_a', '&p_grade_b', '&p_grade_c', '&p_grade_d' );

SPOOL OFF