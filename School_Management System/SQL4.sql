--1
select * from Students where DepartmentID = 11;

--2
select * from Teachers where HireDate > '2022-01-01';

--3
select * from Students where FirstName LIKE 'A%';

--4
select * from Courses where Credits > 3;

--5
select * from Students where DateOfBirth BETWEEN '2005-01-01' AND '2008-12-31';

--6
select * from Students where DepartmentID <> 33;

--7
select * from Teachers where Salary BETWEEN 40000 AND 70000;

--8
select * from Courses where TeacherID <> 3;