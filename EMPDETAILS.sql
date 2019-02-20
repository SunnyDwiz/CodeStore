

create table RoleEmp(Id int identity primary key,
RoleName varchar(15))

create table tbEmpDetails(
Id int identity(10086,01) primary key,
Name varchar(25),
Email varchar(35),
EState varchar(25),
City varchar(25),
Phone varchar(12),
UserName varchar(25),
EPassword varchar(18), 
Gender varchar(5),
Skill varchar(50),
Religion varchar(25),
IsActive bit default(0),
RoleId int  foreign key   references RoleEmp(Id)
)
