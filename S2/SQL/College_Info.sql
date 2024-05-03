CREATE DATABASE COLLEGE_INFO;
USE COLLEGE_INFO;
CREATE TABLE COURSE(
    Course_ID varchar(15) not null primary key,
    Course_name varchar(20) not null,
    Program_ID smallint,
    Credit smallint,
    Semester varchar(10),
    Internal_mark int,
    External_mark int,
    Course_Type varchar(10)
);
DESC COURSE;
CREATE TABLE STUDENT_MARK(
    Reg_No varchar(10) primary key,
    Course_ID varchar(15),
    Student_Internal int not null,
    Student_External int not null,
    foreign key (Course_ID) references course(Course_ID)
);
INSERT INTO COURSE VALUES
('mca1', 'MCA', 200, 4, 's2', 45, 55, 'Integrated'),
('mca2', 'MCA', 201, 6, 's4', 40, 60, 'Regular'),
('bca3', 'BCA', 202, 8, 's3', 60, 40, 'Regular'),
('btech4', 'Btech', 203, 6, 's4', 50, 50, 'Lateral');
SET FOREIGN_KEY_CHECKS=0;
INSERT INTO STUDENT_MARK VALUES('b123', 'b011', 35, 40),
('m141', 'm111', 28, 42),
('mi768', 'mi313', 34, 52),
('mt836', 'mt811', 55, 48),
('bt67f', 'b0110', 78, 51);
SET FOREIGN_KEY_CHECKS=1;
SELECT * FROM STUDENT_MARK;
SELECT * FROM COURSE;
UPDATE COURSE SET Semester='s4' where Course_ID='bca3';
SELECT * FROM COURSE;
UPDATE STUDENT_MARK SET Student_Internal=28 WHERE Reg_No="bt67f";
SELECT * FROM STUDENT_MARK;
ALTER TABLE COURSE CHANGE COLUMN Course_name Course_name VARCHAR(20);
SELECT * FROM COURSE;
ALTER TABLE STUDENT_MARK ADD Result VARCHAR(10);
SELECT * FROM STUDENT_MARK;
ALTER TABLE STUDENT_MARK DROP Result;
SELECT * FROM STUDENT_MARK;
ALTER TABLE STUDENT_MARK MODIFY COLUMN Student_Internal INT;
SELECT * FROM STUDENT_MARK;
RENAME TABLE STUDENT_MARK TO STD_MARK;
SELECT * FROM STUDENT_MARK;
TRUNCATE TABLE COURSE;
DROP TABLE COURSE;
