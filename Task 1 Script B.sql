SELECT
    DISTINCT sc.term                                                                                  AS "Term",
    sc.lineno                                                                                AS "Line No",
    sc.sid                                                                                   AS "Student ID",
    s.lname                                                                                  AS "Last Name",
    s.fname                                                                                  AS "First Name",
    sc.compname                                                                              AS "Component Name",
    com.weight                                                                               AS "Weight",
    sc.points                                                                                AS "Points",
    com.maxpoints                                                                            AS "Max Points",
    (sc.points/com.maxpoints)*com.weight                                                     AS "Weighted Score",
    SUM((SC.POINTS/COM.MAXPOINTS)*COM.WEIGHT) OVER (PARTITION BY sc.term, sc.lineno, sc.sid) AS "Course Average"
FROM
    students   s
    JOIN scores sc
    ON s.sid = sc.sid
    JOIN components com
    ON sc.term = com.term AND
    sc.lineno = com.lineno AND
    sc.compname = com.compname
WHERE
    sc.sid = 6666
GROUP BY
    sc.term,
    sc.lineno,
    sc.sid,
    s.lname,
    s.fname,
    sc.compname,
    com.weight,
    sc.points,
    com.maxpoints
ORDER BY
    sc.term,
    sc.lineno,
    sc.sid,
    sc.compname;