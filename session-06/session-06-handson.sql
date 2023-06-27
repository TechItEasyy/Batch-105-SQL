drop table student;

create table Student(
	rollNum int,
    stName varchar(22),
    address varchar(100),
    courseId int
);

desc Student;

insert into Student values(101,'Student1','XYZ Street', 1);
insert into Student values(102,'Student2','ABC Street', 2);
insert into Student values(103,'Student3','DEF Street', 4);
insert into Student values(104,'Student4','GHY Street', 6);
insert into Student values(105,'Student5','JKL Street', 3);

select * from Student;

create table courses(
	courseId int,
    courseName varchar(22)
);

desc courses;

insert into courses values(1,'MSc');
insert into courses values(2,'BSc');
insert into courses values(3,'Btech');
insert into courses values(4,'BA');
insert into courses values(5,'BCA');

select * from courses;
select * from Student;

select s.stName, c.courseName, s.courseId from Student s, courses as c
where s.courseId = c.courseId;








-- Inner Join
SELECT table1.column1,table1.column2,table2.column1
FROM table1 
INNER JOIN table2
ON table1.matching_column = table2.matching_column;

select s.stName, c.courseName, s.courseId
From Student s
inner join Courses c
On s.courseId = c.courseId;

-- Left Join
SELECT table1.column1,table1.column2,table2.column1
FROM table1 
LEFT JOIN table2
ON table1.matching_column = table2.matching_column;

select s.stName, c.courseName, c.courseId
From Student s
left join Courses c
On s.courseId = c.courseId;

select * from Student;
select * from Courses;


-- Right Join
SELECT table1.column1,table1.column2,table2.column1
FROM table1 
RIGHT JOIN table2
ON table1.matching_column = table2.matching_column;

-- Full Join
SELECT table1.column1,table1.column2,table2.column1
FROM table1 
FULL JOIN table2
ON table1.matching_column = table2.matching_column;


select s.stName, c.courseName, c.courseId
From Student s
Join Courses c;




select s.stName, c.courseName, c.courseId
From Student s
Join Courses c;


select count(*) from (select s.stName, c.courseName, c.courseId
From Student s
Join Courses c) as tt;

-- main query (sub query)
select * from Employee3;
select * from Department;

select empName from EMployee3 where salary > 60000 and dept in ('CS','ME');
select deptName from department;
select empName from EMployee3 where salary > 60000 and dept in (select deptName from department);

-- View
select * from EMployee3;

select empName, dept from EMployee3 where salary < 60000;

create view v_emp_sal_less_sixty as select empName, dept from EMployee3 where salary < 60000;

select * from v_emp_sal_less_sixty;


create view v_fulljouin_St_Crs as
select s.stName, c.courseName, c.courseId
From Student s
Join Courses c;

select * from v_fulljouin_St_Crs;

select count(*) from v_fulljouin_St_Crs;

desc v_fulljouin_St_Crs;

drop view v_fulljouin_St_Crs;
