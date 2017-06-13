/* Unique: duy nhất -> trong toàn bộ bảng
Trường nào có từ khóa này thì không thể có 2 giá trị trùng nhau */
CREATE TABLE UsePrimaryKey1
(
	ID INT PRIMARY KEY,
	Name NVARCHAR(30) 
)
GO

--Khi đã tạo bảng. Muốn sửa cột thành primary key
ALTER TABLE dbo.UsePrimaryKey1 ADD PRIMARY KEY (ID)

--Cách 2
--Tạo khóa chính ngay trong bảng
CREATE TABLE UsePrimaryKey2
(
	ID INT NOT NULL,
	Name NVARCHAR(100)
	PRIMARY KEY (ID)
)

--Tạo primary key ngay trong bảng mà đặt tên cho key đó
CREATE TABLE UsePrimaryKey3
(
	ID INT NOT NULL,
	Name NVARCHAR(100)
	CONSTRAINT PK_Test3 --Xóa key cho dễ
	PRIMARY KEY (ID)
)

--Tạo primary key sau khi tạo bảng và đặt tên cho key đó
CREATE TABLE UsePrimaryKey4
(
	ID INT NOT NULL,
	Name NVARCHAR(100)
)
GO
ALTER TABLE dbo.UsePrimaryKey4 
ADD CONSTRAINT 
PK_Test4 PRIMARY KEY (ID)

--Khóa chính có 2 trường
CREATE TABLE UsePrimaryKey5
(
	ID INT NOT NULL,
	ID2 INT NOT NULL,
	Name NVARCHAR(100)
	
	PRIMARY KEY (ID, ID2)
)