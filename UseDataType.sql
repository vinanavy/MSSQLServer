CREATE TABLE UseDataType
(
	MaSo INT,
	Ten NVARCHAR(10),
	NgaySinh DATE,
	GioiTinh BIT,
	DiaChi CHAR(20),
	TienLuong FLOAT
)

GO

--Thêm dữ liệu
INSERT dbo.UseDataType VALUES  ( 1 , -- MaSo - int
          N'Đạt' , -- Ten - nvarchar(10)
          '19930913' , -- NgaySinh - date
          1 , -- GioiTinh - bit
          'Đà Nẵng' , -- DiaChi - char(20)
          10000  -- TienLuong - float
        )
INSERT dbo.UseDataType VALUES  ( 2 , -- MaSo - int
          N'Bư' , -- Ten - nvarchar(10)
          '19930914' , -- NgaySinh - date
          1 , -- GioiTinh - bit
          'Quảng Ngãi' , -- DiaChi - char(20)
          10000  -- TienLuong - float
        )
INSERT dbo.UseDataType VALUES  ( 3 , -- MaSo - int
          N'Bò' , -- Ten - nvarchar(10)
          '19930915' , -- NgaySinh - date
          1 , -- GioiTinh - bit
          'Đà Nẵng' , -- DiaChi - char(20)
          10000  -- TienLuong - float
        )
INSERT dbo.UseDataType VALUES  ( 4 , -- MaSo - int
          N'Tóc Rối' , -- Ten - nvarchar(10)
          '19930915' , -- NgaySinh - date
          0 , -- GioiTinh - bit
          'Quảng Nam' , -- DiaChi - char(20)
          10000  -- TienLuong - float
        )

--Xóa dữ liệu
--1. Xóa dữ liệu có điều kiện
DELETE dbo.UseDataType WHERE TienLuong > 5000 AND MaSo < 4
--2. Xóa toàn bộ dữ liệu của bảng
DELETE dbo.UseDataType

--Cập nhật dữ liệu
--1. Update toàn bộ dữ liệu bảng bởi nhiều trường update
UPDATE dbo.UseDataType SET TienLuong = 20000
--2. Update dữ liệu của trường mong muốn
UPDATE dbo.UseDataType SET TienLuong = 5000 WHERE GioiTinh = 0