CREATE DATABASE SCHOOL;
USE SCHOOL;
CREATE TABLE t_school(
    ID INT,
    School_Name VARCHAR(40),
    Number_Of_Students INT,
    Number_Of_Teachers INT,
    Number_Of_Classrooms INT,
    EmailID VARCHAR(40)
);
INSERT INTO t_school VALUES
    (1,"Boys Town Public",1000,80,12,"btps15@gmail.com"),
    (2,"Guru Govind Singh Public School",800,35,15,"ggps25@gmail.com"),
    (3,"Delhi Public School",1200,30,10,"dps101@gmail.com"),
    (4,"Ashoka Universal School",1110,40,40,"aus17@gmail.com"),
    (5,"Calibers English Medium School",9000,31,50,"cems@gmail.com" );
    
SELECT * FROM t_school;
START TRANSACTION;
UPDATE t_school SET Number_Of_Students = 100 WHERE ID = 5;
SELECT * FROM t_school;
SAVEPOINT INSERTION;
UPDATE t_school SET Number_Of_Students = 150 WHERE ID = 5;
SAVEPOINT UPDATION;
ROLLBACK TO INSERTION;
COMMIT;
SELECT * FROM t_school;