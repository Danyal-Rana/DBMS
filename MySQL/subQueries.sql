USE college2;

-- 1st Step
SELECT AVG(marks)
FROM student2;

-- 2nd Step
SELECT fullName, marks
FROM student2
WHERE marks > 88.5;

--Sub Query
SELECT fullName, marks
FROM student2
WHERE marks >  