show databases;
use  batch105;

create table Deratment1
(
dept_id int not null primary key,
dept_name varchar(20)
);

insert into Deratment1 values(01,'Charlei');
select * from Deratment1;

create table All_Student
(
student_id int not null unique,
dept_id int not null,
student_name varchar(20) not null,
marks double,
foreign key(dept_id) references Deratment1(dept_id)
);

desc Deratment1;
desc All_Student;
select * from All_Student;

insert into All_Student values(1,01,'Smith',62);
insert into All_Student values(2,01,'Charles',50);
insert into All_Student values(3,01,'Naymaar',75);
insert into All_Student values(4,01,'Ronaldo',62);
insert into All_Student values(5,01,'Ronaal',90);
insert into All_Student values(6,01,'Sam',95);
insert into All_Student values(7,01,'M bappe',35);
insert into All_Student values(8,01,'Messi',40);
insert into All_Student values(9,01,'Sussi',55);
insert into All_Student values(10,01,'Develiars',57);
insert into All_Student values(11,01,'Mark',66);
insert into All_Student values(12,01,'Santino',39);
insert into All_Student values(13,01,'Samss',57.5);
insert into All_Student values(14,01,'Kely',72.5);
insert into All_Student values(15,01,'Skyler',88.5);
insert into All_Student values(16,01,'Jone Smith',37.5);
insert into All_Student values(17,01,'Kaal',74);
insert into All_Student values(18,01,'Kaamely',80);
insert into All_Student values(19,01,'Lowernce',99);
insert into All_Student values(20,01,'Zoe Lie',30);

-- 3. get count;
select count(*) from All_Student;

--  get average;
select avg(marks) from All_Student;

-- get sum;
select sum(marks) from All_Student;

-- Marks is more than 75;
Select * from All_Student
where marks >75;

-- Marks is less than 55;
Select * from All_Student
where marks < 55;

-- 4. Name start from S;
select * from All_Student where student_name like 'S%';

-- 5. SS in their name;
select * from All_Student where student_name like '%ss%';

-- 5. Ascending order of marks;
select * from All_Student order by marks asc;

-- 5. Descending order of marks;
select * from All_Student order by marks desc;

-- 6. Marks in (55,75,90,);
select * from All_Student where marks in (55,75,90);

-- 6. Marks not in (55,75,85);
select * from All_Student where marks not in (55,75,90);

-- 6. Marks between 45 and 85;
select * from All_Student where marks between 45 and 85;

-- 7. Count of student from each department.
select dept_id, count(*) from All_Student group by dept_id;


-- 7. Max of marks from each department;
select dept_id, max(marks) from All_Student group by dept_id;

-- 7.  Average of marks from each department.
select dept_id, avg(marks) from All_Student group by dept_id;

-- 8. Get count of student from each department having count more than 2;
select dept_id, count(student_id) from All_Student group by dept_id having count(student_id) > 1;

-- 9. All the columns with aliasing;
select * from All_Student;
select student_id as 'Std Roll No', student_name as 'Student Name' , dept_id as 'Department Id', marks as 'Student Marks' from All_Student;

-- 10.  Backup table of Student;
create table All_Student_bkp as select * from All_Student;
select * from All_Student_bkp;


--  Assignment Completed.
