 CREATE DATABASE SanPhamDB
GO

CREATE TABLE DanhMuc
(
	MaDanhMuc INT PRIMARY KEY NOT NULL,
	TenDanhMuc NVARCHAR(50)
)
GO

CREATE TABLE SanPham
(
	MaSanPham INT PRIMARY KEY NOT NULL,
	Ten NVARCHAR(50),
	DonGia INT,
	MaDanhMuc INT FOREIGN KEY(MaDanhMuc) REFERENCES dbo.DanhMuc

)
GO

--Thêm dữ liệu
--1. Danh Mục
INSERT INTO dbo.DanhMuc
        ( MaDanhMuc, TenDanhMuc )
VALUES  ( 1, -- MaDanhMuc - int
          N'Hàng Điện Tử'  -- TenDanhMuc - nvarchar(50)
          )
INSERT INTO dbo.DanhMuc
        ( MaDanhMuc, TenDanhMuc )
VALUES  ( 2, -- MaDanhMuc - int
          N'Hàng Hóa Chất'  -- TenDanhMuc - nvarchar(50)
          )
INSERT INTO dbo.DanhMuc
        ( MaDanhMuc, TenDanhMuc )
VALUES  ( 3, -- MaDanhMuc - int
          N'Hàng Cháy Nổ'  -- TenDanhMuc - nvarchar(50)
          )
INSERT INTO dbo.DanhMuc
        ( MaDanhMuc, TenDanhMuc )
VALUES  ( 4, -- MaDanhMuc - int
          N'Hàng Mỹ Phẩm'  -- TenDanhMuc - nvarchar(50)
          )
INSERT INTO dbo.DanhMuc
        ( MaDanhMuc, TenDanhMuc )
VALUES  ( 5, -- MaDanhMuc - int
          N'Hàng Xây Dựng'  -- TenDanhMuc - nvarchar(50)
          )
INSERT INTO dbo.DanhMuc
        ( MaDanhMuc, TenDanhMuc )
VALUES  ( 6, -- MaDanhMuc - int
          N'Hàng Anime'  -- TenDanhMuc - nvarchar(50)
          )
--2. Sản Phẩm
INSERT INTO dbo.SanPham
        ( MaSanPham, Ten, DonGia, MaDanhMuc )
VALUES  ( 1, -- MaSanPham - int
          N'Bóng Đèn Điện', -- Ten - nvarchar(50)
          50, -- DonGia - int
          1  -- MaDanhMuc - int
          )
INSERT INTO dbo.SanPham
        ( MaSanPham, Ten, DonGia, MaDanhMuc )
VALUES  ( 6, -- MaSanPham - int
          N'Diệt Mối', -- Ten - nvarchar(50)
          270, -- DonGia - int
          2  -- MaDanhMuc - int
          )
INSERT INTO dbo.SanPham
        ( MaSanPham, Ten, DonGia, MaDanhMuc )
VALUES  ( 10, -- MaSanPham - int 
          N'Điện Thoại', -- Ten - nvarchar(50)
          10, -- DonGia - int
          1  -- MaDanhMuc - int
          )
INSERT INTO dbo.SanPham
        ( MaSanPham, Ten, DonGia, MaDanhMuc )
VALUES  ( 2, -- MaSanPham - int
          N'Xi Măng', -- Ten - nvarchar(50)
          25, -- DonGia - int
          5  -- MaDanhMuc - int
          )
INSERT INTO dbo.SanPham
        ( MaSanPham, Ten, DonGia, MaDanhMuc )
VALUES  ( 3, -- MaSanPham - int
          N'Son Phấn', -- Ten - nvarchar(50)
          10, -- DonGia - int
          4  -- MaDanhMuc - int
          )
INSERT INTO dbo.SanPham
        ( MaSanPham, Ten, DonGia, MaDanhMuc )
VALUES  ( 7, -- MaSanPham - int
          N'Xăng Dầu', -- Ten - nvarchar(50)
          10, -- DonGia - int
          3  -- MaDanhMuc - int
          )
GO

--SELECT * FROM dbo.SanPham,dbo.DanhMuc
SELECT * FROM dbo.SanPham
