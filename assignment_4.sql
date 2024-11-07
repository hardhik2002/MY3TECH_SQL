create database assign4;
use assign4;
create table employee(first_name varchar(50),last_name varchar(50),department_id int,
salary int,commission decimal(10,2));
insert into Employee (First_Name, Last_Name, Department_id, Salary, Commission)
values
    ('Amit', 'Shah', 50, 50000, 0.2),
    ('Vipul', 'Sharma', 12, 55000, 0.5),
    ('Raviteja', 'Ganjam', 12, 40000, 0.15),
    ('Vamsi', 'Krishna', 20, 60000, NULL), 
    ('Mohan', NULL, 50, 44000, NULL);
select * from employee;
---------------------------------------------------------------------------------
/*2)Write a SQL query to print all details and increment salary for department 50 with 50% 
and department 12 with 100% using case.*/

update employee
set salary=case
	when department_id=50 then salary * 1.5
	when department_id=12 then salary * 2
	else salary
end;
select * from employee;
--------------------------------------------------------------
/*3)	Write a SQL query to print all details and increment salary for department 
	50 with 50% and department 12 with 100% using decode.*/
update employee set salary=salary * DECODE(department_id,50,1.5,12,2,1); --DOUBT
select * from employee;
-----------------------------------------------------------------
/*
4)	Write a SQL query to print all details and print ‘NA’ who don’t have a last name using coalesce.
*/
select first_name,coalesce(last_name,'NA'),Department_id,salary,commission from employee;

-------------------------------------------------------------------------
/*5)Write a SQL query to print all details of employees who belong to department 50 and 12.*/
select * from employee where department_id in (50,12);
--------------------------------------------------------------------------
/*6)	Write a SQL query to print all details along with total salary(*12). 
If the commission is null it should be marked as 0. Else the total salary should be (Salary*12+Commision). 
(Commission should be multiplied by total salary and added)*/
select *,(salary*12)+(coalesce(commission,0)*(salary*12)) as total_salary from employee;
---------------------------------------------------------------------------
/*7)Write a query to display the first_name, Last_name and commission.
The result should print commission value if they have commission else it should the return salary.*/
select first_name,last_name , coalesce(commission,salary) as commission_salary from employee;
-----------------------------------------------------------------------------
/*8)Write a sql query to calculate the length of first_Name and Last_name. 
If the length of first_name and last_name is same it should be print the result 
as null else it should display the result the length of first_name.*/

select first_name,last_name,
		case when len(first_name)=len(last_name) then NULL
				else len(first_name) end as name_differ_length
					from employee;--DOUBT
---------------------------------------------------------------------------------

