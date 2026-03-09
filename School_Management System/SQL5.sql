--1 
select DepartmentID, COUNT(StudentID) as TotalStudents
from Students
GROUP BY DepartmentID;

--2
select ExamID, AVG(MarksObtained) as AverageMarks
from Marks
GROUP BY ExamID;

--3
select CourseID, COUNT(StudentID) as TotalStudents
from Enrollments
GROUP BY CourseID;

--4
select ExamID, MAX(MarksObtained) as MaximumMarks
from Marks
GROUP BY ExamID;

--5
select CourseID, MIN(MarksObtained) as MinimumMarks
from Marks
JOIN Exams ON Marks.ExamID = Exams.ExamID
GROUP BY CourseID;

--6
select DepartmentID, COUNT(StudentID) as TotalStudents
from Students
GROUP BY DepartmentID
HAVING COUNT(StudentID) > 5;