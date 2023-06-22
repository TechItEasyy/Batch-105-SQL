 use facebook;
create table department(
dept_id int not null,
dept_name varchar(100) ,
primary key(dept_id)
);
insert into department(dept_id,dept_name)values
(101,'bca'),
(102,'mca'),
(103,'bba'),
(104,'bit'),
(105,'bcom'),
(106,'bsc'),
(107,'cs');
select * from department;

create table student(
student_id int not null unique,
student_name varchar(100) not null,
marks double,
foreign key(student_id) references department(dept_id)on delete cascade
);
 
 insert into student(student_id,student_name,marks)values
 (101,'saira',99.5),
 (102,'sona',75.6),
 (103,'naier',55.3),
 (104,'shahrukh',65.2),
 (105,'hasnain',45.7),
 (106,'Abid',30.4),
 (107,'saif',85.5);
 
 create table Books(
 book_id int not null unique,
 author_name varchar(50)
 );
 
 insert into Books(book_id,author_name)values
 (19,'Abid'),
 (23,'shahrukh');
 
 select * from student where marks>75;
 
 select * from student where marks<35;
 
 select * from student where student_name like '%s';
 select * from student where student_name like "%s";
  select * from student where student_name like 's%';
  
   select * from student where student_name like "ab%";
   
   select * from student order by marks asc;
   
   select * from student order by marks desc;
   
   select * from student where marks in(55.3,65.2,85.5);
   
   select * from student where marks between 45.7 and 65.2;
   
   
   create table Autotest(
   testid int not null auto_increment,
   primary key(testid)
   );
   
   insert into Autotest values(100);
   insert into Autotest values();
   
   
   -- delete from department where dept_id=103;
   -- delete parents table record using ON DELETE CASCADE in child table
   delete from department where dept_id=103;
   
   delete from department where dept_id=103;
   
   
 
