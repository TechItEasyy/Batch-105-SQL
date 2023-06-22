create database BBD;
use BBD;

create table Department(
deptId int primary key not null,
deptName varchar(20)

);

create table Student(
studentId int primary key not null,
deptId int not null,
studentName varchar(22),
marks int not null,
foreign key(deptId) references Department(deptId)
) 
;

desc Department;
desc Student;

select * from Department;

select * from Student;

insert into Department (deptId,deptName) value(0051, 'Biology');
delete from department where deptId=0051;
insert into Student values(123,0051,'Henery',90.25);
insert into Student values(122,0051,'Kelly',80);
insert into Student values(124,0051,'Sam',78);
insert into Student values(125,0051,'Kiara',74);
insert into Student values(126,0051,'Hamms',77);
insert into Student values(127,0051,'Jordge',89);
insert into Student values(128,0051,'Krithhi',33);
insert into Student values(129,0051,'Artica',22);
insert into Student values(130,0051,'Aamna',28);
insert into Student values(131,0051,'Daneil',55);
insert into Student values(132,0051,'Henery',62);
insert into Student values(133,0051,'Krish',60);
insert into Student values(134,0051,'Hamsh',30.35);
insert into Student values(135,0051,'Artho',92);
insert into Student values(136,0051,'Julei',73);
insert into Student values(137,0051,'Manya',37.7);
insert into Student values(139,0051,'Kaal',37.7);



create table Book
(
book_id int unique,
author_name varchar(20) unique

);
desc Book;
select * from Book;

-- Q. 4  Solution.
-- And command.
select * from Student where deptId = 0051 and marks > 75;

select * from Student where deptId = 0051 and marks < 35;

-- Like command.
select * from Student where studentName like 'K%';

select * from Student where studentName like '%aa%';

-- Ascending command.
select * from Student order by marks asc;

-- Descending command.
select * from Student order by marks desc;


-- In Command.
select * from Student where marks in (55,78,92,80);

-- Not In command.
select * from Student where marks not in (55,78,92,80);

-- Between command.
select * from Student where marks between 45 and 92;


CREATE TABLE AutoTest1 (
    test_id int NOT NULL AUTO_INCREMENT,
    FirstName varchar(255),
	LastName varchar(255),
    PRIMARY KEY (test_id)
    );
    ALTER TABLE AutoTest1 AUTO_INCREMENT=100;
    insert into AutoTest1 (FirstName,LastName) values('K', 'Gowtham');
	insert into AutoTest1 (FirstName,LastName) values('K', 'Gowtham');
    insert into AutoTest1 (FirstName,LastName) values('K', 'Gowtham');
    insert into AutoTest1 (FirstName,LastName) values('K', 'Gowtham');

    select * from AutoTest1;
    
    -- Q. 6 Solution.
    
    delete from Department where deptId = 0051;
    
	select * from Department;
    
    -- Day-03-Assignment-Compeleted.


    
    











