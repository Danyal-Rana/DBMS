CREATE DATABASE college3;
USE college3;

CREATE TABLE student4 (
	id INT PRIMARY KEY,
    name VARCHAR (50)
);

INSERT INTO student4
(id, name)
VALUES
(101, "adam"),
(102, "bob"),
(103, "cesay");

CREATE TABLE course4 (
	id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO course4
(id, course)
VALUES
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer science");

SELECT * FROM student4;
SELECT * FROM course4;

SELECT *
FROM student4
INNER JOIN course4
ON student4.id = course4.id;

SELECT *
FROM student4 as s
INNER JOIN course4 as c
ON s.id = c.id;
