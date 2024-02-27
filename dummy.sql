/as SYSDBA

ALTER SESSION SET CONTAINER = PDB;

ALTER DATABASE OPEN;

SET ECHO OFF

-- conn pdb_user/user123@localhost:1521/pdb
-- conn pdb_user/user123@localhost:1521/gpdb
-- sqlplus pdb_user/user123@localhost:1521/pdb
-- sqlplus pdb_user/user123@localhost:1521/gpdb

-- @Task_1_Script_B.sql
-- @Task_1_Script_B.sql 'f96' '1031';
-- @Task_1_Script_B.sql 'f96' '1032';
-- @Task_1_Script_B.sql 'f96' '1515';
-- @Task_1_Script_B.sql 'sp97' '1031';
-- @Task_1_Script_B.sql 'sp97' '1032';
-- @Task_1_Script_B.sql 'sp97' '1515';
-- @Task_1_Script_B.sql 'sa99' '50';

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

TASK 1 SCRIPT A - TEST 1: 'f96' | '0'
TASK 1 SCRIPT A - TEST 2: 'f96' | '120'
TASK 1 SCRIPT A - TEST 3: 'f96' | '50'
TASK 1 SCRIPT A - TEST 4: 'sp97' | '0'
TASK 1 SCRIPT A - TEST 5: 'sp97' | '10'
TASK 1 SCRIPT A - TEST 6: 'sp97' | '90'
TASK 1 SCRIPT A - TEST 7: 'sa99' | '50'

@"c:\Users\MrChe\OneDrive - cheahpc\Documents\UOW Malaysia KDU Penang University College 2\Y2 Sem 1\1.1 DBP CDB3033N\Assignment\2. WIP\Script\Task 1 Script B.sql"

TASK 1 SCRIPT B - TEST 1: 'f96' | '1031'
TASK 1 SCRIPT B - TEST 2: 'f96' | '1032'
TASK 1 SCRIPT B - TEST 3: 'f96' | '1515'
TASK 1 SCRIPT B - TEST 4: 'sp97' | '1031'
TASK 1 SCRIPT B - TEST 5: 'sp97' | '1032'
TASK 1 SCRIPT B - TEST 6: 'sp97' | '1515'
TASK 1 SCRIPT B - TEST 7: 'sa99' | '50'

@"c:\Users\MrChe\OneDrive - cheahpc\Documents\UOW Malaysia KDU Penang University College 2\Y2 Sem 1\1.1 DBP CDB3033N\Assignment\2. WIP\Script\Task 1 Script B.sql" 'f96' '1031';

@"c:\Users\MrChe\OneDrive - cheahpc\Documents\UOW Malaysia KDU Penang University College 2\Y2 Sem 1\1.1 DBP CDB3033N\Assignment\2. WIP\Script\Task 1 Script B.sql" 'f96' '1032';

@"c:\Users\MrChe\OneDrive - cheahpc\Documents\UOW Malaysia KDU Penang University College 2\Y2 Sem 1\1.1 DBP CDB3033N\Assignment\2. WIP\Script\Task 1 Script B.sql" 'f96' '1515';

@"c:\Users\MrChe\OneDrive - cheahpc\Documents\UOW Malaysia KDU Penang University College 2\Y2 Sem 1\1.1 DBP CDB3033N\Assignment\2. WIP\Script\Task 1 Script B.sql" 'sp97' '1031';

@"c:\Users\MrChe\OneDrive - cheahpc\Documents\UOW Malaysia KDU Penang University College 2\Y2 Sem 1\1.1 DBP CDB3033N\Assignment\2. WIP\Script\Task 1 Script B.sql" 'sp97' '1032';

@"c:\Users\MrChe\OneDrive - cheahpc\Documents\UOW Malaysia KDU Penang University College 2\Y2 Sem 1\1.1 DBP CDB3033N\Assignment\2. WIP\Script\Task 1 Script B.sql" 'sp97' '1515';

@"c:\Users\MrChe\OneDrive - cheahpc\Documents\UOW Malaysia KDU Penang University College 2\Y2 Sem 1\1.1 DBP CDB3033N\Assignment\2. WIP\Script\Task 1 Script B.sql" 'sa99' '50';

Task 2 - Test 1: '' | 2023 | 'csc880' | 85 | 70 | 60 | 40
Task 2 - Test 2: 's00' | '' | 'csc880' | 85 | 70 | 60 | 40
Task 2 - Test 3: 's00' | 2023 | '' | 85 | 70 | 60 | 40
Task 2 - Test 4: 's00' | 2023 | 'csc880' | '' | 70 | 60 | 40
Task 2 - Test 5: 's00' | 2023 | 'csc880' | 85 | '' | 60 | 40
Task 2 - Test 6: 's00' | 2023 | 'csc880' | 85 | 70 | '' | 0
Task 2 - Test 7: 's00' | 2023 | 'csc880' | 85 | 70 | 60 | ''
Task 2 - Test 8: 'f999' | 2023 | 'csc880' | 85 | 70 | 60 | 40
Task 2 - Test 9: 'sss' | 2023 | 'csc880' | 85 | 70 | 60 | 40
Task 2 - Test 10: 'y00' | 2023 | 'csc880' | 85 | 70 | 60 | 40
Task 2 - Test 11: 's00' | 111 | 'csc880' | 85 | 70 | 60 | 40
Task 2 - Test 12: 's00' | 12142 | 'csc880' | 85 | 70 | 60 | 40
Task 2 - Test 13: 's00' | 'abc' | 'csc880' | 85 | 70 | 60 | 40
Task 2 - Test 14: 's00' | 2023 | 'abc14' | 85 | 70 | 60 | 40
Task 2 - Test 15: 's00' | 2023 | 'csc880' | 100 | 70 | 60 | 40
Task 2 - Test 16: 's00' | 2023 | 'csc880' | 85 | 0 | 60 | 40
Task 2 - Test 17: 's00' | 2023 | 'csc880' | 80 | 90 | 60 | 40
Task 2 - Test 18: 's00' | 2023 | 'csc880' | 85 | 80 | 90 | 40
Task 2 - Test 19: 's00' | 2023 | 'csc880' | 85 | 70 | 60 | 70
Task 2 - Test 20: 's00' | 2023 | 'csc880' | 80 | 75 | 60 | 40
Task 2 - Test 21: 's00' | 2023 | 'csc880' | 85 | 70 | 65 | 40
Task 2 - Test 22: 's00' | 2023 | 'csc880' | 85 | 70 | 60 | 55
Task 2 - Test 23: 'f96' | 1031 | 'csc226' | 85 | 70 | 60 | 40
Task 2 - Test 24: 's00' | 2023 | 'csc880' | 85 | 70 | 60 | 40