-- Create Database
create database batch_105;

-- See all the databases
show databases;

-- Use a particular DB
use batch_105;

-- Show all the tables in the DB
show tables;

-- Creating table
create table Book(
	bookId int,
    bookName varchar(100),
    author varchar(50)
    );
   
-- Describing table
desc book;
-- Insertion
insert into book values(101,'Java 7 and 8','James William');

-- insert into book values('one','Java 7 and 8','James William');

-- insert into book values('Expert in Java','Mark Mellon',103);

insert into book values(103, 'Expert in Java','Mark Mellon');

insert into book(bookName,bookId,author) values('7th heaven',104,'Juliet'); -- best practice 
-- Querying data
select * from book;

select bookName, author from book;

-- Updating data
update Book set author = 'Robin Hood' where bookId = 103;

-- Deleting data

delete from Book where bookId = 102;
delete from Book; -- to delete all the data from book


-- set sql_safe_updates = 0;
update Book set author = 'Mohan Kr' where bookId = 104;




