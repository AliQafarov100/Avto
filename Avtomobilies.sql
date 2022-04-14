Create database Avtomobiles

use Avtomobiles


create table Settings
(
   [Id] int primary key identity,
   [Logo] varchar(100),
   [Phone] varchar(100),
   [Phone2] varchar(100),
   [IqUrl] varchar(100),
   [FbUrl] varchar (100)
)
create table Advertisment
(
   [Id] int primary key identity,
   [Image] varchar(100),
   [Url] varchar(100)
)
create table Categories
(
   [Id] int primary key identity,
   [Name] varchar(100)
)

create table SubCategories
(
   [Id] int primary key identity,
   [Name] varchar(100),
   [Categories_Id] int foreign key references Categories(Id)
)

create table Brands
(
   [Id] int primary key identity,
   [Name] varchar(100),
   [SubCategories_Id] int foreign key references SubCategories(Id)
)

create table GasTypes
(
   [Id] int primary key identity,
   [Name] varchar(100),

)

create table Color
(
  [Id] int primary key identity,
  [Name] varchar(100)
)

create table Images
(
   [Id] int primary key identity,
   [Name] varchar(100)
)

create table Models
(
   [Id] int primary key identity,
   [Name] varchar(100),
   [Km] int null,
   [Engine] smalLInt null,
   [Release] smalldatetime,
   [Color_Id] int foreign key references Color(Id),
   [Images_Id] int foreign key references Images(Id),
   [GasTypes_Id] int foreign key references GasTypes(Id) null,
   [Brands_Id] int foreign key references Brands(Id)
)

create table City
(
   [Id] int primary key identity,
   [Name] varchar(100),
)

create table Announcement
(
   [Id] int primary key identity,
   [Name] varchar(100),
   [Model_Id] int foreign key references Models(Id),
   [Brand_Id] int foreign key references Brands(Id),
   [Color_Id] int foreign key references Color(Id),
   [GasTypes_Id] int foreign key references GasTypes(Id) null,
   [SubCategories_Id] int foreign key references SubCategories(Id),

)
