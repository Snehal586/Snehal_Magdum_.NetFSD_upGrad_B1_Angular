insert into Departments (DepartmentID,DepartmentName, Location) values
(11, 'CSE', '1st floor'),
(22, 'Civil', '2nd floor'),
(33, 'Mechanical', '3rd floor'),
(44 ,'ENTC', '4th floor'),
(55, 'AI & ML', '5th floor');

select * from Departments

insert into Teachers(TeacherID, TeacherFullName, Email, DepartmentID, HireDate, Salary) values 
(1,'Sne Magdum', 'sne@gmail.com', 11, '2021-10-15', 80000),
(2,'Krishna kaul', 'krish@gmail.com', 22, '2024-02-15', 40000),
(3,'Rajesh Patil', 'raj@gmail.com', 33, '2021-10-15', 50000),
(4,'Pooja Patil', 'poo@gmail.com', 11, '2021-10-15', 80000),
(5,'Riya Jadhav', 'riya@gmail.com', 44, '2021-10-15', 70000),
(6,'Sejal Kumbhar', 'sejal@gmail.com', 44, '2021-10-15', 45000),
(7,'Neha Chavan', 'neha@gmail.com', 22, '2021-10-15', 50000),
(8,'Shweta Magdum', 'shweta@gmail.com', 55, '2021-10-15', 60000),
(9,'Sid Mohite', 'sid@gmail.com', 33, '2021-10-15', 90000),
(10,'Shruti Patil', 'shru@gmail.com', 55, '2021-10-15', 60000);

select * from Teachers

insert into Students (StudentID, FirstName, LastName, DateOfBirth, Gender, DepartmentID, AdmissionDate) values 
(101,'Piya','Patel','2001-10-15','Female',11,'2025-06-20'),
(102,'Tejas','Jadhav','2002-07-01','Male',11,'2025-06-20'),
(103,'Niya','Sharma','2001-12-18','Female',11,'2025-06-20'),
(104,'Rakesh','Jadhav','2002-05-24','Male',11,'2025-06-20'),
(105,'Niraj','Patil','2000-12-28','Male',22,'2025-06-20'),
(106,'Ziya','Kamble','2001-08-20','Female',22,'2025-06-20'),
(107,'Niraj','Patil','2000-12-28','Female',22,'2025-06-20'),
(108,'Kartiki','Jadhav','2001-12-28','Female',22,'2025-06-20'),
(109,'Omkar','Patil','2003-05-24','Male',33,'2025-06-20'),
(110,'Kiran','Kedare','2002-07-17','Male',33,'2025-06-20'),
(111,'Sanjana','Farakte','2000-08-18','Female',33,'2025-06-20'),
(112,'Ganesh','Surve','2001-12-08','Male',33,'2025-06-20'),
(113,'Pankti','Khaire','2000-04-07','Female',44,'2025-06-20'),
(114,'Zoya','Khan','2001-09-07','Female',44,'2025-06-20'),
(115,'Sharadha','Ghadge','2001-04-23','Female',44,'2025-06-20'),
(116,'Dhanu','Patil','2000-04-07','Male',44,'2025-06-20'),
(117,'Harshwardhan','Mangle','2000-04-07','Male',55,'2025-06-20'),
(118,'Naitik','Patil','2000-04-08','Male',55,'2025-06-20'),
(119,'Neha','Chavan','2002-12-07','Female',55,'2025-06-20'),
(120,'Kiya','Jadhav','2003-11-02','Female',55,'2025-06-20')

select * from Students

insert into Courses(CourseID, CourseName, Credits, DepartmentID, TeacherID) values
(1,'Machine Learning',4,11,1),
(2,'Operating Systems',4,11,4),
(3,'DBMS',3,11,2),
(4,'Structural Engg',3,22,2),
(5,'Surveying',3,22,7),
(6,'CNN',4,33,3),
(7,'Machine Design',3,33,9),
(8,'Digital',4,44,5),
(9,'Signal Processing',3,44,6),
(10,'Computer network',5,55,8);

select * from Courses

insert into Enrollments(EnrollmentID, StudentID, CourseID, EnrollmentDate) values
(1,101,1,'2025-06-20'),
(2,102,2,'2025-06-20'),
(3,103,3,'2025-06-20'),
(4,104,1,'2025-06-20'),
(5,105,4,'2025-06-20'),
(6,106,5,'2025-06-20'),
(7,107,4,'2025-06-20'),
(8,108,5,'2025-06-20'),
(9,109,6,'2025-06-20'),
(10,110,7,'2025-06-20'),
(11,111,6,'2025-06-20'),
(12,112,7,'2025-06-20'),
(13,113,8,'2025-06-20'),
(14,114,9,'2025-06-20'),
(15,115,8,'2025-06-20'),
(16,116,9,'2025-06-20'),
(17,117,10,'2025-06-20'),
(18,118,10,'2025-06-20'),
(19,119,1,'2025-06-20'),
(20,120,2,'2025-06-20'),
(21,101,3,'2025-06-20'),
(22,102,4,'2025-06-20'),
(23,103,5,'2025-06-20'),
(24,104,6,'2025-06-20'),
(25,105,7,'2025-06-20'),
(26,106,8,'2025-06-20'),
(27,107,9,'2025-06-20'),
(28,108,10,'2025-06-20'),
(29,109,2,'2025-06-20'),
(30,110,3,'2025-06-20');

select * from Enrollments

insert into Exams (ExamID, CourseID, ExamDate, ExamType) values
(1,1,'2025-07-10','Online'),
(2,2,'2025-07-20','Offline'),
(3,3,'2025-08-05','Online'),
(4,4,'2025-09-10','Offline'),
(5,5,'2025-10-01','Online');

select * from Exams


insert into Marks (MarkID, StudentID, ExamID, MarksObtained) values
(1,101,1,78),
(2,102,1,65),
(3,103,1,88),
(4,104,1,72),
(5,105,1,60),
(6,106,2,75),
(7,107,2,82),
(8,108,2,67),
(9,109,2,90),
(10,110,2,55),
(11,111,3,70),
(12,112,3,85),
(13,113,3,62),
(14,114,3,74),
(15,115,3,80),
(16,116,4,68),
(17,117,4,92),
(18,118,4,77),
(19,119,4,83),
(20,120,4,69),
(21,101,5,88),
(22,102,5,72),
(23,103,5,91),
(24,104,5,64),
(25,105,5,73),
(26,106,1,66),
(27,107,2,79),
(28,108,3,81),
(29,109,4,87),
(30,110,5,76);

select * from Marks