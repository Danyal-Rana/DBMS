CREATE DATABASE college;

USE college;

CREATE TABLE student (
	rollNo INT PRIMARY KEY,
    name varchar(50)
);

SELECT * FROM student;

INSERT INTO student 
(rollNo, name) 
VALUES 
(101, "Danyal"),
(102, "Danyal Rana");

INSERT INTO student VALUES (103, "Dani");