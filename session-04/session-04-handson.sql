
select * from Employee;
insert into employee values(104,'Aamir',86000);
insert into employee values(105,'Aakashr',80000);

select empName from employee where empname like 'A%';

select * from employee where empname like '%Jr%';

select * from  employee where empname like '%me%';
select * from  employee where empname like '%ir';

-- aggregated function 
-- sum, count, avg, max, min
select *  from employee;

select count(*) from employee;

select avg(salary) from employee;



select sum(salary) from employee;

select max(salary) from employee;

select min(salary) from employee;

-- group by

create table employee3(
	empId int not null primary key auto_increment,
    empName varchar(22),
    dept varchar(20),
    salary double
    );
desc employee3;

alter table employee3 auto_increment = 100;

select * from employee3;

insert into employee3(empName,dept,salary) values('emp1','CS',70000);
insert into employee3(empName,dept,salary) values('emp2','CS',80000);
insert into employee3(empName,dept,salary) values('emp3','CS',60000);
insert into employee3(empName,dept,salary) values('emp4','CS',75000);


insert into employee3(empName,dept,salary) values('emp5','ME',30000);
insert into employee3(empName,dept,salary) values('emp6','ME',35000);

insert into employee3(empName,dept,salary) values('emp7','EC',95000);


select dept, count(empId) from employee3 group by dept;

-- having
select dept, count(empId) from employee3 group by dept having count(empId) > 1;

-- alias

select * from Employee3;

select empId as employee_id, empName as 'Employee Name' , dept as Department, salary from EMployee3;

select dept department, count(empId) as 'Employee Count' from employee3 group by dept;


select * from employee;

-- Creating table from existing table
create table employee_bkp as select * from employee;

select * from employee_bkp;

create table employee as select * from employee_bkp;

drop table employee;
