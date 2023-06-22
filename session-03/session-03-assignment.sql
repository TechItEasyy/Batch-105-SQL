1. create a table department
	-dept_id int not null primary key
	-dept_name varchar
2. create a table Student
	-student_id int not null unique
	-dept_id foreign key(department->dept_id)
	-student_name not null varchar	
	-marks double
3. Create a table Book having unique bookId and authorName
4. get the student details whose marks is more than 75
   get the student details whose marks is less than 35
   get the student details whose name start from K
   get the student details whose has aa in their name
   get student details in ascending order of marks
   get student details in descending order of marks
   get student details whose marks in (55,65,85)
   get student details whose marks not in (55,65,85)
   get student details whose marks between 45 and 55
5. Create a table AutoTest with testId as auto increment starting from 100
6. How can you delete parent tables data without deleting child table's data?
7 Give example of each one of this Clauses
where, insert, update, delete, like, in, not in, and, or, between, order by
