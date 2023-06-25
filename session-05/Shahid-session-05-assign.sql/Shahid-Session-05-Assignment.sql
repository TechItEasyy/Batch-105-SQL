show databases;
use batch105;

create table PROGRAMER_A
(
EmpNo int not null,
FirstName varchar(20),
LastName varchar(20),
Hiredate int(18),
ProjName varchar(15),
Language varchar(20),
TaskNo int(10),
Privilege varchar(14)
);
desc PROGRAMER_A;

select * from PROGRAMER_A;

insert into PROGRAMER_A values(201,'Saurav','Gupta',1/1/95,'NPR','VB',52,'Secret');
insert into PROGRAMER_A values(390,'Pinky','Ghosh',1/5/93,'KCW','JAVA',11,'Top Secret');
insert into PROGRAMER_A values(789,'Praveen','Agarwal',8/3/98,'RNC','VB',11,'Secret');
insert into PROGRAMER_A values(134,'Supriyo','Chaudhury',7/15/95,'TIPPS','C++',52,'Secret');
insert into PROGRAMER_A values(896,'Ranjit','Jha',6/15/97,'KCW','JAVA',10,'TopSecret');
insert into PROGRAMER_A values(345,'Peter','John',11/15/99,'TIPPS','JAVA',52,'');
insert into PROGRAMER_A values(563,'Andy','Anderson',08/15/94,'NITTS','C++',89,'Confidential');

select * from PROGRAMER_A where LastName = 'Gupta';

set SQL_SAFE_UPDATES = 0;
Delete from PROGRAMER_A where FirstName = 'Supriyo';

create table PROGRAMER_A_bkp as select * from PROGRAMER_A;
select * from PROGRAMER_A_bkp;


-- alter PROGRAMER_A drop TaskNo;
select * from PROGRAMER_A;


create table Departments
(
DeptNo int(2) not null,
Dname varchar(20) not null,
Loc varchar(8) not null
);

insert into Departments values(10,'ACCOUNTS','NEWYORK');
insert into Departments values(20,'MARKETING','CHICAGO');
insert into Departments values(30,'SALES','ATLANTA');
insert into Departments values(40,'RESEARCH','OHIO');


use college;
create table EMP
(
EmpNo int(4),
Ename varchar(10) not null,
Job varchar(12) not null,
Sal int not null,
Hiredate int(20)not null,
DeptNo int not null,
primary key(EmpNo)
);

desc EMP;
select * from EMP;


insert into EMP values(7001,'JAMES','CLERK',3000,6/5/2005,10);
insert into EMP values(7002,'MASON','PRESIDENT',10000,6/6/2005,20);
insert into EMP values(7003,'CLARK','MANAGER',5000,6/5/2004,20);
insert into EMP values(7004,'JOHN','MANAGER',6000,6/8/2005,10);
insert into EMP values(7005,'BLAKE','CLERK',3500,6/9/2005,30);

create table Grade 
(
GradeNo int not null primary key,
Hi_sal int not null,
Lo_sal int not null
);

desc Grade;
select * from Grade;

insert into Grade values(1,2000,500);
insert into Grade values(2,3500,2100);
insert into Grade values(3,6000,3600);
insert into Grade values(4,15000,6100);

-- Drop column;

ALTER TABLE Grade
DROP COLUMN Lo_sal;

-- Add column;
ALTER TABLE Grade
add COLUMN Lo_sal int not null;

-- Data insert;
UPDATE Grade
SET Lo_sal = 500
WHERE GradeNo = 1;

UPDATE Grade
SET Lo_sal = 2100
WHERE GradeNo = 2;

UPDATE Grade
SET Lo_sal = 3600
WHERE GradeNo = 3;

UPDATE Grade
SET Lo_sal = 6100
WHERE GradeNo = 4;

select * from Grade;

Create table EMP_BACKK
(
EmpNo int(4),
Ename varchar(10) not null,
Job varchar(12) not null,
Sal int not null,
Hiredate date not null,
DeptNo int not null
);
desc EMP_BACKK;
select * from EMP_BACKK;

insert into EMP_BACKK values(7001,'JAMES','CLERK',3000,'2005/5/6',10);
insert into EMP_BACKK values(7002,'MASON','PRESIDENT',10000,'2005/6/6',20);
insert into EMP_BACKK values(7003,'CLARK','MANAGER',5000,'2004/4/6',20);
insert into EMP_BACKK values(7004,'JOHN','MANAGER',6000,'2005/8/6',10);
insert into EMP_BACKK values(7005,'BLAKE','CLERK',3500,'2005/8/9',30);

-- increase salery all maneger 100;
UPDATE EMP_BACKK
SET Sal = 5100
WHERE EmpNo = 7003;

UPDATE EMP_BACKK
SET Sal = 6100
WHERE EmpNo = 7004;
select * from EMP_BACKK;

-- Decrease salery deptno 10 by 10;
UPDATE EMP_BACKK
SET Sal = 2990
WHERE deptno = 10;

UPDATE EMP_BACKK
SET Sal = 5990
WHERE deptno = 10;

select * from EMP_BACKK;

-- Add a numeric field COMM in EMP table. It can take value ofnull;
ALTER TABLE EMP_BACKK
ADD COMM int null;

--  Remove the employees who have joined before 6-Jun-2005;

DELETE FROM EMP_BACKK WHERE hiredate < ('2005-05-6');

--  Remove employees whose salary is less than3000.
DELETE FROM EMP_BACKK
WHERE sal < 3000;
select * from EMP_BACKK;

-- List all employees who are working in department 10.
select * from EMP_BACKK where deptno=10;

--  List all employees of department 10 and are MANAGER;
select Job = 'MANAGER' from EMP_BACKK where deptno=10;

-- List all employees whose salary is between 3000 and 5000;
select * from EMP_BACKK where Sal between 5000 and 7000;

--  List all employees who have joined after 10th July 2005;
SELECT * FROM EMP_BACKK
WHERE Hiredate<('2005/7/10');

--  List all employees who are MANAGER or PRESIDENT;
select * from EMP_BACKK where job in ('Manager','President');


--  List all employees who are in deptno 10 or 20 and who are MANAGERS;
select * from EMP_BACKK where job  in ('Manager');


-- Update the commission of employees in deptno 10 to 500.;
UPDATE EMP_BACKK
SET COMM = 500
WHERE DeptNo = 10;

select * from EMP_BACKK;

--  List all employees whose commission is null.

SELECT * FROM EMP_BACKK
WHERE COMM IS NULL;

--  List the employees who are not a PRESIDENT or MANAGER;
select * from EMP_BACKK where job not in ('President','Manager');

--  List all employees whose name begin with J;
select * from EMP_BACKK where Ename like 'J%';

-- List all employees whose name consists of A;
select * from EMP_BACKK where Ename like '%A%';

-- Task 37 : Update the salary of MANAGER by 10%
UPDATE EMP_BACKK 
SET Sal = Sal + (Sal * 10/100);

select * from EMP_BACKK;


-- Display the employees in the descending order of names;
select * from EMP_BACKK order by Ename desc;


-- Task 39: Display the employees in the ascending order of deptno, Job;
select * from EMP_BACKK order by Deptno, job asc;



-- Task 40: Display all the employee names with the first letter in capitals and all the other characters inlower case;
select * from EMP_BACKK;
select JAMES as 'James', MASON as 'Mason' , JHON as 'Jhon' from EMP_BACKK;

SELECT UPPER(Ename) 
FROM EMP_BACKK;


-- Task 48: Display the total number of employees in the table;
select count(*) from EMP_BACKK;


-- Task 49: Display the employee earning the highestsalary;
select max(sal) from EMP_BACKK;






























