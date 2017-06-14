CREATE DATABASE Primary_Foreign

GO

USE Primary_Foreign
GO

CREATE TABLE BoMon
(
	MaBM CHAR(10) PRIMARY KEY,
	TenBM NVARCHAR(30) DEFAULT N'Tên Bộ Môn'
)
GO

CREATE TABLE Lop
(
	MaLop CHAR(10) NOT NULL,
	TenLop NVARCHAR(30) DEFAULT N'Tên Lớp'
	PRIMARY KEY (MaLop)

)
GO

CREATE TABLE GiaoVien
(
	MaGV CHAR(10) NOT NULL,
	TenGV NVARCHAR(30) DEFAULT N'Tên Giáo Viên',
	DiaChi NVARCHAR(30) DEFAULT N'Địa Chỉ Giáo Viên',
	NgaySinh DATE,
	Sex BIT,
	MaBM CHAR(10) FOREIGN KEY (MaBM) REFERENCES dbo.BoMon(MaBM) -- Tạo khóa ngay trong bảng
)
GO

ALTER TABLE dbo.GiaoVien ADD PRIMARY KEY (MaGV)


CREATE TABLE HocSinh
(
	MaHS CHAR(10) PRIMARY KEY,
	TenHS NVARCHAR(30),
	MaLop CHAR(10)
)
GO

ALTER TABLE dbo.HocSinh ADD CONSTRAINT FK_HS FOREIGN KEY(MaLop) REFERENCES dbo.Lop(MaLop) --Tạo khóa ngoại ngoài bảng

--Thêm dữ liệu
--1. Bộ môn
INSERT INTO dbo.BoMon
        ( MaBM, TenBM )
VALUES  ( 'BM01', -- MaBM - char(10)
          N'Bộ Môn 1'  -- TenBM - nvarchar(30)
          )
INSERT INTO dbo.BoMon
        ( MaBM, TenBM )
VALUES  ( 'BM02', -- MaBM - char(10)
          N'Bộ Môn 2'  -- TenBM - nvarchar(30)
          )
INSERT INTO dbo.BoMon
        ( MaBM, TenBM )
VALUES  ( 'BM03', -- MaBM - char(10)
          N'Bộ Môn 3'  -- TenBM - nvarchar(30)
          )

--2. Giáo viên
INSERT INTO dbo.GiaoVien
        ( MaGV ,
          TenGV ,
          DiaChi ,
          NgaySinh ,
          Sex ,
          MaBM
        )
VALUES  ( 'GV01' , -- MaGV - char(10)
          N'Lê A' , -- TenGV - nvarchar(30)
          N'Đà Nẵng' , -- DiaChi - nvarchar(30)
          GETDATE() , -- NgaySinh - date
          1 , -- Sex - bit
          'BM01'  -- MaBM - char(10)
        )
INSERT INTO dbo.GiaoVien
        ( MaGV ,
          TenGV ,
          DiaChi ,
          NgaySinh ,
          Sex ,
          MaBM
        )
VALUES  ( 'GV02' , -- MaGV - char(10)
          N'Nguyễn B' , -- TenGV - nvarchar(30)
          N'Quảng Nam' , -- DiaChi - nvarchar(30)
          GETDATE() , -- NgaySinh - date
          0 , -- Sex - bit
          'BM02'  -- MaBM - char(10)
        )
INSERT INTO dbo.GiaoVien
        ( MaGV ,
          TenGV ,
          DiaChi ,
          NgaySinh ,
          Sex ,
          MaBM
        )
VALUES  ( 'GV03' , -- MaGV - char(10)
          N'Trần C' , -- TenGV - nvarchar(30)
          N'Quảng Ngãi' , -- DiaChi - nvarchar(30)
          GETDATE() , -- NgaySinh - date
          0 , -- Sex - bit
          'BM03'  -- MaBM - char(10)
        )

--Truy vấn CSDL
--1. Lấy toàn bộ dữ liệu trong 1 bảng nào đó
SELECT * FROM dbo.BoMon
--2. Lấy dữ liệu 1 trường trong 1 bảng
SELECT TenBM FROM dbo.BoMon
-- Đổi tên cột hiển thị
SELECT MaBM AS 'Mã Bộ Môn', TenBM AS N'Tên Bộ Môn' FROM dbo.BoMon