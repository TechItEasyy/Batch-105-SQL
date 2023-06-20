CREATE TABLE Account 
(
userName varchar(255),
passwords varchar(255),
age  int,
height float
)




insert into Account values ('Aadil','Aadil123', null, null);
insert into Account values ('Imad','Imad123', null, null);
insert into Account values ('Suresh','Suresh123', 24, 5.4);
insert into Account values ('Asad','Asad123', 25, 5.6);
insert into Account values ('Satyam','Satyam123', 26, 5.7);
insert into Account values ('Akant','Akant123', 27, 5.5);
insert into Account values ('Najim','Najim123', 24, 5.8);
insert into Account values ('Ashish','Ashish123', 25, 5.4);
insert into Account values ('Aasif','Aasif123', 26, 5.5);
insert into Account values ('Zauq','Zauq123', 27, 5.7);

Select * from Account

Select userName, height from Account
Update Account set age =17 where age =24
Select * from account

delete from account where age=17

Select * from account

Update Account set passwords ='Aadil456' where userName = 'Aadil'

select * from account

Update Account set age = 18 where userName = 'Asad'

Select * from account

TRUNCATE TABLE account






