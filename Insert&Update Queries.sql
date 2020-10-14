
--Insert and Update Queries--

insert into dbo.PatientDetails (FirstName,LastName,DOB,BloodType) values ('Richard','Brown','1981-10-25','O Negative');
insert into dbo.PatientDetails (FirstName,LastName,DOB,BloodType) values ('Carl','Adams','1998-1-15','O Positive');
insert into dbo.PatientDetails (FirstName,LastName,DOB,BloodType) values ('James','Harris','1956-10-10','O Negative');
insert into dbo.PatientDetails (FirstName,LastName,DOB,BloodType) values ('Craig','Daniels','1967-5-23','AB Negative');
insert into dbo.PatientDetails (FirstName,LastName,DOB,BloodType) values ('John','Coombs','1981-12-5','AB Positive');
insert into dbo.PatientDetails (FirstName,LastName,DOB,BloodType) values ('Pearce','Brosnan','1991-2-11','O Negative');
insert into dbo.PatientDetails (FirstName,LastName,DOB,BloodType) values ('Alden','Cantrell','1985-11-7','AB Negative');
insert into dbo.PatientDetails (FirstName,LastName,DOB,BloodType) values ('Thomas','Crane','1996-9-22','B Negative');
insert into dbo.PatientDetails (FirstName,LastName,DOB,BloodType) values ('Miranda','Samuels','2003-8-11','B Negative');
insert into dbo.PatientDetails (FirstName,LastName,DOB,BloodType) values ('Allison','Chambers','1981-1-5','B Positive');

select * from PatientDetails;


insert into QuarantineLocation (MaxCapacity,CurrentCapacity,StaffCompliment) values (500,220,60);
insert into QuarantineLocation (MaxCapacity,CurrentCapacity,StaffCompliment) values (1500,20,160);
insert into QuarantineLocation (MaxCapacity,CurrentCapacity,StaffCompliment) values (300,15,15);
insert into QuarantineLocation (MaxCapacity,CurrentCapacity,StaffCompliment) values (1100,23,45);
insert into QuarantineLocation (MaxCapacity,CurrentCapacity,StaffCompliment) values (250,150,30);
insert into QuarantineLocation (MaxCapacity,CurrentCapacity,StaffCompliment) values (650,195,40);
insert into QuarantineLocation (MaxCapacity,CurrentCapacity,StaffCompliment) values (100,2,15);
insert into QuarantineLocation (MaxCapacity,CurrentCapacity,StaffCompliment) values (900,465,40);
insert into QuarantineLocation (MaxCapacity,CurrentCapacity,StaffCompliment) values (60,21,12);
insert into QuarantineLocation (MaxCapacity,CurrentCapacity,StaffCompliment) values (500,211,35);

select * from QuarantineLocation;

insert into IsolationPointDetails (Location,LocationID) values ('Port Antonio', 1000);
insert into IsolationPointDetails (Location,LocationID) values ('Port Maria', 1100);
insert into IsolationPointDetails (Location,LocationID) values ('Montego Bay', 1200);
insert into IsolationPointDetails (Location,LocationID) values ('St Anns Bay', 1300);
insert into IsolationPointDetails (Location,LocationID) values ('Lucea', 1400);
insert into IsolationPointDetails (Location,LocationID) values ('Kingston', 1500);
insert into IsolationPointDetails (Location,LocationID) values ('Mandeville', 1600);
insert into IsolationPointDetails (Location,LocationID) values ('Falmouth', 1700);
insert into IsolationPointDetails (Location,LocationID) values ('Santa Cruz', 1800);
insert into IsolationPointDetails (Location,LocationID) values ('May Pen', 1900);

select * from IsolationPointDetails;

insert into AdmissionDetails (IsolationPointNo,QuarantineDate,ReleaseDate,PatientNo)values(250050,'2020-3-23', '2020-3-26',1000000030);
insert into AdmissionDetails (IsolationPointNo,QuarantineDate,ReleaseDate,PatientNo)values(251055,'2020-3-22', '2020-4-10',1000000040);
insert into AdmissionDetails (IsolationPointNo,QuarantineDate,ReleaseDate,PatientNo)values(252060,'2020-4-12', '2020-4-30',1000000050);
insert into AdmissionDetails (IsolationPointNo,QuarantineDate,ReleaseDate,PatientNo)values(253065,'2020-4-23', '2020-5-2',1000000060);
insert into AdmissionDetails (IsolationPointNo,QuarantineDate,ReleaseDate,PatientNo)values(254070,'2020-3-12', '2020-3-29',1000000070);
insert into AdmissionDetails (IsolationPointNo,QuarantineDate,ReleaseDate,PatientNo)values(255075,'2020-7-15', '2020-8-6',1000000080);
insert into AdmissionDetails (IsolationPointNo,QuarantineDate,ReleaseDate,PatientNo)values(256080,'2020-4-12', '2020-5-16',1000000090);
insert into AdmissionDetails (IsolationPointNo,QuarantineDate,ReleaseDate,PatientNo)values(257085,'2020-3-23', '2020-3-26',1000000100);
insert into AdmissionDetails (IsolationPointNo,QuarantineDate,ReleaseDate,PatientNo)values(258090,'2020-5-3', '2020-5-25',1000000110);
insert into AdmissionDetails (IsolationPointNo,QuarantineDate,ReleaseDate,PatientNo)values(259095,'2020-5-23', '2020-6-16',1000000120);

select*from AdmissionDetails;

insert into DoctorDetails (FirstName,LastName,IsolationPointNo,Shift,Speciality)values('Alvaro','Mendes',250050,'Morning','Internal Medicine');
insert into DoctorDetails (FirstName,LastName,IsolationPointNo,Shift,Speciality)values('Carolyn','Barnes',251055,'Afternoon','Cardiology');
insert into DoctorDetails (FirstName,LastName,IsolationPointNo,Shift,Speciality)values('Chris','Copeland',252060,'Night','Surgery');
insert into DoctorDetails (FirstName,LastName,IsolationPointNo,Shift,Speciality)values('Chrisann','Campbell',253065,'Morning','Internal Medicine');
insert into DoctorDetails (FirstName,LastName,IsolationPointNo,Shift,Speciality)values('Alvin','Vargas',254070,'Afternoon','Pulmonology');
insert into DoctorDetails (FirstName,LastName,IsolationPointNo,Shift,Speciality)values('Davian','Mckenzie',255075,'Night','Pediatric');
insert into DoctorDetails (FirstName,LastName,IsolationPointNo,Shift,Speciality)values('Troy','Chambers',256080,'Morning','Cardiology');
insert into DoctorDetails (FirstName,LastName,IsolationPointNo,Shift,Speciality)values('Ava','Somers',257085,'Afternoon','Surgery');
insert into DoctorDetails (FirstName,LastName,IsolationPointNo,Shift,Speciality)values('Yvonne','Binns',258090,'Night','Radiology');
insert into DoctorDetails (FirstName,LastName,IsolationPointNo,Shift,Speciality)values('Kenneth','Binns',259095,'Morning','Neurology');

select * from DoctorDetails;

insert into PatientEmploymentDetails (Employer,LengtofEmployment, PatientNo)values('Grace-Kennedy Limited', 13, 1000000030);
insert into PatientEmploymentDetails (Employer,LengtofEmployment, PatientNo)values('Wray and Nephew', 1, 1000000040);
insert into PatientEmploymentDetails (Employer,LengtofEmployment, PatientNo)values('Berger Paints', 10, 1000000050);
insert into PatientEmploymentDetails (Employer,LengtofEmployment, PatientNo)values('Jamaica Defence Force', 3, 1000000060);
insert into PatientEmploymentDetails (Employer,LengtofEmployment, PatientNo)values('Ministry of Health', 24, 1000000070);
insert into PatientEmploymentDetails (Employer,LengtofEmployment, PatientNo)values('Caricel', 15, 1000000080);
insert into PatientEmploymentDetails (Employer,LengtofEmployment, PatientNo)values('Jamaica Defence Force', 26, 1000000090);
insert into PatientEmploymentDetails (Employer,LengtofEmployment, PatientNo)values('Minstry of National Security', 11, 1000000100);
insert into PatientEmploymentDetails (Employer,LengtofEmployment, PatientNo)values('Ministry of Health', 14, 1000000110);
insert into PatientEmploymentDetails (Employer,LengtofEmployment, PatientNo)values('Grace-Kennedy Limited', 19, 1000000120);

select * from PatientEmploymentDetails;

insert into EmployerDetails (Employer, Address, EmployeeNum)Values('Jamaica Defence Force','Up Park Camp, Kingston 5',27000);
insert into EmployerDetails (Employer, Address, EmployeeNum)Values('Grace-Kennedy Limited','Harbour Street, Kingston',26940);
insert into EmployerDetails (Employer, Address, EmployeeNum)Values('Berger Paints','White Marl, St Catherine',26980);
insert into EmployerDetails (Employer, Address, EmployeeNum)Values('Wray and Nephew','237 Spanish Town Road, Kingston',26960);
insert into EmployerDetails (Employer, Address, EmployeeNum)Values('Ministry of Health','10-16 Grenada Crescent, Kingston',27020);
insert into EmployerDetails (Employer, Address, EmployeeNum)Values('Caricel','5 EastWood Avenue, Kingston',27040);
insert into EmployerDetails (Employer, Address, EmployeeNum)Values('Jamaica Defence Force','Up Park Camp, Kingston 5',27060);
insert into EmployerDetails (Employer, Address, EmployeeNum)Values('Ministry of National Security','NCB Towers, Kingston 5',27080);
insert into EmployerDetails (Employer, Address, EmployeeNum)Values('Ministry of Health','10-16 Grenada Crescent, Kingston',27100);
insert into EmployerDetails (Employer, Address, EmployeeNum)Values('Grace-Kennedy Limited','Harbour Street, Kingston',27120);

select * from EmployerDetails;

insert into NurseDetails(FirstName,LastName,IsolationPointNo,Shift,Speciality)values('Kenesha','Taylor',250050,'Morning','Trauma');
insert into NurseDetails(FirstName,LastName,IsolationPointNo,Shift,Speciality)values('Blessing','Wilson',251055,'Afternoon','A&E');
insert into NurseDetails(FirstName,LastName,IsolationPointNo,Shift,Speciality)values('Keisha','James',252060,'Night','Intensive Care');
insert into NurseDetails(FirstName,LastName,IsolationPointNo,Shift,Speciality)values('Doreen','Mckenzie',253065,'Morning','Critical Care');
insert into NurseDetails(FirstName,LastName,IsolationPointNo,Shift,Speciality)values('Althea','Cornwalle',254070,'Night','Critical Care');

select * from NurseDetails;

insert into LabTechDetails(IsolationPointNo, Shift)values(250050,'Morning');
insert into LabTechDetails(IsolationPointNo, Shift)values(251055,'Afternoon');
insert into LabTechDetails(IsolationPointNo, Shift)values(252060,'Night');
insert into LabTechDetails(IsolationPointNo, Shift)values(253065,'Morning');
insert into LabTechDetails(IsolationPointNo, Shift)values(254070,'Afternoon');

select * from LabTechDetails;

insert into SupportStaffDetails(Shift,Role,IsolationPointNo)values('Morning','Ancillary',250050);
insert into SupportStaffDetails(Shift,Role,IsolationPointNo)values('Afternoon','Chef',251055);
insert into SupportStaffDetails(Shift,Role,IsolationPointNo)values('Morning','Ward Assistant',252060);
insert into SupportStaffDetails(Shift,Role,IsolationPointNo)values('Morning','Ancillary',253065);
insert into SupportStaffDetails(Shift,Role,IsolationPointNo)values('Morning','Ward Assistant',254070);


select * from SupportStaffDetails;

Update PatientDetails
set DocID='10050',
NurseID = '50050',
LabTechID ='90000',
EmployeeNum='26940'
where PatientNo = '1000000030';

Update PatientDetails
set DocID='10060',
NurseID = '50055',
LabTechID ='90002',
EmployeeNum='26960'
where PatientNo = '1000000040';

Update PatientDetails
set DocID='10070',
NurseID = '50060',
LabTechID ='90004',
EmployeeNum='26980'
where PatientNo = '1000000050';

Update PatientDetails
set DocID='10080',
NurseID = '50065',
LabTechID ='90006',
EmployeeNum='27000'
where PatientNo = '1000000060';

Update PatientDetails
set DocID='10090',
NurseID = '50070',
LabTechID ='90008',
EmployeeNum='27020'
where PatientNo = '1000000070';

Update PatientDetails
set DocID='10090',
NurseID = '50070',
LabTechID ='90008',
EmployeeNum='27040'
where PatientNo = '1000000080';

Update PatientDetails
set DocID='10080',
NurseID = '50065',
LabTechID ='90006',
EmployeeNum='27060'
where PatientNo = '1000000090';

Update PatientDetails
set DocID='10060',
NurseID = '50060',
LabTechID ='90004',
EmployeeNum='27080'
where PatientNo = '1000000100';

Update PatientDetails
set DocID='10110',
NurseID = '50055',
LabTechID ='90002',
EmployeeNum='27100'
where PatientNo = '1000000110';

Update PatientDetails
set DocID='10130',
NurseID = '50055',
LabTechID ='90002',
EmployeeNum='27120'
where PatientNo = '1000000120';

select * from PatientDetails;
