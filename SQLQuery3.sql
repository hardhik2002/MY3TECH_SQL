create database student;
use student;
create table student_(no int,name varchar(20),class int,joining_date date);
ALTER TABLE student_
ADD status varchar(255);
insert into student_ values(1,'Hardhik',6,'2002-03-12','allpass'),
							(2,'Haneesha',7,'2002-03-12','7fail'),
							(3,'Hampika',7,'2002-03-12','allpass'),
							(4,'kavya',5,'2002-03-12','allpass'),
							(5,'Raviteja',6,'2002-03-12','allpass'),
							(6,'venkat',7,'2002-03-12','allpass'),
							(7,'Rahul',6,'2002-03-12','7fail'),
							(8,'sunil',6,'2002-03-12','allpass'),
							(9,'manohar',7,'2002-03-12','allpass'),
							(10,'karthik',6,'2002-03-12','7fail');
select * from student_;
delete from student_ where status is NULL;
select * from student_ where class ;
select * from student_ where class IN(6,7) AND status='allpass';
select * from student_ where class=6;
select * from student_ where status='7fail';

create table student3(no int,name varchar(20),class int,joining_date date,status varchar(20));
insert into student3 values(1,'Hardhik',6,'2002-03-12','allpass'),
							(2,'Haneesha',7,'2002-03-12','7fail'),
							(3,'Hampika',7,'2002-03-12','allpass'),
							(4,'kavya',5,'2002-03-12','allpass'),
							(5,'Raviteja',6,'2002-04-12','allpass'),
							(6,'venkat',7,'2002-05-12','allpass'),
							(7,'Rahul',6,'2002-07-12','7fail'),
							(8,'sunil',6,'2002-08-12','allpass'),
							(9,'manohar',7,'2002-03-12','allpass'),
							(10,'karthik',6,'2002-12-12','7fail');
select * from student3;

