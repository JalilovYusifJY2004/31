CREATE DATABASE TASK3
USE TASK3

CREATE TABLE Roles (
    ID INT PRIMARY KEY IDENTITY,
    Name VARCHAR(24) NOT NULL
	);

	

	CREATE TABLE Users (
	 ID INT PRIMARY KEY IDENTITY,
    Username VARCHAR(29) NOT NULL ,
   [ Password] VARCHAR(25) NOT NULL,
    RoleID INT REFERENCES Roles(ID),
    FOREIGN KEY (RoleID) REFERENCES Roles(ID)
);
INSERT INTO ROLES (Name) VALUES
('Yusif')



INSERT INTO Users(userName,[ Password]) VALUES
('Yuska'),
('help')


SELECT   Users.Username, Roles.Name AS Role
FROM Users 
JOIN Roles ON Users.RoleID = Roles.ID

