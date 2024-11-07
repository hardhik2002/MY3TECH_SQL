create database assignment3;
use assignment3;
create table salesman(salesman_id int primary key,name varchar(255),city varchar(255),commission decimal(10,2));

insert into Salesman (salesman_id, name, city, commission)
values 
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12);
select * from salesman;
--customer table
create table customer(customer_id int primary key,cust_name varchar(50),city varchar(50),grade int,salesman_id int,
						foreign key(salesman_id) references salesman(salesman_id));
insert into Customer (customer_id, cust_name, city, grade, salesman_id)
values
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidore', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', 100, 5005);
select * from customer;
--orders table 
create table orders(
		ord_no int primary key,
		purch_amt decimal(10,2),
		ord_date date,
		customer_id int,
		salesman_id int,
		foreign key(customer_id) references customer(customer_id),
		foreign key(salesman_id) references salesman(salesman_id)
);
insert into Orders (ord_no, purch_amt, ord_date, customer_id, salesman_id)
values
(70001, 150.5, '2012-10-05', 3002, 5001),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3007, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-27', 3005, 5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760.0, '2012-09-20', 3003, 5007),
(70010, 1983.43, '2012-10-10', 3008, 5002),
(70013, 3045.6, '2012-04-25', 3002, 5001),
(70011, 2480.4, '2012-06-10', 3009, 5003),
(70003, 205.45, '2012-08-17', 3005, 5002),
(70012, 75.29, '2012-08-17', 3002, 5001);
select * from orders;
/* 2)	write a SQL query to find the salesperson and customer who reside in the same city. 
Return Salesman, cust_name and city.*/
select salesman.name,customer.cust_name,salesman.city from salesman join customer on salesman.city=customer.city;
/*3)write a SQL query to find those orders where the order amount exists 
between 500 and 2000. Return ord_no, purch_amt, cust_name, city.*/
select orders.ord_no,orders.purch_amt,customer.cust_name,customer.city from 
orders join customer on orders.customer_id=customer.customer_id where orders.purch_amt between 500 and 2000;
/*4) write a SQL query to find the salesperson(s) and the customer(s) 
he represents. Return Customer Name, city, Salesman, commission.*/
select customer.cust_name,customer.city,salesman.name,salesman.commission from 
customer join salesman on customer.salesman_id=salesman.salesman_id;
/*5)write a SQL query to find salespeople who received commissions of more than 12 percent from the company. 
Return Customer Name, customer city, Salesman, commission.*/
select customer.cust_name,customer.city,salesman.commission from salesman join customer on 
salesman.salesman_id=customer.salesman_id
where commission>0.12;
/*6)write a SQL query to locate those salespeople who do not live in the same city where 
their customers live and have received a commission of more than 12% from the company. 
Return Customer Name, customer city, Salesman, salesman city, commission.*/
select customer.cust_name,customer.city,salesman.name,salesman.city,salesman.commission from salesman join customer
on salesman.salesman_id=customer.salesman_id where salesman.city !=customer.city and salesman.commission>0.12;
/*7)	write a SQL query to generate a report with customer name, city, order number, 
order date, order amount, salesperson name, and commission to determine if 
any of the existing customers have not placed orders or if they have placed orders through 
their salesman or by themselves.*/
select customer.cust_name,customer.city,orders.ord_no,orders.ord_date,salesman.name,salesman.commission
from customer left join orders on customer.customer_id=orders.customer_id left join salesman on 
customer.salesman_id=salesman.salesman_id;

