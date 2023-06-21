-- use facebook
create table student(
RollNumber int not null,
studentname varchar(100),
section varchar(100) default 'c'
);
  -- select * from student;

insert INTO  student values(1,"shahrukh");
-- insert INTO  student values(1,"shahrukh");
insert INTO  student values(2,"naier");
insert INTO  student values(3,"abid");
insert INTO  student values(4,"raj");
insert INTO  student values(5,"amit");
insert INTO  student values(6,"lala");
insert INTO  student values(7,"rahul");
insert INTO  student values(8,"saif");
insert INTO  student values(9,"ravi");
insert INTO  student values(10,"imran");
insert INTO  student values(11,"rahim");
insert INTO  student values(12,"kalim",'f');
insert INTO  student values(13,"raja");
insert INTO  student values(14,"zafar");
insert INTO  student values(15,"reyaz");
insert INTO  student values(16,"farid");
insert INTO  student values(17,"gulab");
insert INTO  student values(18,"faraz");
insert INTO  student values(19,"areeb");
insert INTO  student values(20,"akku",'b');

-- select * from student
alter table student add address varchar(100);
desc student;
alter table student modify column RollNumber double;
alter table student rename column studentname to Student_Name;

