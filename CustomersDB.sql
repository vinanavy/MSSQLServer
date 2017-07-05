CREATE DATABASE CustomersManagement
GO

CREATE TABLE Customers
(
	ID INT PRIMARY KEY NOT NULL,
	Name NVARCHAR(50),
	Sex INT,
	Phone NVARCHAR(11),
	TypeCus NVARCHAR(20)
)
GO

INSERT INTO dbo.Customers
        ( ID, Name, Sex, Phone, TypeCus )
VALUES  ( 1, -- ID - int
          N'Monkey D Luffy', -- Name - nvarchar(50)
          0, -- Sex - int
          N'0123456789', -- Phone - nvarchar(11)
          N'VIP'  -- TypeCus - nvarchar(20)
          )
INSERT INTO dbo.Customers
        ( ID, Name, Sex, Phone, TypeCus )
VALUES  ( 2, -- ID - int
          N'Roronoa Zoro', -- Name - nvarchar(50)
          0, -- Sex - int
          N'0987654321', -- Phone - nvarchar(11)
          N'VIP'  -- TypeCus - nvarchar(20)
          )
INSERT INTO dbo.Customers
        ( ID, Name, Sex, Phone, TypeCus )
VALUES  ( 3, -- ID - int
          N'Songoku', -- Name - nvarchar(50)
          0, -- Sex - int
          N'0123457689', -- Phone - nvarchar(11) 
          N'VIP'  -- TypeCus - nvarchar(20)
          )
INSERT INTO dbo.Customers
        ( ID, Name, Sex, Phone, TypeCus )
VALUES  ( 4, -- ID - int
          N'Hyuga Neji', -- Name - nvarchar(50)
          0, -- Sex - int
          N'1234657809', -- Phone - nvarchar(11) 
          N'Normal'  -- TypeCus - nvarchar(20)
          )
INSERT INTO dbo.Customers
        ( ID, Name, Sex, Phone, TypeCus )
VALUES  ( 5, -- ID - int
          N'Berrus', -- Name - nvarchar(50)
          0, -- Sex - int
          N'0979712345', -- Phone - nvarchar(11) 
          N'Normal'  -- TypeCus - nvarchar(20)
          )
--SELECT * FROM dbo.Customers