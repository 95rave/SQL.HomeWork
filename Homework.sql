create database HomeWork

use HomeWork

 create table Notebooks(
    Id int primary key identity,
	[Name] nvarchar (50) not null,
	Price int
  
  
  )

  alter table Notebooks
  add constraint DF_Price default 200 for Price 

  create table Brands (
     ID int primary key identity,
	 [Name] nvarchar(25) not null
  )

  alter table Brands
  add constraint CK_Name check (len(Name)>=3) 

  insert  into Brands ([Name])
  values('DELL'),
		('ASUS'),
		('ACER'),
		('LENOVA')

insert into Notebooks(Name, Price)
values ('Vostro', 1600),
        ('TUFF Gaming', 750),
		('Nitro', 250),
		('Idepad', 1800)

alter table Notebooks
add BrandId int foreign key references Brands(ID)


select Notebooks.Name , Brands.Name, Notebooks.Price from Notebooks
join Brands 
on Notebooks.BrandId=Brands.ID 

select * from Brands where Brands.Name like '%a%'

select* from Notebooks where Price between 100 and 500 or Price>1000


