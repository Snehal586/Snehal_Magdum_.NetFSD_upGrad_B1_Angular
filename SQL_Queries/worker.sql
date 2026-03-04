create database company
use company

CREATE TABLE Worker (
	WORKER_ID INT PRIMARY KEY IDENTITY(1,1),
	FIRST_NAME VARCHAR(25),
	LAST_NAME VARCHAR(25),
	SALARY INT,
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);
CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT,
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
	REFERENCES Worker(WORKER_ID)
    ON DELETE CASCADE
);
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
	REFERENCES Worker(WORKER_ID)
    ON DELETE CASCADE
);
insert into Worker (FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) values 
('Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
('Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
('Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
('Amitabh', 'Singh', 500000,	'2014-02-20 09:00:00', 'Admin'),
('Vivek', 'Bhati',	500000,	'2014-06-11 09:00:00', 'Admin'),
('Vipul',	'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
('Satish',	'Kumar', 75000,	'2014-01-20 09:00:00', 'Account'),
('Geetika', 'Chauhan',	90000, '2014-04-11 09:00:00', 'Admin');

insert into Bonus values
(1,5000,'2016-02-20 00:00:00'),
(2,3000,'2016-06-11 00:00:00'),
(3,4000,'2016-02-20 00:00:00'),
(1,4500,'2016-02-20 00:00:00'),
(2,3500,'2016-06-11 00:00:00');

insert into Title values
(1,'Manager','2016-02-20 00:00:00'),
(2,'Executive','2016-06-11 00:00:00'),
(8,'Executive','2016-06-11 00:00:00'),
(5,'Manager','2016-06-11 00:00:00'),
(4,'Asst. Manager','2016-06-11 00:00:00'),
(7,'Executive','2016-06-11 00:00:00'),
(6,'Lead','2016-06-11 00:00:00'),
(3,'Lead','2016-06-11 00:00:00');

--1
select first_name as worker_name from worker;

--2
SELECT UPPER(FIRST_NAME) FROM Worker;

--3
select distinct department from worker;

--4
select left(first_name,3) from worker;

--5
select charindex('a','amitabh') as position;

--6
select rtrim(first_name) from worker;

--7
select ltrim(department) from worker;

--8
select distinct department, len(department) as length from worker;

--9
select replace(first_name,'a','A') from worker;

--10
select first_name + ' ' + last_name as complete_name from worker;

--11
select * from worker
order by first_name asc;

--12
select * from worker
order by first_name asc, department desc;

--13
select * from worker
where first_name in ('vipul','satish');

--14
select * from worker
where first_name not in ('vipul','satish');

--15
select * from worker
where department = 'admin';

--16
select * from worker
where first_name like '%a%';

--17
select * from worker
where first_name like '%a';

--18
select * from worker
where first_name like '_____h';

--19
select * from worker
where salary between 100000 and 500000;

--20
select * from worker
where month(joining_date)=2 and year(joining_date)=2014;

--21
select first_name, salary from worker
where salary between 50000 and 100000;

--22
select department, count(*) as total_workers
from worker
group by department
order by total_workers desc;

--23
select w.first_name, t.worker_title
from worker w
join title t
on w.worker_id = t.worker_ref_id
where t.worker_title='manager';

--24
select getdate();

--25
select top 10 * from worker;