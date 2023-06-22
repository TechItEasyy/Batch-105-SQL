show databases;
use batch_105; 

drop table Test;
create table Test(
	tid int not null,
    tname varchar(22),
    primary key(tid)
);

create table Test2(
	tid int unique,
    tname varchar(22),
    primary key(tid)
);

create table Test3(
	tid int not null,
    tname varchar(22),
    foreign key(tid) references Test2(tid)
);

create table Test4(
	tid int not null,
    tname varchar(22),
    foreign key(tid) references Test(tid)
);

desc Test4;

insert into test4 values(1,'testname');
-- Constraints
-- not null

-- primary
select * from Employee;


desc Employee;
 -- drop table Employee;

Create table Employee(
	empId int not null,
    empName varchar(100),
    salary double,
    primary key(empId)
);

insert into Employee values(100,'Sameer Jr',70000);
insert into Employee values(102,'Naymer Jr',90000);

insert into Employee values(100,'Kumar Jr',60000);

insert into Employee values(103,'Kumar Jr',60000);

insert into Employee values(null,'Pradeep Jr',60000);

select * from Employee;

-- unique key
Create table Employee2(
	empId int unique,
    empName varchar(100) unique,
    salary double
);

desc Employee2;

insert into Employee2 values(200,'Golu Kr',25000);
insert into Employee2 values(200,'Mannu Kr',35000);
insert into Employee2 values(null,'Mannu Kr',35000);
insert into Employee2 values(null,'Mannu Kr',35000);


select * from Employee2;

-- foreign key


create table Department(
	deptId int primary key not null,
    deptName varchar(22)
);

create table Student(
	studentId int primary key not null,
    deptId int not null,
    studentName varchar(22),
    foreign key(deptId) references Department(deptId)
);

desc Department;
desc Student;

select * from Department;
select * from Student;

insert into Department values(100,'CS');
insert into Student values(1000,100,'Stdent 1');

insert into Department values(101,'ME');
insert into Student values(1001,101,'Stdent 2');
insert into Student values(1003,100,'Stdent 3');

delete from Department where deptId = 100;

-- AUTO Generation
create table Testt(
	testId int auto_increment,
    testName varchar(20),
    primary key(testId)
);

insert into Testt(testName) values('Sameer');

insert into Testt(testName) values('Sameer2');
insert into Testt(testName) values('Sameer3');

select * from Testt; -- 100 ?

-- Clauses
-- insert, select, update, delete
-- where 
select * from Employee;
select * from Employee where empId = 102;
select * from Employee where salary > 60000;
select * from Employee where salary >= 60000;

-- in 
select * from EMployee where empId in (100,103);

-- no in
select * from EMployee where empId not in (100,103);

-- between
select * from Employee where salary between 50000 and 80000;

-- and/ or

select * from Employee where empId = 100 and salary > 80000;

select * from Employee where empId = 100 or salary > 80000;

-- order by (asc/des)

select * from Employee order by salary desc;

-- like
select * from Employee;
select * from Employee where EmpName like 'S%';
select * from Employee where EmpName like '%r';
select * from Employee where EmpName like '%me%';




