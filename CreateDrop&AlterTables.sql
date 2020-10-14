
/*Creation of Database, Dropping Tables with Errors and Updating Tables
Created by: Ryan Campbell (20191021)
17 August 2020*/

Create Database MOH_COVID19TRACKER;

create table PatientDetails
(
	PatientNo int Primary Key identity (1000000000,10),
	FirstName varchar (50) not null,
	LastName varchar (50) not null,
	DOB date not null,
	BloodType varchar (50), 
	DocID int,
	NurseID int,
	LabTechID int,
	EmployeeNum int,		
)

create table AdmissionDetails
(
	PatientNo int Primary key identity (4000,10),
	IsolationPointNo int,
	QuarantineDate date,
	ReleaseDate date,
)

Drop Table AdmissionDetails; --Table had incorrect structure--

create table AdmissionDetails
(
	AdmissionID int Primary Key identity (4000,10),
	IsolationPointNo int not null,
	QuarantineDate date not null,
	ReleaseDate date not null,
	PatientNo int,
)

create table DoctorDetails
(
	DocID int Primary Key identity (10050,10),
	IsolationPointNo int,
	Shift varchar(10),
	Speciality varchar(50),
)

create table NurseDetails
(
	NurseID int Primary Key identity (50050,5),
	IsolationPointNo int,
	Shift varchar(10),
	Speciality varchar(50),
)

create table LabTechDetails
(
	LabTechID int Primary Key identity (90000,2),
	IsolationPointNo int,
	Shift varchar(10),
)
Drop table DoctorDetails,NurseDetails,LabTechDetails; --all 3 tables had incorrect structure--

create table DoctorDetails
(
	DocID int Primary Key identity (10050,10),
	FirstName varchar (50),
	LastName varchar (50),
	IsolationPointNo int,
	Shift varchar (10),
	Speciality varchar (50),
)

create table NurseDetails
(
	NurseID int Primary Key identity (50050,5),
	FirstName varchar (50),
	LastName varchar (50),
	IsolationPointNo int,
	Shift varchar (10),
	Speciality varchar (50),
)

create table LabTechDetails
(
	LabTechID int Primary Key identity (90000,2),
	IsolationPointNo int,
	Shift varchar (10),
	
)

create table QuarantineLocation
(
	LocationID int Primary Key identity (1000,100),
	MaxCapacity int, 
	CurrentCapacity int,
	StaffCompliment int,		
)

create table IsolationPointDetails
(
	IsolationPointNo int Primary Key identity (250050,1005),
	Location varchar (50),
	LocationID int,
)

create table PatientEmploymentDetails
(
	PatientNo int Primary Key identity(1000,50),
	Employer varchar(50),
	LengtofEmployment int,	 
)

create table EmployerDetails
(
	Employer varchar (50),
	Address varchar (50),
)

drop table PatientEmploymentDetails, EmployerDetails; --tables had incorrect structure--

create table PatientEmploymentDetails
(
	EmployeeNum int Primary Key identity(26900,20),
	Employer varchar (50),
	LengtofEmployment int,
	PatientNo int ,
	CONSTRAINT fk_employment FOREIGN KEY (PatientNo)
	REFERENCES PatientDetails(PatientNo),	 
) 

create table EmployerDetails
(	EmployerNum int Primary Key identity (3650,25), 
	Employer varchar(50),
	Address varchar(50),
	EmployeeNum int,
)

create Table SupportStaffDetails
(
	StaffID int Primary Key identity (69000,100),
	Shift varchar(10),
	Role varchar(50), --the word function is a keyword in sql, so it had to be changed to Role--
	IsolationPointNo int,
)

alter table PatientDetails
Add CONSTRAINT fk_doctor FOREIGN KEY (DocID)
REFERENCES DoctorDetails(DocID);

Alter table AdmissionDetails
Add CONSTRAINT fk_Patient FOREIGN KEY (PatientNo)
REFERENCES PatientDetails(PatientNo);

alter table PatientDetails
Add CONSTRAINT fk_nurse FOREIGN KEY (NurseID)
REFERENCES NurseDetails(NurseID);

alter table LabTechDetails
Add CONSTRAINT fk_TechPt FOREIGN KEY (IsolationPointNo)
REFERENCES IsolationPointDetails(IsolationPointNo);

alter table PatientDetails
Add CONSTRAINT fk_labtech FOREIGN KEY (LabTechID)
REFERENCES LabTechDetails(LabTechID);

alter table DoctorDetails
Add CONSTRAINT fk_DocPt FOREIGN KEY (IsolationPointNo)
REFERENCES IsolationPointDetails(IsolationPointNo);

alter table NurseDetails
Add CONSTRAINT fk_NursePt FOREIGN KEY (IsolationPointNo)
REFERENCES IsolationPointDetails(IsolationPointNo);

alter table QuarantineLocation
Add CONSTRAINT fk_locPt FOREIGN KEY (LocationID)
REFERENCES IsolationPointDetails(LocationID);

alter Table EmployerDetails
Add CONSTRAINT fk_employer FOREIGN KEY (EmployeeNum)
REFERENCES PatientEmploymentDetails(EmployeeNum),

Alter Table SupportStaffDetails
Add CONSTRAINT fk_isoloationPt FOREIGN KEY (IsolationPointNo)
REFERENCES IsolationPointDetails(IsolationPointNo),






