CREATE DATABASE OKTY31
USE OKTY31

CREATE TABLE Products(
ProductID int primary key identity,
[Name] varchar(24) not null,
Price decimal,
Cost decimal,
)

CREATE TABLE Categories(
CategoryID int primary key identity,
[Name] varchar(59) not null
)

CREATE TABLE Colors(
ColorID int primary key identity,
[Name] varchar(40) not null
)

CREATE TABLE ProductsColors (
ProductColorID int primary key identity,
ProductID int references Products(ProductID),
ColorID int references Colors(ColorID)
)

SELECT *FROM Products
SELECT *FROM Categories
SELECT *FROM Colors
SELECT *FROM ProductsColors

INSERT INTO Categories([Name]) VALUES
('ALMA')

INSERT INTO Products([Name],Price,Cost) VALUES
('QIZIL EHMEDI',1.34,99.1),
('SIRIN alma',1.4,95.1),
('TURS ALMA ',1.35,96.1)


INSERT INTO Colors([Name]) VALUES
('AG'),
('SARI'),
('QIRMIZI')


INSERT INTO ProductsColors(ProductID,ColorID) VALUES
(1,3),
(2,3),
(3,3),

(3,1),

(2,1),
(1,2)


SELECT Products.[Name] AS ProductName, Categories.[Name] AS CategoryName, Colors.[Name] AS ColorName FROM Products
LEFT JOIN Categories ON Products.CategoryID = Categories.CategoryID
LEFT JOIN ProductsColors ON Products.ProductID = ProductsColors.ProductID
LEFT JOIN Colors ON ProductsColors.ColorID = Colors.ColorID;
