CREATE DATABASE COMPANY;
SHOW DATABASES;
USE COMPANY;
CREATE TABLE EMPLOYEE(
    Emp_No INT PRIMARY KEY,
    Emp_Name VARCHAR(45),
    Address VARCHAR(45),
    Sex VARCHAR(45),
    Dept VARCHAR(45),
    Salary INT,
    DOJ VARCHAR(45),
    Branch VARCHAR(45)
);
DESC EMPLOYEE;
INSERT INTO EMPLOYEE VALUES(1001,'Arya','Arya House, Ernakulam','M','Sales',16000,'15/01/2015','Ernakulam');
INSERT INTO EMPLOYEE VALUES(1002,'Sooraj','Sooraj House, Kottayam','M','HR',18000,'01/05/2004','Kottayam');
INSERT INTO EMPLOYEE VALUES(1003,'Joju','Hridayam House, Wayanad','M','Clerk',20000,'25/12/2016','Wayanad');
INSERT INTO EMPLOYEE VALUES(1004,'Arjun','Anadham House, Malappuram','M','Marketing',25000,'16/02/2010','Malappuram');
INSERT INTO EMPLOYEE VALUES(1005,'Ashwin','Ashwin House, Kozhikode','M','Coding',19000,'11/06/2008','Kozhikode');
INSERT INTO EMPLOYEE VALUES(1006,'Benher','Abi House, Kollam','M','Sales',30000,'05/09/2001','Kollam');
SELECT * FROM EMPLOYEE;

CREATE TABLE DEPARTMENT(
    Dept_No INT PRIMARY KEY,
    Dept_Name VARCHAR(45),
    Mgr_Id VARCHAR(45),
    Mgr_Start_Date VARCHAR(45)
);
DESC DEPARTMENT;
SHOW TABLES;
INSERT INTO DEPARTMENT VALUES(101,'Abi','5685AE','15/05/2013');
INSERT INTO DEPARTMENT VALUES(102,'Ali','1585AE','23/03/2022');
INSERT INTO DEPARTMENT VALUES(103,'Arjun','4585AE','09/09/2021');
INSERT INTO DEPARTMENT VALUES(104,'Joju','5255AE','23/01/2022');
INSERT INTO DEPARTMENT VALUES(105,'Sony','2605AE','19/12/2019');
INSERT INTO DEPARTMENT VALUES(106,'Swathish','4605AE','10/05/2015');
SELECT * FROM DEPARTMENT;

-- Update Department table
UPDATE DEPARTMENT SET Mgr_Id = 45621 WHERE DEPT_NO = 104;
-- alter table Department rename to Dept;
ALTER TABLE DEPARTMENT RENAME TO Dept;
-- Add a new column Phone with not null constraints to the existing table Dept
ALTER TABLE Dept ADD COLUMN PHONE VARCHAR(20) NOT NULL;
-- Drop column Phone:
ALTER TABLE Dept DROP COLUMN PHONE;
-- alter table Dept change column Dname Dept_name varchar(20)
ALTER TABLE Dept CHANGE COLUMN DNAME DEPT_NAME VARCHAR(20);
DROP TABLE Dept;

-- Employee
-- Display all the fields of the Employee table :
SELECT * FROM Employee;
-- Retrieve employee number and their salary:
SELECT Emp_No, Salary FROM Employee;
-- Retrieve employee details where salary >20000:
SELECT * FROM Employee WHERE Salary > 20000;
-- Distinct :
SELECT DISTINCT * FROM Employee;
-- All :
SELECT * FROM Employee
-- Display details of employee whose name is ‘Arjun’ and salary greater than 15000 :
SELECT * FROM Employee WHERE Emp_Name = 'Arjun' AND Salary > 15000;
-- Display details of Employee from Kannur and Palakkad :
SELECT * FROM Employee WHERE Place IN ('Knr', 'Pal');
-- Display details of Employee who are not from Kannur and Palakkad :
SELECT * FROM Employee WHERE Place NOT IN ('Knr', 'Pal');
-- Display details of Employee whose salary between 15000 and 30000:
SELECT * FROM Employee WHERE Salary BETWEEN 15000 AND 30000;
-- Display name of employee in descending order :
SELECT * FROM Employee ORDER BY Emp_Name DESC;