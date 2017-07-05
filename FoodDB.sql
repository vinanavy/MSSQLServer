CREATE DATABASE dbFood
GO

CREATE TABLE Food
(
	foodId INT PRIMARY KEY NOT NULL,
	foodName NVARCHAR(50),
	foodType NVARCHAR(50),
	foodPrice INT
)
GO

--Thêm Dữ Liệu
INSERT INTO dbo.Food
        ( foodId ,
          foodName ,
          foodType ,
          foodPrice
        )
VALUES  ( 1 , -- foodId - int
          N'Bia Tiger' , -- foodName - nvarchar(50)
          N'Bia' , -- foodType - nvarchar(50)
          15000  -- foodPrice - int
        )
INSERT INTO dbo.Food
        ( foodId ,
          foodName ,
          foodType ,
          foodPrice
        )
VALUES  ( 2 , -- foodId - int
          N'Bia Sài Gòn' , -- foodName - nvarchar(50)
          N'Bia' , -- foodType - nvarchar(50)
          14000  -- foodPrice - int
        )
INSERT INTO dbo.Food
        ( foodId ,
          foodName ,
          foodType ,
          foodPrice
        )
VALUES  ( 3 , -- foodId - int
          N'Bia Heneiken' , -- foodName - nvarchar(50)
          N'Bia' , -- foodType - nvarchar(50)
          20000  -- foodPrice - int
        )
INSERT INTO dbo.Food
        ( foodId ,
          foodName ,
          foodType ,
          foodPrice
        )
VALUES  ( 4 , -- foodId - int
          N'Cà Phê Sữa Nóng' , -- foodName - nvarchar(50)
          N'Cà Phê' , -- foodType - nvarchar(50)
          35000  -- foodPrice - int
        )
INSERT INTO dbo.Food
        ( foodId ,
          foodName ,
          foodType ,
          foodPrice
        )
VALUES  ( 5 , -- foodId - int
          N'Cà Phê Sữa Đá' , -- foodName - nvarchar(50)
          N'Cà Phê' , -- foodType - nvarchar(50)
          30000  -- foodPrice - int
        )
INSERT INTO dbo.Food
        ( foodId ,
          foodName ,
          foodType ,
          foodPrice
        )
VALUES  ( 6 , -- foodId - int
          N'Sinh Tố Mít' , -- foodName - nvarchar(50)
          N'Sinh Tố' , -- foodType - nvarchar(50)
          45000  -- foodPrice - int
        )
INSERT INTO dbo.Food
        ( foodId ,
          foodName ,
          foodType ,
          foodPrice
        )
VALUES  ( 7 , -- foodId - int
          N'Sinh Tố Mãng Cầu' , -- foodName - nvarchar(50)
          N'Sinh Tố' , -- foodType - nvarchar(50)
          40000  -- foodPrice - int
        )
GO

--SELECT * FROM dbo.Food






























