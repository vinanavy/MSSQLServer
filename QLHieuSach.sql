CREATE DATABASE QLHieuSach
GO

CREATE TABLE Sach
(
	SDKCB NVARCHAR(10) PRIMARY KEY NOT NULL,
	TenSach NVARCHAR(50),
	TacGia NVARCHAR(50),
	DonGia INT
)
GO

INSERT INTO dbo.Sach
        ( SDKCB, TenSach, TacGia, DonGia )
VALUES  ( N'SDK01', -- SDKCB - nvarchar(10)
          N'Lập trình C# cơ bản', -- TenSach - nvarchar(50)
          N'Lê B', -- TacGia - nvarchar(50)
          500  -- DonGia - int
          )
INSERT INTO dbo.Sach
        ( SDKCB, TenSach, TacGia, DonGia )
VALUES  ( N'SDK02', -- SDKCB - nvarchar(10)
          N'Lập trình C# nâng cao', -- TenSach - nvarchar(50)
          N'Võ C', -- TacGia - nvarchar(50)
          750  -- DonGia - int
          )
INSERT INTO dbo.Sach
        ( SDKCB, TenSach, TacGia, DonGia )
VALUES  ( N'SDK03', -- SDKCB - nvarchar(10)
          N'JavaScript step by step', -- TenSach - nvarchar(50)
          N'Microsoft', -- TacGia - nvarchar(50)
          1000  -- DonGia - int
          )
INSERT INTO dbo.Sach
        ( SDKCB, TenSach, TacGia, DonGia )
VALUES  ( N'SDK04', -- SDKCB - nvarchar(10)
          N'Lập trình game với unity', -- TenSach - nvarchar(50)
          N'Unity', -- TacGia - nvarchar(50)
          800  -- DonGia - int
          )
GO

--SELECT * FROM dbo.Sach