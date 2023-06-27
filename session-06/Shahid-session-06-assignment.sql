show databases;
create database batch_105;
use batch_105;

create table Department 
(
dept_id int not null,
dept_name varchar(20) 
);

desc department;
select * from department;

insert into Department values(1,'ME');
insert into Department values(2,'CE');
insert into Department values(3,'CS');
insert into Department values(4,'ECE');
insert into Department values(5,'ECS');

create table Employee
(
emp_id int not null,
dept_id int not null,
emp_name varchar(20),
emp_city varchar(20)
);

desc Employee;
select * from Employee;

insert into Employee values(100,1,'Vencenzo','Korea');
insert into Employee values(101,3,'Torreto','Italy');
insert into Employee values(102,5,'Massayi','N Korea');
insert into Employee values(103,2,'Hitachi','S Korea');
insert into Employee values(104,4,'Nansi','China');
insert into Employee values(104,6,'Walence','America');

select * from Employee;
select * from Department;

select dept_name, emp_name, d.dept_id, e.emp_city from department as d, Employee as e
where d.dept_id = e.dept_id;

-- inner join;
SELECT table1.column1,table1.column2,table2.column1
FROM table1 
INNER JOIN table2
ON table1.matching_column = table2.matching_column;

Select d.dept_id, d.dept_name, e.emp_name, e.emp_city
from department d
inner join employee e
on d.dept_id = e.dept_id;

-- Left Join
SELECT table1.column1,table1.column2,table2.column1
FROM table1
LEFT JOIN table2
ON table1.matching_column = table2.matching_column;

Select d.dept_name, e.emp_name, e.dept_id
from department d
left join employee e
on d.dept_id = e.dept_id;

select * from Employee;
select * from Department;

-- right join;
Select d.dept_id, d.dept_name, e.emp_name, e.emp_city
from department d
right join employee e
on d.dept_id = e.dept_id;

-- Full outer join;

/* Select d.dept_id, d.dept_name, e.emp_name, e.emp_city
from department d
full outer join employee e
on d.dept_id = e.emp_id; */

select d.dept_id, d.dept_name, e.emp_name, e.emp_city
From department d
Join employee e;

-- 3. What is self join:- A self join is a regular join, but the table is joined with itself.

Select * from employee;

SELECT * 
FROM employee as E1 join employee E2
WHERE E2.dept_id = E1.emp_name;

-- Self Practice;
select count(*) from (select d.dept_id, d.dept_name, e.emp_name, e.emp_city
From department d
Join employee e) as t;

-- 4. table: Student (stName, marks, gender, addressId) 
-- Address (addressId, state, country);

create table Student
(
stName varchar(20),
marks int not null,
gender varchar(1),
addressId int(10)
);

desc Student;
select * from Student;

insert into Student values('Akki',88,'M',105);
insert into Student values('Urpna',78,'M',106);
insert into Student values('Santeno',65,'F',107);
insert into Student values('Akhtar',45,'M',108);
insert into Student values('Kelly',95,'F',109);
insert into Student values('Kajal',48,'F',110);
insert into Student values('Lowrence',72,'M',111);


create table Address 
(
addressId int not null,
state varchar(10),
country varchar(10)
);

desc Address;
Select * from Address;
insert into Address values(107,'Bihar','India');
insert into Address values(109,'Keral','India');
insert into Address values(105,'Bihar','India');
insert into Address values(108,'Jharkhand','India');
insert into Address values(106,'Delhi','India');
insert into Address values(111,'Bihar','India');

Select * from Student;
select * from Address;

-- 5. Create view for the students who has scored more than 75 marks and student gender is male;

Create view  v_std_marks_greater_sevntyfive as
select s.stName,s.marks,s.gender from Student s 
where s.marks>75 and s.gender='M';

select * from  v_std_marks_greater_sevntyfive;



-- 6. Create a subquery to fetch the details(stName, marks) of the stidents who belong to Bihar;

select stName,marks from Student where addressId in( select addressId from Address where state='Bihar');


-- Compleated;


