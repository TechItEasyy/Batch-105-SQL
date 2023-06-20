  create database Facebook;
  use Facebook;
  create table Account
  (
  UserName varchar(100),
  Password varchar(100),
 Age int,
  Height double
 )
 insert into Account value('Abid@','Abid@2001',22,5.7);
 insert into Account value('shahrukh@','shahrukh@2',24,5.5);
 insert into Account value('naier@','naier@22',24,5.6);
 insert into Account value('raaz@','raaz@21',18,5.7);
 insert into Account value('shan@','shan@2123',15,5.6);
 insert into Account value('saaz@','saaz@2436',16,5.6);
 insert into Account value('salman@','salman@245',17,5.5);
 insert into Account value('sona@','sona@2235',10,5.2);
 insert into Account value('hasnain@','hasnain@21',24,5.5);
 insert into Account value('saif@','saif@297',21,5.7);
 insert into Account value('shahrukh@','shahrukh@2',null,null);
 insert into Account value('Abid$$','abid$$2001',null,null);
 select * from Account;
 set sql_safe_updates=0;
  delete from Account where Age=22;
 set sql_safe_updates=0;
  update Account set Password='srk@2345' where UserName='saif@'
  set sql_safe_updates=0;
 select * from Account
  select * from Account
  set sql_safe_updates=1;
 update Account set Password = 'srk1234' where UserName = 'shahrukh@';
 delete from Account where Age=15;
