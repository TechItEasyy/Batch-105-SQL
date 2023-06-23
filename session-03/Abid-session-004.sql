-- use abid;
create table department1(
dept_Id int not null,
dept_name varchar(200),
primary key(dept_id)
);
create table student1(
student_id int not null unique,
student_dept int not null,
student_name varchar(200) ,
student_marks double,
foreign key(student_dept) references department1(dept_id)
);
insert into department1 values(1001,'Mca');
insert into department1 values(1002,'Bca');
insert into department1 values(1003,'B-tech');
insert into department1 values(1004,'BBa');
insert into department1 values(1005,'Bit');

desc department1;

insert into student1 values(101,1001,'saira',98);
insert into student1 values(102,1001,'Abid',85);
insert into student1 values(103,1002,'sona',75);
insert into student1 values(104,1003,'saaz',70);
insert into student1 values(105,1004,'salman',65);
insert into student1 values(106,1001,'shan',60);
insert into student1 values(107,1005,'naier',55);
insert into student1 values(108,1002,'shahrukh',50);
insert into student1 values(109,1005,'saif',45);
insert into student1 values(110,1001,'minhaz',35);
insert into student1 values(111,1004,'hasnain',30);
insert into student1 values(112,1005,'gulfraj',25);
insert into student1 values(113,1005,'raaz',72);


desc student1;

select max(student_marks) from student1;

select min(student_marks) from student1;

select count(student_id) from student1;

select avg(student_marks) from student1;

select sum(student_marks) from student1;

select * from student1 where student_marks>75;

select * from student1 where student_marks<35;

select student_name from student1 where student_name like 's%';

select student_name from student1 where student_name like '%aa%';

select student_name from student1 where student_name like '%a';

select student_marks from student1 order by student_marks desc;

select student_marks from student1 order by student_marks asc;

select student_marks from student1  where student_marks in(55,65,75);

select * from student1  where student_marks not in(55,65,75);

select student_marks from student1  where student_marks between 45 and 75;

-- select count(*) from department1;


SELECT department1.dept_Id, COUNT(student1.student_dept) AS student_dept
FROM department1
 LEFT JOIN student1 ON department1.dept_Id = student1.student_dept
  GROUP BY department1.dept_Id;


SELECT department1, max(student_marks) AS dept_Id
FROM student1
  GROUP BY departmen1;
select dept_Id, max(marks) from student1 group by dept_id;


create table student_backup as select * from student1;
select * from student_backup;
drop table student1;
