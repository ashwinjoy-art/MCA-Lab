CREATE DATABASE COLLEGE;
SHOW DATABASES;
USE COLLEGE;
CREATE TABLE PROGRAM(
    Program_ID int not null primary key,
    Program_name varchar(15),
    Duration smallint,
    Student_strength int,
    Program_type varchar(20),
    Sactioned_year smallint,
    No_semester smallint
);
DESC PROGRAM;
CREATE TABLE STUDENT(
    First_name varchar(10),
    Last_name varchar(10),
    Reg_no int not null primary key,
    Program_ID int,
    DOB date,
    Gender varchar(15),
    Mobile_no varchar(10),
    Aadhar varchar(12),
    Year_admission year,
    foreign key (Program_ID) references program(Program_ID)
);
DESC PROGRAM;
INSERT INTO PROGRAM VALUES 
(100, 'MCA', 2, 60, 'Regular', 2005, 4),
(101, 'BCA', 3, 60, 'Regular', 2000, 6),
(102, 'Btech', 4, 60, 'Lateral', 2002, 8),
(103, 'Barch', 5, 30, 'Integrated', 2004, 8);
SELECT * FROM PROGRAM;
SET FOREIGN_KEY_CHECKS=0;
INSERT INTO STUDENT VALUES
('Jibi', 'Babu', 101, 201, '2000-07-11', 'Female', 1234567890, '288118813881', 2022),
('Aysha', 'Mustafa', 102, 202, '2001-09-09', 'Female', 2345678901, '299119913991', 2022),
('Marva', 'Jamal', 103, 203, '2001-02-15', 'Female', 3456789012, '488128813881', 2022),
('Jasina', 'Jasi', 104, 204, '2000-11-10', 'Female', 4567890123, '588128813881', 2022),
('Ranjith', 'Ranji', 105, 205, '2000-06-19', 'Male', 5678901234, '344356657887', 2022);
SET FOREIGN_KEY_CHECKS=1;
SELECT * FROM STUDENT;
UPDATE STUDENT SET Year_admission = 2023 WHERE Reg_no = 105;
ALTER TABLE STUDENT CHANGE COLUMN Program_ID Program_ID INT;
ALTER TABLE STUDENT ADD College_Name VARCHAR(20);
ALTER TABLE STUDENT DROP College_Name;