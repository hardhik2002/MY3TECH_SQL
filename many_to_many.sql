create database many_to_many_;
use many_to_many_;
create table student(
		student_id int primary key,
		student_name varchar(50)
);
create table courses(
		course_id int primary key,
		course_name varchar(50)
	);
--junction table 
create table student_course(
		student_id int,
		course_id int,
		primary key(student_id,course_id),
		foreign key (student_id) references student(student_id),
		foreign key(course_id) references courses(course_id)
);

