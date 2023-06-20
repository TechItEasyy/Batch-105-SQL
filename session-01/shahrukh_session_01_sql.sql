create database Facebook;

show databases;

CREATE TABLE Account 
(
userName varchar(255),
passwords varchar(255),
age  int,
height double
);


insert into Account values ('Amna','Amna@12',null , null);
insert into Account values ('Muskan','Muskan@21', null, null);
insert into Account values ('Abhi','Abhi@09', 21, 5.4);
insert into Account values ('George','George@99', 29, 5.9);
insert into Account values ('kelly','Kelly@91', 23, 5.2);
insert into Account values ('Kathy','Kathy@77', 25, 5.5);
insert into Account values ('williamsons','williamsons@52', 32, 6.1);
insert into Account values ('Robert','Robert@34', 47, 5.9);
insert into Account values ('Layra','Layra@009', 32, 5.4);
insert into Account values ('Piterson','Piterson@76', 43, 5.9);

 Select * from Account;
 
Update Account set age =24 where age =21;
SET sql_safe_updates=0;

Select * from account;


delete from account where height=4.9;

Select * from account;

Update Account set passwords ='George@143' where userName = 'George';

select * from account;


Update Account set age = 36 where userName = 'williamsons';

Select * from account;

TRUNCATE TABLE account;

Select * from account;




