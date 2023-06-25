
--Task 1: Create the table PROGRAMMER with the given information using SQL CREATE TABLE commands:

CREATE TABLE PROGRAMMER (
EmpNo INT NOT NULL,
LastName VARCHAR(50),
FirstName VARCHAR(50),
Hiredate DATE,
ProjId VARCHAR(50),
Languages VARCHAR(50),
TaskNo INT,
PrivilegE VARCHAR(50),
UNIQUE(EmpNo)
)

INSERT INTO PROGRAMMER VALUES (201, 'Gupta', 'Saurav', '1/1/95', 'NPR' ,'VB', 52, 'Secret')

SELECT * FROM PROGRAMMER

INSERT INTO PROGRAMMER VALUES(390, 'Ghosh', 'Pinky', '1/5/93', 'KCW', 'JAVA',  11,  'TopSecret')

INSERT INTO PROGRAMMER VALUES(789, 'Agarwal', 'Praveen', '8/3/98', 'RNC',  'VB', 11, 'Secret');
INSERT INTO PROGRAMMER VALUES(134, 'Chaudhury',  'Supriyo', '7/15/95',  'TIPPS',  'C++', 52, 'Secret');
INSERT INTO PROGRAMMER VALUES(896, 'Jha', 'Ranjit', '6/15/97', 'KCW', 'JAVA', 10, 'TopSecret');
INSERT INTO PROGRAMMER VALUES(345, 'John', 'Peter', '11/15/99', 'TIPPS', 'JAVA', 52, null);
INSERT INTO PROGRAMMER VALUES(563, 'Anderson', 'Andy', '08/15/94', 'NITTS', 'C++', 89, 'Confidential');


--Task 3 : Saurav Gupta is assigned a different project with id NITTS and he would work with C++ now.Update 
--this change in the PROGRAMMER table.

SELECT * FROM PROGRAMMER
WHERE LastName = 'GUPTA'


UPDATE PROGRAMMER
SET ProjId ='NITTS', Languages = 'C++'
WHERE EmpNo = 201;

SELECT * FROM PROGRAMMER
WHERE LastName = 'GUPTA'

SELECT * FROM PROGRAMMER

--Task 4 : Supriyo Chaudhury has resigned his job. Delete the record from the tablePROGRAMMER.

DELETE FROM PROGRAMMER
WHERE EmpNo = 134;

SELECT * FROM PROGRAMMER

--Task 5 : The column TaskNo in the PROGRAMMER table is no longer needed. Delete the column.

ALTER TABLE PROGRAMMER
DROP COLUMN TaskNo

SELECT * FROM PROGRAMMER

--Task 6 : create table Department


CREATE TABLE  Department1 (
DeptNo int NOT NULL,
Dname VARCHAR(20),
Loc VARCHAR(20) NOT NULL,
UNIQUE(DeptNo)
)

Select * from Department1

--Task 7: In DEPARTMENT table, increase the field width if DNAME from 20 to50

ALTER TABLE Department1
ALTER COLUMN Dname VARCHAR(50);


--Task 8: Insert the following data into the Department table

INSERT INTO Department1 VALUES(10, 'ACCOUNTS', 'NEWYORK');
INSERT INTO Department1 VALUES(20, 'MARKETING', 'CHICAGO');
INSERT INTO Department1 VALUES(30, 'SALES', 'ATLANTA');
INSERT INTO Department1 VALUES(40, 'RESEARCH', 'OHIO');

Select * from Department1

--Task 9 : Create table EMP

CREATE TABLE EMP (
EmpNo INT NOT NULL PRIMARY KEY,
Ename VARCHAR(10) NOT NULL,
Job VARCHAR(50) NOT NULL,
Sal INT NOT NULL,
Hiredate DATE NOT NULL,
Deptno INT FOREIGN KEY REFERENCES Department1(DeptNo)
)

INSERT INTO EMP VALUES (7001, 'JAMES', 'CLERK', 3000, '6/5/2005', 10);

SELECT * FROM EMP

INSERT INTO EMP VALUES(7002, 'MASON', 'PRESIDENT', 10000,' 6/6/2005', 20);
INSERT INTO EMP VALUES(7003, 'CLARK', 'MANAGER', 5000, '6/5/2004', 20);
INSERT INTO EMP VALUES(7004, 'JOHN', 'MANAGER', 6000, '6/8/2005', 10);
INSERT INTO EMP VALUES(7005, 'BLAKE', 'CLERK', 3500, '6/9/2005', 30);

SELECT * FROM EMP

--Task 11 : Create table Grade

CREATE TABLE GRADE(
GradeNo INT NOT NULL PRIMARY KEY,
Hi_sal INT,
Lo_sal INT
)

SELECT * FROM GRADE

--Task 12 : Drop the column Lo_sal from Grade Table

ALTER TABLE GRADE
DROP COLUMN Lo_sal

SELECT * FROM GRADE

--Add column Low_sal in Grade tableALTER TABLE GRADE
ADD Low_sal intSELECT * FROM GRADE--Task 14: Insert the following data into the tableINSERT INTO GRADE VALUES(1, 2000, 500);INSERT INTO GRADE VALUES(2, 3500, 2100);INSERT INTO GRADE VALUES(3, 6000, 360);INSERT INTO GRADE VALUES(4, 15000, 6100);SELECT * FROM GRADE--Task 16: Create table EMP_BACK from EMP tableSELECT *
INTO EMP_BACK
FROM EMP;select * from EMP_BACK--Task 17:Increase the salary of JAMES from 3000 to350UPDATE EMP
SET Sal = Sal + 350
WHERE EmpNo =7001select * from EMP--Task 18: Increase the salary of all MANAGER by 100UPDATE EMPSET Sal = Sal + 100where Job = 'MANAGER'select * from EMP--Task 19: Decrease the salary of DEPTNO 10 by 10UPDATE EMPSET Sal = Sal - 10where Deptno = 10select * from EMP--Task 22: Remove the employees who have joined before 6-Jun-2005DELETE FROM EMP
WHERE Hiredate < '2005-06-06';select * from EMP--Task 23: Remove employees whose salary is less than 3000DELETE FROM EMPWHERE Sal <3000--Task 24: List all employees who are working in department 10Select * from EMPWHERE Deptno = 10--Task 25: List all employees of department 10 and are MANAGERSelect * from EMPWHERE Deptno = 10 and Job ='MANAGER'--Task 26: List all employees whose salary is between 3000 and 5000Select * from EMPWHERE Sal between 3000 and 5000--Task 27: List all employees who have joined after 10th July 2005Select * from EMPWHERE Hiredate >  '2005-07-10'--Task 28 : List all employees who are MANAGER or PRESIDENT

Select * from EMPWHERE  Job in ('MANAGER', 'PRESIDENT')

--Task 29 : List all employees who are in deptno 10 or 20 and who are MANAGERS

Select * from EMPWHERE Deptno= 10 OR Deptno= 20  and Job ='MANAGER'


--Task 30 : Update the commission of employees in deptno 10 to 500  need to discuss ----------------------------------


UPDATE EMPSET Deptno = 500where Deptno = 10

--Task 32: List the employees who are not a PRESIDENT or MANAGER

SELECT *
FROM EMP
WHERE Job NOT IN ('PRESIDENT', 'MANAGER');


--Task 33: List all employees whose name begin with J

SELECT *
FROM EMP
WHERE Ename LIKE 'J%';

--Task 34 : List all employees whose name consists of ASELECT *
FROM EMP
WHERE Ename LIKE '%A%';--Task 35: List the employee SAL, COMM and bonus (Bonus issal+comm.)Select Sal, Comm, Sal + Comm as Bonus from EMP--Task 36: Display the salary of employees of MANAGER increased by 10%. The output should display salary and 
--increased salary--Task 37 : Update the salary of MANAGER by 10%--Task 38: Display the employees in the descending order of names SELECT *
FROM EMPORDER BY ENAME--Task 39: Display the employees in the ascending order of deptno, Job SELECT *
FROM EMPORDER BY Deptno, Job asc--Task 40: Display all the employee names with the first letter in capitals and all the other characters inlower ------------------
--case--Task 41 : Display all the employee names in lower caseSELECT LOWER(EName) AS Name
FROM EMP;--Task 42: Display the employee name and the position of letter A in each nameSELECT EName, CHARINDEX('A', EName) AS PositionOfA
FROM EMP;--Task 43: Extract the last 3 characters in employee name and display them.SELECT RIGHT(EName, 3) AS LastThreeCharacters
FROM EMP;--Task 44: Display the employee name and the length of the nameSelect Ename,LEN(Ename) length_of_name from EMP--Task 45 : Display the current system date and time

SELECT GETDATE() AS CurrentDateTime


--Task 46 : Display the number of employees in each department

Select Deptno,count(*) as no_of_employee from EMP
GROUP BY Deptno


--Task 47 : Display the number of employees in each department jobwise


Select Deptno,Job, count(*) as no_of_employee from EMP
GROUP BY Deptno,Job


--Task 48: Display the total number of employees in the table

Select count(*) as total_employee from EMP


--Task 49: Display the employee earning the highestsalary

with cte as (
Select *,
rank() over (order by Sal desc) as rnk
from EMP)
SELECT * FROM cte 
where rnk =1 

--Task 50 : Select all employees who draw more salary than their departmental average

--need some more date to view this
















