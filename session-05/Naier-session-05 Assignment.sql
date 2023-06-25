CREATE DATABASE ASSIGNMENT05;
USE ASSIGNMENT05;
-- Q:-Task 1: Create the table PROGRAMMER with the given information using SQL CREATE TABLE commands:
CREATE TABLE PROGRAMMER (
    EmpNo VARCHAR(5) NOT NULL UNIQUE,
    ProjId CHAR(5),
    LastName VARCHAR(30) NOT NULL,
    FirstName VARCHAR(30),
    HireDate DATE,
    Language VARCHAR(15),
    TaskNo INT,
    Privilege VARCHAR(25)
);
DESC PROGRAMMER;

-- Q:-Task 2 : Insert the following data into the PROGRAMMER table
INSERT INTO PROGRAMMER (EmpNo, LastName, FirstName, HireDate, ProjId, Language, TaskNo, Privilege)
VALUES
    ('201', 'KHAN', 'TAUSHIF', '1995-01-01', 'NPR', 'VB', 52, 'Secret'),
    ('390', 'YADAV', 'AMIT', '1993-01-05', 'KCW', 'JAVA', 11, 'TopSecret'),
    ('789', 'ALI', 'SAIF', '1998-03-08', 'RNC', 'VB', 11, 'Secret'),
    ('134', 'RAJ', 'SONU', '1995-07-15', 'TIPPS', 'C++', 52, 'Secret'),
    ('896', 'SIMRAN', 'SADIA', '1997-06-15', 'KCW', 'JAVA', 10, 'TopSecret'),
    ('345', 'ANSARI', 'SHARUKH', '1999-11-15', 'TIPPS', 'JAVA', 52, NULL),
    ('563', 'KHAN', 'ABID', '1994-08-15', 'NITTS', 'C++', 89, 'Confidential');

SELECT * FROM PROGRAMMER;
-- SELECT * FROM PROGRAMMER WHERE FirstName='AMIT';
-- rollback;

-- Q:-Task 3 : Saurav Gupta is assigned a different project with id NITTS and he would work with C++ now.Update 
-- this change in the PROGRAMMER table
UPDATE PROGRAMMER
SET ProjId = 'KCW', Language = 'C++'
WHERE FirstName = 'SADIA SIMRAN';

-- Q:-Task 4 : Supriyo Chaudhury has resigned his job. Delete the record from the tablePROGRAMMER
DELETE FROM PROGRAMMER WHERE EmpNo=390;
set sql_safe_updates = 0;

-- Q:-Task 5 : The column TaskNo in the PROGRAMMER table is no longer needed. Delete the column
alter table PROGRAMMER drop column TaskNo;

-- Q:-Task 6 : create table Department
create table Department
(
DeptNo int primary key unique,
Dname varchar(20) not null,
location varchar(8) not null
);
desc Department;

-- Q:-Task 7: In DEPARTMENT table, increase the field width if DNAME from 20 to50
ALTER TABLE DEPARTMENT
MODIFY DNAME VARCHAR(50);

-- Q:-Task 8: Insert the following data into the Department table
insert into Department(DeptNo,Dname,location)
values(10,'ACCOUNTS','gaya'),(20,'marketing','patna'),
(30,'sales','purnia'),(40,'research','katihar');

select * from DEPARTMENT;

-- Q:-Task 9 : Create table EMP
create table Employee
(
EmpNo int primary key,
Ename varchar(20) not null,
job enum('MANAGER', 'CLERK', 'PRESIDENT') NOT NULL,
sal double not null,
HireDate date not null,
DeptNo int,
FOREIGN KEY (DeptNo) REFERENCES DEPARTMENT(DeptNo)
);
desc Employee;

-- Q:-Task 10 : Insert the following DATA into the Emp Table
insert into Employee(EmpNo,Ename,job,sal,HireDate,DeptNo)
values(7001,'Sharukh','clerk',3000,'2005-05-06',10),(7002,'Abid','president',10000,'2005-06-06',20),
(7003,'Taushif','Manager',5000,'2004-05-06',20),(7004,'Saif','Manager',6000,'2005-08-06',10),
(7005,'Deepak','clerk',3500,'2005-09-06',30);

select * from Employee;

-- Q:-Task 11 : Create table Grade
create table Grade
(
gradeNo int primary key,
Hi_Sal double not null,
Lo_Sal double not null
);

desc Grade;

-- Q:-Task 12 : Drop the column Lo_sal from Grade Table
alter table Grade drop column Lo_Sal;

-- Q:-Task 13: Add column Low_sal in Grade table
alter table Grade add column Lo_Sal double not null;

-- Q:-Task 14: Insert the following data into the table
insert into Grade(gradeNo,Hi_sal,Lo_Sal)
values(1,2000,500),(2,3500,2100),(3,6000,3600),
(4,15000,6100);

select * from Grade;
-- Q:-Task 16: Create table EMP_BACK from EMP table
 Create table EMP_BACK select * from Employee;
 
 -- Q:-Task 17:Increase the salary of JAMES from 3000 to350
 UPDATE Employee
SET sal = (sal+350)
WHERE Ename = 'Sharukh';

-- Q:-Task 18: Increase the salary of all MANAGER by 100

UPDATE Employee
SET sal = (sal+100)
WHERE job = 'Manager';

-- Q:-Task 19: Decrease the salary of DEPTNO 10 by 10
UPDATE Employee
SET sal = sal - 10
WHERE DeptNo = 10;

-- Q:-Task 20 : Add a numeric field COMM (commission) in EMP table. It can take value ofnull
alter table Employee add column commission numeric null;

-- Q:-Task 21: Initialize the value of COMM to zero in EMP table
UPDATE Employee
SET commission = 0;

-- Q:-Task 22: Remove the employees who have joined before 6-Jun-2005 
DELETE FROM Employee
WHERE HireDate < '2005-06-06';

-- Q:-Task 23: Remove employees whose salary is less than3000
delete from Employee 
where sal < 3000;

-- Q:-Task 24: List all employees who are working in department 10.
select DeptNo=10 from Employee ;

-- Q:-Task 25: List all employees of department 10 and areMANAGER
SELECT *FROM Employee
WHERE deptNo = 10
    AND job = 'MANAGER';
    
-- Q:-Task 26: List all employees whose salary is between 3000 and5000
SELECT *FROM Employee
WHERE sal BETWEEN 3000 AND 5000;

-- Q:-Task 27: List all employees who have joined after 10th July 2005
SELECT *FROM Employee
WHERE HireDate > '2005-07-10';

-- Q:-Task 28 : List all employees who are MANAGER or PRESIDENT
SELECT *FROM Employee
WHERE job IN ('MANAGER', 'PRESIDENT');

-- Q:-Task 29 : List all employees who are in deptno 10 or 20 and who areMANAGERS 
SELECT *FROM Employee
WHERE deptNo IN (10, 20) AND job = 'MANAGER';

-- Q:-Task 30 : Update the commission of employees in deptno 10 to 500.
UPDATE Employee SET commission = 500
WHERE deptNo = 10;

-- Q:-Task 31 : List all employees whose commission is null.
SELECT * FROM Employee
WHERE commission IS NULL;

-- Q:-Task 32: List the employees who are not a PRESIDENT or MANAGER
SELECT * FROM Employee
WHERE job NOT IN ('PRESIDENT', 'MANAGER');

-- Q:-Task 33: List all employees whose name begin with J
SELECT * FROM Employee
WHERE Ename LIKE 's%';

-- Q:-Task 34 : List all employees whose name consists of A
SELECT * FROM Employee
WHERE Ename LIKE '%a%';

-- Q:-Task 35: List the employee SAL, COMM and bonus (Bonus issal+comm.)
SELECT sal, commission, (sal + commission) AS Bonus
FROM Employee;

-- Q:-Task 36: Display the salary of employees of MANAGER increased by 10%. The output should display salary and 
-- increased salary
update Employee set sal=sal+(sal*10/100) where job ='MANAGER';

-- Q:-Task 37 : Update the salary of MANAGER by 10%
update Employee set sal=sal+(sal*10/100) where job ='MANAGER';

-- Q:-Task 38: Display the employees in the descending order of names
select * from EMPLOYEE order by Ename desc;

-- Q:-Task 39: Display the employees in the ascending order of deptno, Job
select * from Employee order by deptNo ,job desc;

-- Q:-Task 40: Display all the employee names with the first letter in capitals and all the other characters inlower 
-- case
SELECT CONCAT(UPPER(SUBSTRING(Ename, 1, 1)), LOWER(SUBSTRING(Ename, 2))) AS capitalized_name
FROM Employee;

-- Q:-Task 41 : Display all the employee names in lower case
SELECT LOWER(Ename) AS lowercase_name
FROM Employee;

-- Q:-Task 42: Display the employee name and the position of letter A in each name
SELECT Ename, INSTR(Ename, 'A') AS position_of_a
FROM Employee;

-- Q:-Task 43: Extract the last 3 characters in employee name and display them.
SELECT RIGHT(Ename, 3) AS last_three_characters
FROM Employee;

-- Q:-Task 44: Display the employee name and the length of the name
SELECT Ename, LENGTH(Ename) AS name_length
FROM Employee;

-- Q;-Task 45 : Display the current system date and time
SELECT NOW() AS current_datetime;

-- Q:-Task 46 : Display the number of employees in each department
SELECT DeptNo, COUNT(*) AS employee_count
FROM Employee
GROUP BY DeptNo;

-- Q:-Task 47 : Display the number of employees in each department jobwise
SELECT job, COUNT(*) AS employee_count
FROM Employee
GROUP BY job;

-- Q:-Task 48: Display the total number of employees in the table
select count(*) AS total_employees from Employee;

-- Q:-Task 49: Display the employee earning the highestsalary
select max(sal) as highestsalary from Employee;

-- Q:-Task 50 : Select all employees who draw more salary than their departmental average
SELECT *
FROM Employee
WHERE sal > (
  SELECT AVG(sal)
  FROM Employee AS e2
  WHERE e2.DeptNo = Employee.EmpNo
);








