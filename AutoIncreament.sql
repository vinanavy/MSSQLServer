USE Primary_Foreign
GO

CREATE TABLE AutoIncreament
(
	ID INT PRIMARY KEY IDENTITY, --Identity tự tăng trường này, mặc định bắt đầu = 1
	Name NVARCHAR(30)
)
GO

INSERT dbo.AutoIncreament ( Name ) VALUES  ( N'A')
INSERT dbo.AutoIncreament ( Name ) VALUES  ( N'B')
INSERT dbo.AutoIncreament ( Name ) VALUES  ( N'C')
INSERT dbo.AutoIncreament ( Name ) VALUES  ( N'D')
INSERT dbo.AutoIncreament ( Name ) VALUES  ( N'E')
INSERT dbo.AutoIncreament ( Name ) VALUES  ( N'F')

SELECT * FROM dbo.AutoIncreament
DROP TABLE dbo.AutoIncreament

