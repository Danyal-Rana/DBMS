CREATE DATABASE college2;
USE college;

CREATE TABLE student2 (
	rollNo INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student2
(rollNo, name, marks, grade, city)
VALUES
(101, "Anil", 78, "C", "pune"),
(102, "bhumika", 93, "A", "mumbai"),
(103, "chetan", 85, "B", "mumbai"),
(104, "dhruv", 94, "A", "delhi"),
(105, "emanuel", 12, "F", "delhi"),
(106, "farah", 82, "B", "delhi");

SELECT name, marks FROM student2;

SELECT city FROM student2;

SELECT DISTINCT city FROM student2;

SELECT *
FROM student2
WHERE marks > 80;

SELECT *
FROM student2
Where city = "delhi";

SELECT *
FROM student2
WHERE city="mumbai" AND marks>80;

SELECT *
FROM student2
WHERE marks+10 > 100;

SELECT *
FROM student2
WHERE marks>80 OR city="pune";

SELECT *
FROM student2
WHERE marks BETWEEN 80 AND 90;

SELECT *
FROM student2
WHERE city IN ("delhi", "mumbai", "rohillan wali");

SELECT *
FROM student2
WHERE city NOT IN ("delhi", "mumbai");

SELECT *
FROM student2
WHERE marks > 75
LIMIT 12;

SELECT *
FROM student2
ORDER  BY city ASC;

SELECT *
FROM student2
ORDER BY marks DESC
LIMIT 3;

SELECT marks
FROM student2;

SELECT MAX(marks)
FROM student2;

SELECT count(city)
FROM student2;