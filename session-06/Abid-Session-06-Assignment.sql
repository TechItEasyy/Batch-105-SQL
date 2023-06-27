use abid;

create table department2(
dept_id int not null unique,
dept_name varchar(200) not null
);

create table Employee(
emp_id int not null unique,
dept_id int not null,
emp_name varchar(100) not null,
emp_city varchar(100) 
);

insert into department2 values(101,'MCA');
insert into department2 values(102,'BCA');
insert into department2 values(103,'MSC');
insert into department2 values(104,'M-TECH');
insert into department2 values(105,'B-TECH');


insert into Employee values(1001,101,'ABID','BHAGALPUR');
insert into Employee values(1002,102,'SHAHRUKH','BHAGALPUR');
insert into Employee values(1003,102,'NAIER','PURNIA');
insert into Employee values(1004,103,'SAAZ','JHARKHAND');
insert into Employee values(1005,104,'SALMAN','JHARKHAND');
insert into Employee values(1006,105,'SONA','PATNA');
insert into Employee values(1007,104,'GULFRAJ','DELHI');
insert into Employee values(1008,105,'SAIF','UP');
insert into Employee values(1009,103,'FARID','KOLKATA');
insert into Employee values(1010,102,'SHAN','KOLKATA');

select * FROM department2;
select * from Employee;

select e.emp_id,e.emp_name,d.dept_id,d.dept_name,e.emp_city from department2 d inner join Employee e on e.dept_id= d.dept_id;

select e.emp_id,e.emp_name,d.dept_id,d.dept_name,e.emp_city from department2 d left join Employee e on e.dept_id= d.dept_id;

select e.emp_id,e.emp_name,d.dept_id,d.dept_name,e.emp_city from department2 d right join Employee e on e.dept_id= d.dept_id;

select e.emp_id,e.emp_name,d.dept_id,d.dept_name,e.emp_city from department2 d  join Employee e on e.dept_id= d.dept_id;

create table Address(
st_addressId int ,
st_state varchar(255),
st_country varchar(200),
primary key(st_addressId)
);

create table Student1(
st_name varchar(100) not null,
st_marks double not null,
st_gender character(1) not null,
st_addressId int,
foreign key(st_addressId) references Address(st_addressId)
);


insert into Address values(812005,'BIHAR','INDIA');
insert into Address values(8120051,'JHARKHAND','INDIA');
insert into Address values(120055,'DELHI','INDIA');

insert into Student1 values('Abid',70,'M',812005);
insert into Student1 values('RAZZ',95,'M',120055);
insert into Student1 values('SHAN',85,'M',2120055);
insert into Student1 values('SONA',80,'M',812005);
insert into Student1 values('naier',75,'M',120055);

create view  v_std_mrk_gen_max_sfive as
select s.st_name,s.st_marks,s.st_gender from Student1 s 
where s.st_marks>75 and s.st_gender='M';

select * from v_std_mrk_gen_max_sfive;

select st_name,st_marks from Student1 where st_addressId in( select st_addressId from Address where st_state='BIHAR');


										--   I COMPLETED TODAY'S ASSIGNMENT



