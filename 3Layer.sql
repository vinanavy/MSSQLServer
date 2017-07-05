CREATE DATABASE MoHinhBaLop
GO

CREATE TABLE DanhMuc		
(
	CategoryID INT PRIMARY KEY NOT NULL,
	CategoryName NVARCHAR(25),
)
GO

CREATE TABLE SanPham
(
	ProductID INT PRIMARY KEY NOT NULL,
	ProductName NVARCHAR(25),
	ProductPrice INT,
	CategoryID INT
)

--Thêm dữ liệu
--1. Danh Mục
INSERT INTO dbo.DanhMuc
        ( CategoryID, CategoryName )
VALUES  ( 1, -- CategoryID - int
          N'Electronic'  -- CategoryName - nvarchar(25)
          )
INSERT INTO dbo.DanhMuc
        ( CategoryID, CategoryName )
VALUES  ( 2, -- CategoryID - int
          N'Comic'  -- CategoryName - nvarchar(25)
          )
INSERT INTO dbo.DanhMuc
        ( CategoryID, CategoryName )
VALUES  ( 3, -- CategoryID - int
          N'Film'  -- CategoryName - nvarchar(25)
          )
--2. Sản Phẩm
INSERT INTO dbo.SanPham
        ( ProductID ,
          ProductName ,
          ProductPrice ,
          CategoryID
        )
VALUES  ( 1 , -- ProductID - int
          N'iPhone 5' , -- ProductName - nvarchar(25)
          299 , -- ProductPrice - int
          1  -- CategoryID - int
        )
INSERT INTO dbo.SanPham
        ( ProductID ,
          ProductName ,
          ProductPrice ,
          CategoryID
        )
VALUES  ( 2 , -- ProductID - int
          N'One Piece' , -- ProductName - nvarchar(25)
          100 , -- ProductPrice - int
          2  -- CategoryID - int
        )
INSERT INTO dbo.SanPham
        ( ProductID ,
          ProductName ,
          ProductPrice ,
          CategoryID
        )
VALUES  ( 3 , -- ProductID - int
          N'Tranformer 5' , -- ProductName - nvarchar(25)
          150 , -- ProductPrice - int
          3  -- CategoryID - int
        )

--SELECT * FROM dbo.SanPham





































