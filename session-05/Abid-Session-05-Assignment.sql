-- create database project1;
use project1;
-- Task 1: Create the table PROGRAMMER with the given information using SQL CREATE TABLE commands
create table programmer(
Emp_no character(5) not null unique,
FirstName varchar(30) not null,
lastName varchar(30) not null,
HireDate date,
projId character(5) not null,
Language varchar(15),
TaskNo numeric(2),
Privilege varchar(25)
);

-- Task 2 : Insert the following data into the PROGRAMMER table

insert into programmer values('201','Saurav','Gupta','1995/01/01','NPR','VB',52,'secret');
insert into programmer values('390','Pinky','Ghosh','1993/05/01','KWC','JAVA',11,'Top secret');
insert into programmer values('789','Praveen','Agarwal','1998/03/08','RNC','VB',11,'secret');
insert into programmer values('134','Supriya','Chaudhury','1995/07/15','TIPPS','C++',52,'secret');
insert into programmer values('896','Ranjit','Jha','1997/06/15','KWC','JAVA',10,'TopSecret');
insert into programmer values('345','Peter','John','1999/11/15','TIPPS','JAVA',52,'');
insert into programmer values('563','Andy','Anderson','1994/08/15','NITTS','C++',89,'Cnfidential');

-- Task 3 : Saurav Gupta is assigned a different project with id NITTS and he would work with C++ now.Update 
-- this change in the PROGRAMMER table

 update programmer set  projId='NITTS', Language='C++' where lastName='Gupta';
 
 -- Task 4 : Supriyo Chaudhury has resigned his job. Delete the record from the tablePROGRAMMER.
 
 delete from programmer where projId='134';
 select * from programmer;
 
 
 -- Task 5 : The column TaskNo in the PROGRAMMER table is no longer needed. Delete the column
 
 alter table programmer drop column TaskNo;
 
 -- Task 6 : create table Department
 
 create table department(
 deptNo numeric(2) unique,
 dname varchar(20),
 loc character(8),
 primary key(deptNo)
 );
 
 -- Task 7: In DEPARTMENT table, increase the field width if DNAME from 20 to50
 
 alter table department modify column dname character(50);
 desc department;
 
 -- Task 8: Insert the following data into the Department table
 
 insert into department values(10,'ACCOUNT','NEWYORK');
  insert into department values(20,'MARKETING','CHICAGO');
   insert into department values(30,'SALES','ATLANTA');
    insert into department values(40,'RESEARCH','OHIO');
    desc department;
    
    -- Task 9 : Create table EMP
    
    create table EMP(
    EmpNo int not null,
    Ename character(10) not null,
    job  enum('MANAGER','CLERK','PRESIDENT') not null ,
    salary double not null,
    Hiredate date not null,
    deptNo numeric(2),
    primary key(EmpNo),
    foreign key(deptNo) references department (deptNo)
    );
   
   -- Task 10 : Insert the following DATA into the Emp Table
   
   
   insert into EMP values(7001,'JAMES','CLERK',300,'2005-05-06',10);
   insert into EMP values(7002,'MASON','PRESIDENT',10000,'2005-06-06',20);
   insert into EMP values(7003,'CLARK','MANAGER',5000,'2004-05-06',20);
   insert into EMP values(7004,'BLAKE','CLERK',3500,'2005-08-06',10);
   insert into EMP values(7005,'JOHN','MANAGER',6000,'2005-06-06',20);
   select * from EMP;

-- Task 11 : Create table Grade

   create table grade(
   gradeNo int,
   Hi_sal double not null,
   Lo_sal double not null,
   primary key(gradeNo)
   );
   
   -- Task 12 : Drop the column Lo_sal from Grade Table
   
   alter table grade drop column Lo_sal;
   
   -- Task 13: Add column Low_sal in Grade table
   
   alter table grade add column low_sal double;
   
   -- Task 14: Insert the following data into the table
   
   insert into grade values(1,2000,500);
   insert into grade values(2,3500,2100);
   insert into grade values(3,6000,3600);
   insert into grade values(4,15000,6100);

-- Task 16: Create table EMP_BACK from EMP table

create table Emp_Back select * from EMP;
desc EMP;

-- Task 17:Increase the salary of JAMES from 3000 to350

update EMP set salary=(salary+300) where EmpNo=7001;

select * from EMP;

-- Task 18: Increase the salary of all MANAGER by 100

update EMP set salary=(salary+100) where job='MANAGER';
select * from EMP;

-- Task 19: Decrease the salary of DEPTNO 10 by 10


update EMP set salary=(salary-10) where deptNo=10;
select * from EMP;

-- Task 20 : Add a numeric field COMM (commission) in EMP table. It can take value ofnull


alter table EMP add column comm numeric;
alter table EMP modify column comm numeric null;

-- Task 21: Initialize the value of COMM to zero in EMP table

alter table EMP modify column comm numeric default 0; 
update EMP set comm=0;
select * from EMP;

-- Task 22: Remove the employees who have joined before 6-Jun-2005

delete from EMP where Hiredate<'2005-06-06';
select * from EMP;

-- Task 23: Remove employees whose salary is less than3000

delete from EMP where salary<3000;
select * from EMP;

-- Task 24: List all employees who are working in department 10

select * from EMP where deptNo=10;

select * from EMP;

-- Task 25: List all employees of department 10 and are MANAGER 

select * from EMP where deptNo=10 and job='MANAGER';



-- Task 26: List all employees whose salary is between 3000 and5000

select * from EMP where salary between 3000 and 5000;

-- Task 27: List all employees who have joined after 10th July 2005

select * from EMP where Hiredate>'2005-06-10';

-- Task 28 : List all employees who are MANAGER or PRESIDENT

select * from EMP where job='MANAGER' or 'PRESIDENT';

select * from EMP;

-- Task 29 : List all employees who are in deptno 10 or 20 and who areMANAGERS

select * from EMP where deptNo=10 or job='MANAGER';


-- Task 30 : Update the commission of employees in deptno 10 to 500.

update EMP set comm=500 where deptNo=10;

select * from EMP;

-- Task 31 : List all employees whose commission is null.

select *from EMP where comm=0;

-- Task 32: List the employees who are not a PRESIDENT or MANAGER

select * from EMP where job not like( 'MANAGER' 'PRESIDENT');

-- Task 33: List all employees whose name begin with J

select * from EMP where Ename like 'J%';

-- Task 34 : List all employees whose name consists of A

select * from EMP where Ename like '%a%';

-- Task 35: List the employee SAL, COMM and bonus (Bonus issal+comm.)

 select salary,comm,(salary+comm) as bonus from EMP;

-- Task 36: Display the salary of employees of MANAGER increased by 10%. The output should display salary and 
-- increased salary.

update EMP set salary=(salary*10/100) where job='MANAGER';
update EMP set salary=salary+(salary*10/100) where job='MANAGER';

select salary,Ename from EMP;


-- Task 37 : Update the salary of MANAGER by 10%

update EMP set salary=salary+(salary*10/100) where job='MANAGER';

select * from EMP;

-- Task 38: Display the employees in the descending order of names

select * from EMP order by Ename desc;
select * from EMP order by Ename asc;


-- Task 39: Display the employees in the ascending order of deptno, Job

select * from EMP order by deptNo asc;


-- Task 40: Display all the employee names with the first letter in capitals and all the other characters inlower 
-- case

Select CONCAT(UPPER(SUBSTRING(Ename,1,1)),LOWER(SUBSTRING(Ename,2))) AS Name from EMP;


-- Task 41 : Display all the employee names in lower case


select lower(Ename) from EMP;

-- Task 42: Display the employee name and the position of letter A in each name

select * from EMP where Ename like '%A%';


-- Task 43: Extract the last 3 characters in employee name and display them

select substring(Ename ,1,3) as extract from EMP;

-- Task 44: Display the employee name and the length of the name

select  Ename,length(Ename)as NameLength from EMP;

-- Task 45 : Display the current system date and time

select now()as current_date_time;


-- Task 46 : Display the number of employees in each department


select deptNo ,count(*) as NumberOfEmploye from EMP group by deptNo;


-- Task 47 : Display the number of employees in each department jobwise
select deptNo ,count(job) as NumberOfEmployeJobWise from EMP group by deptNo;

-- Task 48: Display the total number of employees in the table

select count(Ename) as NoOfEmployee from EMP;

select * from EMP;


-- Task 49: Display the employee earning the highestsalary


select  max(salary) as MaximumSalary  from EMP;

-- Task 50 : Select all employees who draw more salary than their departmentalaverage

select Ename,salary from EMP where salary>( select avg(salary) from EMP where deptNo=EMP.empNo);


                           -- All Assignment Task Completed --