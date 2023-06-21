 create table Author(
	authId int,
    authName varchar(100),
    address varchar(50) default 'Delhi'
    );

select * from Author;
desc Author;

alter table Author add booksPublised int default 2;
alter table Author modify column booksPublised double;
alter table Author drop column booksPublised;

create table Test(
	testId int,
    testName varchar(22),
    testNum int default 100
);



desc Test;
select * from Test;
insert into Test(testId,testName,testNum) values(1,'test1',11);
insert into Test(testId,testName) values(2,'test2');

truncate Test;

drop table Test;

-- DDL : Data Definition Language
-- create, alter, drop, truncate

-- DML : Data Manipulation Laguage
-- insert, update, delete

-- DQL : Data Query Language
-- selec

-- DCL: Data Control Language
-- grant, revoke
grant select, insert, update, delete ON Book to AnotherUser;
revoke delete ON Book from AnotherUser;

-- TCL: Transaction Control Language
-- rollback, commit

-- difference between delete, truncate and drop



create table Employee(
	empId int not null,
    empName varchar(22),
    empSalary double default 50000
);

desc Employee;

insert into Employee(empId,empName,empSalary) values(100,'James Jr',60000);

select * from Employee;

insert into Employee(empId,empName,empSalary) values(null,'Mohan Kr',90000);

insert into Employee(empId,empName) values(101,'Mohan Kr');
