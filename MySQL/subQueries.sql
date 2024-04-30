USE college2;

-- 1st Step
SELECT AVG(marks)
FROM student2;

-- 2nd Step
SELECT fullName, marks
FROM student2
WHERE marks > 88.5;

-- Sub Query
SELECT fullName, marks
FROM student2
WHERE marks > 
(
SELECT AVG(marks)
FROM student2
);

-- 2nd sub query
SELECT fullName, rollNo
FROM student2
WHERE rollNo%2 = 0;

SELECT fullName, rollNo
FROM student2
WHERE rollNo IN 
(
	SELECT rollNo
    FROM student2
    WHERE rollNo%2=0
);

-- 3rd sub query
SELECT *
FROM student2
WHERE city="delhi";

SELECT MAX(marks)
FROM (
	SELECT *
    FROM student2
    WHERE city="delhi"
) AS temp;

-- VIEW 
CREATE VIEW view1 AS
SELECT fullName, city
FROM student2;

SELECT * 
FROM view1
WHERE city="delhi";

DROP VIEW view1;

SELECT * FROM view1;