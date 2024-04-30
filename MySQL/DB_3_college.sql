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

SELECT *
FROM student4 as s
LEFT JOIN course4 as c
ON s.id = c.id;

SELECT *
FROM student4 as s
RIGHT JOIN course4 as c
ON s.id = c.id;

-- now FULL JOIN using both left and right JOIN
SELECT *
FROM student4 as s
LEFT JOIN course4 as c
ON s.id = c.id
UNION
SELECT *
FROM student4 as s
RIGHT JOIN course4 as c
ON s.id = c.id;

-- right and left Exclusive JOIN
SELECT *
FROM student4 as s
LEFT JOIN course4 as c
ON s.id = c.id
WHERE c.id IS NULL;

SELECT *
FROM student4 as s
RIGHT JOIN course4 as c
ON s.id = c.id
WHERE s.id IS NULL;

-- full Exclusive JOIN








-- self join
CREATE TABLE employee (
	id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id int
);

INSERT INTO employee
(id, name, manager_id)
VALUES
(101, "ADAM", 103),
(102, "bob", 104),
(103, "cesay", NULL),
(104, "donald", 103);

SELECT * FROM employee;

SELECT *
FROM employee as a
JOIN employee as b
WHERE a.id = b.manager_id;

SELECT a.name, b.name
FROM employee as a
JOIN employee as b
WHERE a.id = b.manager_id;
