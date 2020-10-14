--Questions 2 - 4--

--2a. Calculate the Number of Employees by Employer--
select count(EmployeeNum), Employer
from PatientEmploymentDetails
GROUP BY Employer;

--2b. Run a Subquery to get the PatientNo and Name of Persons who were quarantined before and after a particular date-- 
select PatientNo, FirstName, LastName
from PatientDetails
where PatientNo IN (Select PatientNo FROM AdmissionDetails Where QuarantineDate < '2020-05-03');

select PatientNo, FirstName, LastName
from PatientDetails
where PatientNo IN (Select PatientNo FROM AdmissionDetails Where QuarantineDate > '2020-05-03');


--2c.Add and Subtract minimum of fourteen (14) days to Quarantine date to calculate patient Release Date.--
select AdmissionID, PatientNo, DATEADD (DD, 14, QuarantineDate) AS DateAdd from AdmissionDetails;

select AdmissionID, PatientNo, DATEADD (DD, -14, ReleaseDate) AS DateAdd from AdmissionDetails;

--2d. Date used in a Formula--
select PatientNo,IsolationPointNo,  DATEDIFF(DD, QuarantineDate,ReleaseDate) as DATEDIFF from AdmissionDetails;

--2e. Joined two tables to get Patient No and employment details--
select PatientDetails.FirstName,PatientDetails.LastName, PatientEmploymentDetails.Employer,PatientEmploymentDetails.LengtofEmployment
from PatientDetails
inner join PatientEmploymentDetails on PatientDetails.PatientNo=PatientEmploymentDetails.PatientNo;

--2f. Show all Doctors who are not on a particular shift or are on a particular shift--
select * From DoctorDetails
where Shift != 'Night';

select * From DoctorDetails
where Shift = 'Morning';

--2g. Generate information from DB based on any two criterias--
select * from NurseDetails
where Shift = 'Morning' and
Speciality = 'Critical Care';

select * from QuarantineLocation
where MaxCapacity > 300 and 
CurrentCapacity > 300;

--2h. Generate Information from selected table that fall between two given parameters--

select PatientNo,EmployeeNum, Employer
from PatientEmploymentDetails
where LengtofEmployment BETWEEN 1 AND 10;

select IsolationPointNo,StaffID,Role 
from SupportStaffDetails
where StaffID BETWEEN 69000 AND 69200;

--2i. Generate Count by Grouping  
SELECT COUNT(PatientNo), BloodType
FROM PatientDetails
GROUP BY BloodType;

SELECT COUNT(EmployeeNum), Employer
FROM EmployerDetails
GROUP BY Employer;

--2j. Sort data by given parameters--
select * from QuarantineLocation
order by MaxCapacity DESC;

select * from QuarantineLocation
order by StaffCompliment ASC;

--3a.Add a field to NursesDetails Table for Marital Status--

Alter Table NurseDetails
Add MaritalStatus varchar (10);

--3b. Change Datatype of Marital Status field--

Alter Table NurseDetails
Alter Column MaritalStatus varchar (50);

--3c. Delete Marital Status field from the NursesDetails Table--

Alter Table NurseDetails
Drop Column MaritalStatus;

--3f. Remove a Doctor from the DoctorDetails Table--
Delete from DoctorDetails where DocID='10140';

--4a. Sort Data not using the Primary Key
Select * From EmployerDetails
order by Address ASC;

--4b. Create a subset of Cardiologists from the DoctorDetails Table--
Select 
DocID AS SpecialistID,
FirstName,
LastName,
Speciality
Into
dbo.Specialist
From
DoctorDetails
Where 
Speciality='Cardiologist';

