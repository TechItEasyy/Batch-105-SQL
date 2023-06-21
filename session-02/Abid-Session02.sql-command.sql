-- use facebook
-- DDL COMMAND 
-- 1 create 2 drop  3 truncate 4 alter 5 rename
-- DML COMMAND
-- 1 INSERT 2 UPDATE 3 DELETE
-- DQL COMMAND
-- 1 SELECT
-- TCL COMMAND
-- 1 COMMIT 2 ROLLBACK 3 SAVEPOINT
-- USING CREATE(DDL)
create table mysqlCommend(
name varchar(100) not null,
roll int 
);
-- USING INSERT(DML)
insert into mysqlCommend values('Abid',1); 
insert into mysqlCommend values('Shahrukh',2);

-- USING SELECT(DQL)

select * from mysqlCommend;

-- USING ALTER(DDL)
alter table mysqlCommend add column address varchar(200) default 'bgp';

alter table mysqlCommend rename column name to Name;

-- USING UPDATE(DML)

update mysqlCommend set address='patna' where name='Abid';

select * from mysqlCommend;

delete from mysqlCommend where roll=2;

insert into mysqlCommend values('Shahrukh',3,'delhi');

-- USING TRUNCATE(DDL)

truncate table mysqlCommend;

-- USING ROLLBACK (TCL)

rollback;
commit;

-- USING DROP(DDL)

drop table mysqlCommend;
