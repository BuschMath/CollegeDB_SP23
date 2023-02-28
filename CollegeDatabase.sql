create database college;

create table students(studentID int,
fName varchar(256),
lName varchar(256),
DoB date,
gender char(1),
address varchar(256),
phoneNo varchar(256),
emails varchar(256),
major varchar(256),
academicStanding smallint,
gpa float,
creditsEarned int,
advisor varchar(256),
startDate date,
graduationDate date,
financialAidStatus varchar(256),
residancyStatus bit,
campusLocation varchar(256));

-- Basic query
select * from students;

alter table students add SSN char(11), athlete bit;

alter table students alter column studentID int not null;

alter table students add primary key (studentID);

create table gender(genderID int primary key,
genderShort varchar(8),
genderName varchar(256));

insert into gender values (1,'M', 'male');

alter table students drop constraint PK__students__4D11D65C45064CB4;

alter table students drop column studentID;

alter table students add studentID int identity(1000, 1) primary key;

select * from students;

insert into students values ('John', 'Doe', '2000-1-1', 'M', '1', '1234567890', 
	'doe@place.org', 'math', 1, 3.14, 12, 'Jane', '2023-1-1', '2025-1-1', 'green', 1, 
	'Fort Dodge', '123-45-6789', 1);

insert into students values ('Jane', 'Smith', '1-1-2000', 'M', '1', '1234567890', 
	'doe@place.org', 'math', 1, 3.14, 12, 'Jane', '2023-1-1', '2025-1-1', 'green', 1, 
	'Fort Dodge', '123-45-6789', 1);