create database employee;
use employee;
CREATE TABLE Employee (
    empno INT PRIMARY KEY,
    ename VARCHAR(50),
    job VARCHAR(50),
    mgr INT,
    hiredate DATE,
    sal DECIMAL(10, 2),
    comm DECIMAL(10, 2),
    deptno INT
);
INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES
(8369, 'SMITH', 'CLERK', 8902, '1990-12-18', 800.00, NULL, 20),
(8499, 'ANYA', 'SALESMAN', 8698, '1991-02-20', 1600.00, 300.00, 30),
(8521, 'SETH', 'SALESMAN', 8698, '1991-02-22', 1250.00, 500.00, 30),
(8566, 'MAHADEVAN', 'MANAGER', 8839, '1991-04-02', 2985.00, NULL, 20),
(8654, 'MOMIN', 'SALESMAN', 8698, '1991-09-28', 1250.00, 1400.00, 30),
(8698, 'BINA', 'MANAGER', 8839, '1991-05-01', 2850.00, NULL, 30),
(8882, 'SHIVANSH', 'MANAGER', 8839, '1991-06-09', 2450.00, NULL, 10),
(8888, 'SCOTT', 'ANALYST', 8566, '1992-12-09', 3000.00, NULL, 20),
(8839, 'AMIR', 'PRESIDENT', NULL, '1991-11-18', 5000.00, NULL, 10),
(8844, 'KULDEEP', 'SALESMAN', 8698, '1991-09-08', 1500.00, 0.00, 30);
select * from Employee;
select ename,sal from Employee where sal>=2200;
select * from Employee where comm is NULL or comm=0;
select ename,sal from Employee where sal NOT BETWEEN 2500 AND 4000;
select ename,job,sal from Employee where mgr IS  NULL; --DOUBT 
select ename from Employee where ename LIKE '__A%';--no name contains like that
select ename from Employee where ename LIKE 'A%';
select ename from Employee where ename LIKE 'B_A%';--no output
select empno, ename, job, mgr, hiredate, sal,
			CASE
				WHEN comm IS NULL THEN 'Not given' 
				ELSE str(comm)
			END AS commision,
			deptno 
			from Employee;--Error converting data type varchar to numeric.




