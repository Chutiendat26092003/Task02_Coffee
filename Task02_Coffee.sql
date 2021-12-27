create database Task02_Coffee
go 

use Task02_Coffee
go

create table Coffee(
    CoffeeID int primary key,
	CoffeeName nvarchar(100),
	Tel varchar(30),
	UtilitiID int foreign key references  Utilities(UtilitiID),
	CountryID int foreign key references Country(CountryID),
	CityID int foreign key references City(CityID),
	DistrictID int foreign key references District(DistrictID)
)
go

create table Utilities(
    UtilitiID int primary key,
	UtilitiName nvarchar(150)
)
go

create table Country(
    CountryID int primary key,
	CountryName nvarchar(100)
)
go 

create table City(
    CityID int primary key,
    CityName nvarchar(100),
	CountryID int foreign key references Country(CountryID)
)
go

create table District(
    DistrictID int primary key,
    DistrictName nvarchar(100),
	CityID int foreign key references City(CityID)
)
go

select * from Coffee
select * from Utilities
select * from Country
select * from City
select * from District
