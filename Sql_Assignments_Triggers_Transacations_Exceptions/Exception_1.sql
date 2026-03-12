create procedure sp_AddStudent
@StudentID int,
@FirstName varchar(20),
@LastName varchar(20),
@DepartmentID int,
@Gender varchar(10),
@AdmissionDate date
as
begin
begin try
insert into Students
(StudentID, FirstName, LastName, DepartmentID, Gender, AdmissionDate)

values
(@StudentID, @FirstName, @LastName, @DepartmentID, @Gender, @AdmissionDate)

print 'Student inserted successfully'
end try

begin catch
print 'Error occurred while inserting student'
print error_message()
end catch
end

--1
exec sp_AddStudent
140,
'Akshara',
'Khanna',
33,
'Female',
'2025-02-27'

--2
exec sp_AddStudent
140,
'Akshara',
'Khanna',
88,
'Female',
'2025-02-27'