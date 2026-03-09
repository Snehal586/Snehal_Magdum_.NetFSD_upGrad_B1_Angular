create database school_management
use school_management

create table Departments (
DepartmentID int primary key,
DepartmentName varchar(50) unique,
Location varchar (20)
);

create table Teachers(
TeacherID int primary key,
TeacherName varchar(30),
Email varchar(20) unique,
DepartmentID int,
HireDate date,
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

create table Students (
StudentID int primary key,
FirstName varchar(20),
LastName varchar(20),
DateOfBirth date,
Gender varchar(10) CHECK (Gender IN ('Male','Female')),
DepartmentID int,
AdmissionDate date,
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

create table Courses(
CourseID int primary key,
CourseName varchar(20),
Credits int check (Credits BETWEEN 1 AND 5),
DepartmentID int,
TeacherID int,
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);

create table Enrollments(
EnrollmentID int primary key,
StudentID int,
CourseID int,
EnrollmentDate date default getdate(),
FOREIGN KEY(StudentID) references Students(StudentID),
foreign key(CourseID) references Courses(CourseID)
);

create table Exams(
ExamID int primary key,
CourseID int,
ExamDate date,
ExamType varchar(10) check(ExamType in('Online','Offline')),
foreign key(CourseID) references Courses(courseID)
);

Create table Marks(
MarkID int primary key,
StudentID int,
ExamID int,
MarksObtained int check (MarksObtained BETWEEN 0 AND 100),
FOREIGN KEY(StudentID) references Students(StudentID)
);

