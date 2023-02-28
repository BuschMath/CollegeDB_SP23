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