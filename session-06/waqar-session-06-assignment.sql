--1. Create tables Department and Employee:

CREATE TABLE Department2(
		dept_id int,
		dept_name varchar(50)
		);

CREATE TABLE  Employee2(
		emp_id int,
		dept_id int,
		emp_name varchar(50),
		emp_city varchar(50)
		)

INSERT INTO Department2 VALUES (101,'HR');
INSERT INTO Department2 VALUES (102,'Manager');
INSERT INTO Department2 VALUES (103,'Lead');
INSERT INTO Department2 VALUES (104,'VP');
INSERT INTO Department2 VALUES (105,'Senior Manager');


INSERT INTO Employee2 VALUES (1,101,'Anuj','Hyd');
INSERT INTO Employee2 VALUES (2,101,'Simran','Chennai');
INSERT INTO Employee2 VALUES (3,102,'Piyush','Noida');
INSERT INTO Employee2 VALUES (4,102,'Amit','Gurugram');
INSERT INTO Employee2 VALUES (5,104,'Sapnesh lallah','Hyd');
INSERT INTO Employee2 VALUES (6,104,'DJ','Bng');



Select * from Employee2
Select * from Department2

--inner join
	


Select d.*, e.* from Department2 d
inner join Employee2 e
on d.dept_id = e.dept_id


--left join
	

Select d.*, e.* from Department2 d
left join Employee2 e
on d.dept_id = e.dept_id

--right join


Select d.*, e.* from Department2 d
right join Employee2 e
on d.dept_id = e.dept_id

--full join

Select d.*, e.* from Department2 d
full join Employee2 e
on d.dept_id = e.dept_id


Select * from StudentN

--5. Create view for the students who has scored more than 75 marks and student gender is male

--create view marks_gt_g_m as
--select * from StudentN
--where marks > 75 

--6. Create a subquery to fetch the details(stName, marks) of the stidents who belong to Bihar.


Select * from (
Select dept_id, student_name from StudentN s where marks > 75 )
as tt 

