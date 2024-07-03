CREATE DATABASE MCA;
USE MCA;
CREATE TABLE Course 
(
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(255),
    Program_ID INT,
    Credit INT,
    Semester INT,
    Internal_Mark DECIMAL(5, 2),
    External_Mark DECIMAL(5, 2),
    Course_Type VARCHAR(50)
);
CREATE TABLE Student_Mark 
(
    Reg_No INT,
    Course_ID INT,
    Program_ID INT,
    Student_Internal DECIMAL(5, 2),
    Student_External DECIMAL(5, 2),
    PRIMARY KEY(Reg_No, Course_ID)
);

INSERT INTO Course VALUES
(1,'Mathematics', 1,3,1,80,70, 'Core'),
(2,'Physics', 1,4,2,75,80, 'Core'),
(3,'Chemistry', 1,3,2,70,75, 'Elective');

INSERT INTO Student_Mark VALUES
(1001, 1, 1, 75, 65),
(1001, 2, 1, 70, 80),
(1002, 1, 1, 80, 75);

SELECT * FROM Course;
SELECT * FROM Student_Mark;

-- Record
UPDATE course SET Semester = 's4' WHERE Course_ID = 'bca3';
UPDATE Student_Mark SET Student_Internal = 28 WHERE Reg_No = 'bt67f';
-- Rename Course_name to Course_Name in Course Table:
ALTER TABLE course CHANGE COLUMN Course_name Course_Name VARCHAR(20);
-- add column Result in Student_Mark table:
ALTER TABLE Student_Mark ADD Result VARCHAR(10);
-- Drop column Result in Student_mark table:
ALTER TABLE Student_Mark DROP COLUMN Result;
-- Rename table Student_Mark as std_mark:
RENAME TABLE Student_Mark TO std_mark;
-- Delete data from std_mark table:
TRUNCATE TABLE course;
DROP TABLE course; 

-- DCL Commands:
-- GRANT and REVOKE commands to assign and revoke privilege.
-- Grant privileges
CREATE USER aysha IDENTIFIED BY '@123';
GRANT SELECT, INSERT, UPDATE ON Employee TO aysha;
-- Revoke privileges
REVOKE INSERT ON Employee FROM aysha;

-- EXP-6
SELECT * FROM course;
-- Retrieve all student who have score higher than average internal mark in a specific course:
SELECT * FROM course WHERE Internal_mark > (SELECT AVG(Internal_mark) FROM course WHERE Course_ID = 'bca3');
-- Retrieve all courses with credit greater than 3 and whose semester is either s2 or s4:
SELECT * FROM course WHERE Credit > 4 AND Semester IN ('s2', 's4');
-- Retrieve all student who are enrolled in a program with more than 100 students:
SELECT * FROM course WHERE Course_ID IN (SELECT Course_ID FROM course WHERE Program_Id = 201);
-- Retrieve all courses that are not taken by any student:
SELECT * FROM course WHERE Credit > (SELECT AVG(Credit) FROM course);

-- OLD Record
SELECT * FROM Course;
SELECT * FROM Student_Mark;
UPDATE Course SET Course_Name = "Computer Science" WHERE Course_ID = 1;
DELETE FROM Student_Mark WHERE Reg_No = 1002 AND Course_ID = 1;
GRANT SELECT ON Course TO root;
GRANT SELECT ON Student_Mark TO root;
REVOKE INSERT ON Student_Mark FROM root;
REVOKE INSERT ON Course FROM root;
START TRANSACTION;
UPDATE Course SET Course_Name = "English" WHERE Course_ID = 2;
SAVEPOINT ONE;
UPDATE Course SET Credit = 5 WHERE Course_ID = 3;
SAVEPOINT TWO;
ROLLBACK TO ONE;
COMMIT;

SELECT * FROM Course WHERE Credit > 3;
SELECT * FROM Student_Mark WHERE Course_ID = 1;
SELECT * FROM Course WHERE Credit > 3 AND Semester IN(1,2);
SELECT * FROM Course WHERE Course_ID NOT IN (SELECT Course_ID FROM Student_Mark);
SELECT * FROM Course WHERE Course_ID IN (SELECT Course_ID FROM Student_Mark WHERE Program_ID = 1);
SELECT * FROM Course WHERE Credit > (SELECT AVG(Credit) FROM Course);

SELECT CONCAT("Hello",' ', "World") AS ConcatenatedString;
SELECT SUBSTRING("Hello World", 7, 5) AS SubstringResult;
SELECT LENGTH('OpenAI') AS StringLength;
SELECT LENGTH('adbms') AS StringLength;
SELECT UPPER('adbms') AS UppercaseString;
SELECT LOWER('ADBMS') AS LowercaseString;
SELECT TRIM('Hello World') AS TrimmedString;
SELECT REPLACE('Hello Worls', 'World', 'Universe') AS ReplacedString;
SELECT REVERSE('adbms') AS ReversedString;
SELECT LEFT('Hello World', 5) AS LeftSubstring;
SELECT COUNT(*) AS TotalCourses from Course;
SELECT SUM(Credit) AS TotalCredit from Course;
SELECT AVG(Student_Internal) AS AverageInternalMark from Student_Mark;
SELECT MIN(Credit) AS MinimumCredit, MAX(Credit) AS MaximumCredit from Course;

-- Group By:
-- Calculate average internal mark and maximum external mark:
SELECT Course_ID, AVG(Student_Internal) AS AvgInternalMark, MAX(Student_External) AS MaxExternalMark FROM Student_Mark GROUP BY Course_ID;
-- Having:
SELECT Course_ID, AVG(Student_Internal) AS AvgInternalMark, MAX(Student_External) AS MaxExternalMark FROM Student_Mark GROUP BY Course_ID having Course_ID = 1;

CREATE VIEW CourseDetails AS SELECT Course.Course_ID, Course.Course_Name, Course.Credit, Student_Mark.Student_Internal, Student_Mark.Student_External 
        FROM Course INNER JOIN Student_Mark ON Course.Course_ID = Student_Mark.Course_ID;
SELECT * FROM CourseDetails;
SELECT * FROM CourseDetails WHERE Course_ID = 1;
SELECT Course_ID, AVG(Student_Internal) AS AvgInternalMark, AVG(Student_External) AS AvgInternalMark FROM CourseDetails GROUP BY Course_ID;
SELECT Course_Name, Student_Internal FROM CourseDetails WHERE Credit > 3;




