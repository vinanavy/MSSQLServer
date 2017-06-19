CREATE DATABASE QLDanhBa
GO

CREATE TABLE Contact
(
	Ma INT PRIMARY KEY NOT NULL,
	Ten NVARCHAR(50),
	Email NVARCHAR(50),
	SDT NVARCHAR(11)
)
GO
INSERT INTO dbo.Contact
        ( Ma, Ten, Email, SDT )
VALUES  ( 1, -- Ma - int
          N'Nguyễn A', -- Ten - nvarchar(50)
          N'A@gmail.com', -- Email - nvarchar(50)
          N'123456789'  -- SDT - nvarchar(11)
          )
INSERT INTO dbo.Contact
        ( Ma, Ten, Email, SDT )
VALUES  ( 2, -- Ma - int
          N'Lê B', -- Ten - nvarchar(50)
          N'B@gmail.com', -- Email - nvarchar(50)
          N'987654321'  -- SDT - nvarchar(11)
          )
INSERT INTO dbo.Contact
        ( Ma, Ten, Email, SDT )
VALUES  ( 3, -- Ma - int
          N'Trần B', -- Ten - nvarchar(50)
          N'B@gmail.com', -- Email - nvarchar(50)
          N'123654987'  -- SDT - nvarchar(11)
          )









