
---In this database we will create some tables for making our project good.
----tables are :- 1. Employee Table
------------------2. Passengers table 
------------------3.Station Table
------------------4.Trains Table
------------------5.Tickets table
------------------6.fare table
------------------7.Class table
------------------8.Time table
------------------9.Route table

------------------------------------------Lets begin-------------------------------------------------------

create Table Employee(
Employee_ID int primary key,
Employee_Name varchar(50),
Address varchar(200),
Gender Varchar(10),
Mobile_NO varchar(15),
Salary money)

------------------------------------------------------------------------------------------------------------

create table passenger(
Passenger_Id int Primary key,
passenger_Name varchar(50),
Seat_no int,
Gender varchar(15),
Mobile_no varchar(15),
Employee_ID int foreign key References Employee(Employee_ID),
Reservation_Status varchar (10))

---------------------------------------------------------------------------------------------------------------------------------

create table Station(
Station_code varchar(10),
Station_Name varchar(50),
No_of_lines int,
No_Of_Platforms int)

----------------------------------------------------------------------------------------------------------------------------------

create table ticket(
Ticket_no int unique,
Source varchar(50),
Destination varchar(50),
Class_id varchar(20),
Fare money,
Train_id int )


---------------------------------------------------------------------------------------------------------------------------------

create table Train(
Train_id int unique,
Station_id varchar(20),
Train_Name varchar(50))


-----------------------------------------------------------------------------------------------------------------------------------

create table fare(
Recipt_no int identity(1,1),
Train_id int,
Source varchar(50),
Destination varchar(50),
Class varchar(20),
Fare money,
Ticket_no varchar(30))

------------------------------------------------------------------------------------------------------------------------------------

create table Class(
Class varchar(20),
Journey_date date,
No_OF_Seats int,
Train_ID int)

------------------------------------------------------------------------------------------------------------------------------------------

create table TimeTable(
REF_NO int,
DEP_TIME time,
ARR_TIME time,
TRAIN_ID int,
Station_id varchar(20))

------------------------------------------------------------------------------------------------------------------------------------------

create table Train_Route(
ARR_TIME time,
DEP_TIME time,
STOP_NO int)

----------------------------------------------------------( End )-----------------------------------------------------------------------
