CREATE DATABASE XYZ;

USE XYZ;

CREATE TABLE employeeInfo (
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DOUBLE NOT NULL
);

INSERT INTO employeeInfo
(id, name, salary)
VALUES
(1, "adam", 25000),
(2, "bob", 30000),
(3, "casey", 40000);

SELECT * FROM employeeInfo;