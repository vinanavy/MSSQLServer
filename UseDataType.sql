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

INSERT dbo.UseDataType
        ( MaSo ,
          Ten ,
          NgaySinh ,
          GioiTinh ,
          DiaChi ,
          TienLuong
        )
VALUES  ( 1 , -- MaSo - int
          N'Đạt' , -- Ten - nvarchar(10)
          '19930913' , -- NgaySinh - date
          1 , -- GioiTinh - bit
          'Đà Nẵng' , -- DiaChi - char(20)
          10000  -- TienLuong - float
        )
