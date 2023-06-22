 create  table department(
	dept_id int  not null primary key,
	dept_name varchar(255))

	select * from department

	create  table StudentT(
	student_id int not null primary key,
	dept_id int not null, 
	student_name varchar(255),	
	marks float not null,
	foreign key(dept_id) references department(dept_id)
	)

	select * from StudentT

	create table book(
	bookId int unique,
	authorName varchar(255) unique
	)

	

insert into StudentT values(101,235,'Amit',60);
insert into StudentT values(102,235,'Gowshami',70);
insert into StudentT values(103,235,'Priyanka',78);
insert into StudentT values(104,235,'Kiara',85);
insert into StudentT values(105,235,'Sachin',77);
insert into StudentT values(106,235,'Emma',89);
insert into StudentT values(107,235,'Virat',88);
insert into StudentT values(108,235,'Aatif',22);
insert into StudentT values(109,235,'Zaid',28);
insert into StudentT values(110,235,'Bk',55);
insert into StudentT values(111,235,'Sunny',62);
insert into StudentT values(112,235,'Deol',60);
insert into StudentT values(113,235,'Bolt',62);
insert into StudentT values(114,235,'James',58);
insert into StudentT values(115,235,'Surya',73);
insert into StudentT values(116,235,'Pandya',52.21);
insert into StudentT values(117,235,'Suresh',56.52);

select * from StudentT

--get the student details whose marks is more than 75

Select * from StudentT
where marks >75

   --get the student details whose marks is less than 35

   Select * from StudentT
   where marks <35
   --get the student details whose name start from K

   Select * from StudentT
   where student_name like 'K%'
   --get the student details whose has aa in their name

   Select * from StudentT
   where student_name like '%aa%'
   --get student details in ascending order of marks
   Select * from StudentT
   order by marks
   --get student details in descending order of marks

    Select * from StudentT
   order by marks desc
   --get student details whose marks in (55,65,85)

    Select * from StudentT
   where marks in(55,65,85)
   --get student details whose marks not in (55,65,85)

    Select * from StudentT
   where marks not in(55,65,85)
   --get student details whose marks between 45 and 55

   Select * from StudentT
   where marks between 45 and 92
   


SELECT * FROM sys.Student;