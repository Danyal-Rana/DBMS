CREATE DATABASE college2;
USE college2;

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

SELECT city
FROM student2
GROUP BY city;

SELECT city, count(rollNo)
FROM student2
GROUP BY city;

SELECT city, name, count(rollNo)
FROM student2
GROUP BY city, name;

SELECT city, avg(marks)
FROM student2
GROUP BY city;

SELECT city, avg(marks)
FROM student2
GROUP BY city
ORDER BY avg(marks) DESC;

SELECT grade, count(rollNo)
FROM student2
GROUP BY grade
ORDER BY grade;

SELECT city
FROM student2
GROUP BY city;

SELECT city, count(name)
FROM student2
GROUP BY city;

SELECT city, count(name)
FROM student2
GROUP BY city
HAVING max(marks) > 90;

SELECT city
FROM student2
WHERE grade = "A"
GROUP BY city
HAVING max(marks) > 90
ORDER BY city;

SET SQL_SAFE_UPDATES = 0;

UPDATE student2
SET grade = "O"
WHERE grade = "A";

SELECT * FROM student2;

UPDATE student2
SET marks = 82
WHERE rollNo = 105;

UPDATE student2
SET grade = "B"
WHERE marks BETWEEN 80 AND 90;

UPDATE student2
SET marks = marks + 1;

SELECT * FROM student2;

UPDATE student2
SET marks = 10
WHERE rollNo = 105;

DELETE FROM student2
WHERE marks < 33;

-- adding new Tables for FK

CREATE TABLE dept (
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO dept
(id, name)
VALUES
(101, "Urdu"),
(102, "IT");

SELECT * FROM dept;

CREATE TABLE teacher (
	id INT PRIMARY KEY,
    name VARCHAR(50),
    deptID INT,
    FOREIGN KEY (deptID) REFERENCES dept(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO teacher
(id, name, deptID)
VALUES
(101, "Adam", 101),
(102, "Eve", 102);

SELECT * FROM teacher;

UPDATE dept
SET name = "Computer Science"
WHERE name = "IT";

UPDATE dept
SET id = 103
WHERE id = 102;

SELECT * FROM dept;

SELECT * FROM teacher;

-- alter command

ALTER TABLE student2
ADD COLUMN age INT;

SELECT * FROM student2;

ALTER TABLE student2
DROP COLUMN age;

SELECT * FROM student2;

ALTER TABLE student2
ADD COLUMN age INT NOT NULL DEFAULT 19;

SELECT * FROM student2;

ALTER TABLE student2
MODIFY COLUMN age VARCHAR(2);

SELECT * FROM student2;

ALTER TABLE student2
CHANGE age studentAge INT;

SELECT * FROM student2;

ALTER TABLE student2
DROP COLUMN studentAge;

SELECT * FROM student2;

ALTER TABLE student2
RENAME TO Student;

SELECT * FROM Student;

USE college2;

ALTER TABLE Student
RENAME TO student2;

SELECT * FROM student2;

TRUNCATE TABLE student2;

SELECT * FROM student2;

INSERT INTO student2
(rollNo, name, marks, grade, city)
VALUES
(101, "Anil", 78, "C", "pune"),
(102, "bhumika", 93, "A", "mumbai"),
(103, "chetan", 85, "B", "mumbai"),
(104, "dhruv", 94, "A", "delhi"),
(105, "emanuel", 12, "F", "delhi"),
(106, "farah", 82, "B", "delhi");

SELECT * FROM student2;