
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

--Add column Low_sal in Grade table
ADD Low_sal int
INTO EMP_BACK
FROM EMP;
SET Sal = Sal + 350
WHERE EmpNo =7001
WHERE Hiredate < '2005-06-06';

Select * from EMP

--Task 29 : List all employees who are in deptno 10 or 20 and who are MANAGERS

Select * from EMP


--Task 30 : Update the commission of employees in deptno 10 to 500  need to discuss ----------------------------------


UPDATE EMP

--Task 32: List the employees who are not a PRESIDENT or MANAGER

SELECT *
FROM EMP
WHERE Job NOT IN ('PRESIDENT', 'MANAGER');


--Task 33: List all employees whose name begin with J

SELECT *
FROM EMP
WHERE Ename LIKE 'J%';

--Task 34 : List all employees whose name consists of A
FROM EMP
WHERE Ename LIKE '%A%';
--increased salary
FROM EMP
FROM EMP
--case
FROM EMP;
FROM EMP;
FROM EMP;

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















