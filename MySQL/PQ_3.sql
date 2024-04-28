USE college2;

ALTER TABLE student2
CHANGE name fullName VARCHAR(50);

SELECT * FROM student2;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM student2
WHERE marks < 80;

SELECT * FROM student2;

ALTER TABLE student2
DROP COLUMN grade;

SELECT * FROM student2;