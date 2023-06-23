create table student2(
student_id int not null primary key,
dept_id int not null,
student_name varchar(200),
marks float not null
);


insert into Student2 values(1,	3,	'ahmad',	78.5);
	insert into Student2 values(2,	1,	'jhon',	92.3);
	insert into Student2 values(3,	2,	'kaliya', 85.0);
	insert into Student2 values(4,	1,	'jondis',	79.8);
	insert into Student2 values(5,	3,	'mohan',	88.2);
	insert into Student2 values(6,	2,	'sohan',	95.5);
	insert into Student2 values(6, 2, 'rohan', 95.5);
	insert into Student2 values(7, 1, 'monika', 82.1);
	insert into Student2 values(8, 2, 'soni', 91.7);
	insert into Student2 values(9, 3, 'moni', 76.4);
	insert into Student2 values(10, 1, 'ibraar', 89.9);
	insert into Student2 values(11, 2, 'moin', 87.6);
	insert into Student2 values(12, 3, 'minhaz', 81.3);
    insert into Student2 values(13, 1, 'aamir', 90.2);
    insert into Student2 values(14, 3, 'salman', 83.9);
    insert into Student2 values(15, 2, 'sahrukh', 92.7);
    insert into Student2 values(16, 1, 'prem', 79.1);
    insert into Student2 values(17, 3, 'sahid', 88.4);
    insert into Student2 values(18, 2, 'kartik', 94.8);
    insert into Student2 values(19, 1, 'golu', 85.6);
    insert into Student2 values(20, 3, 'monu', 77.2);


	Select * from Student2

	--get the student details having maximum marks

	Select max(marks) as highest_marks from Student2
 --  get the student details having minimum marks;

     Select min(marks) as lowest_marks from Student2

 --  get count of the student

     select count(*) total_no_student from Student2

 --  get average marks

     Select avg(marks) as avg_marks from Student2

 --  get summation of all the marks

    Select sum(marks) as total_marks from Student2

 --  get the student details whose marks is more than 75
     
	 Select * from Student2
	 where marks >75
   
 --  get the student details whose marks is less than 35

     Select * from Student2
	 where marks <35