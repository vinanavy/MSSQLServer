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
INSERT INTO dbo.BoMon VALUES  ( 'BM01', N'Bộ Môn 1' )
INSERT INTO dbo.BoMon VALUES  ( 'BM02', N'Bộ Môn 2' )
INSERT INTO dbo.BoMon VALUES  ( 'BM03', N'Bộ Môn 3' )
INSERT INTO dbo.BoMon VALUES  ( 'BM04', N'Bộ Môn 4' )
INSERT INTO dbo.BoMon VALUES  ( 'BM05', N'Bộ Môn 5' )
INSERT INTO dbo.BoMon VALUES  ( 'BM06', N'Bộ Môn 6' )
INSERT INTO dbo.BoMon VALUES  ( 'BM07', N'Bộ Môn 7' )
INSERT INTO dbo.BoMon VALUES  ( 'BM08', N'Bộ Môn 8' )
INSERT INTO dbo.BoMon VALUES  ( 'BM09', N'Bộ Môn 9' )
INSERT INTO dbo.BoMon VALUES  ( 'BM10', N'Bộ Môn 10' )
INSERT INTO dbo.BoMon VALUES  ( 'BM11', N'' )

--DELETE dbo.BoMon WHERE MaBM = 'BM010'

--2. Giáo viên
INSERT INTO dbo.GiaoVien VALUES  ( 'GV01' , N'Lê A' ,  N'Đà Nẵng' , GETDATE() , 1 , 'BM01' )
INSERT INTO dbo.GiaoVien VALUES  ( 'GV02' , N'Nguyễn B' , N'Quảng Nam' ,  GETDATE() ,  0 , 'BM02' )
INSERT INTO dbo.GiaoVien VALUES  ( 'GV03' , N'Trần C' ,  N'Quảng Ngãi' , GETDATE() ,  0 , 'BM03' )
INSERT INTO dbo.GiaoVien VALUES  ( 'GV04' , N'Phạm D' ,  N'Bình Định' , GETDATE() ,  1 , 'BM04' )
INSERT INTO dbo.GiaoVien VALUES  ( 'GV05' , N'Huỳnh E' ,  N'Phú Yên' , GETDATE() ,  0 , 'BM05' )
INSERT INTO dbo.GiaoVien VALUES  ( 'GV06' , N'Võ F' ,  N'Khánh Hòa' , GETDATE() ,  0 , 'BM06' )
INSERT INTO dbo.GiaoVien VALUES  ( 'GV07' , N'Văn G' ,  N'Ninh Thuận' , GETDATE() ,  1 , 'BM07' )
INSERT INTO dbo.GiaoVien VALUES  ( 'GV08' , N'Tôn K' ,  N'Bình Thuận' , GETDATE() ,  1 , 'BM08' )
INSERT INTO dbo.GiaoVien VALUES  ( 'GV09' , N'Phan J' ,  N'Cần Thơ' , GETDATE() ,  1 , 'BM09' )
INSERT INTO dbo.GiaoVien VALUES  ( 'GV10' , N'Trương' ,  N'Tiên Giang' , GETDATE() ,  0 , 'BM10' )
INSERT INTO dbo.GiaoVien VALUES  ( 'GV11' , N'Hoàng M' ,  N'' , GETDATE() ,  0 , 'BM11' )

UPDATE dbo.GiaoVien SET TenGV = N'Trương L' WHERE TenGV = N'Trương'

--Truy vấn CSDL
--1. Lấy toàn bộ dữ liệu trong 1 bảng nào đó
SELECT * FROM dbo.BoMon
--2. Lấy dữ liệu 1 trường trong 1 bảng
SELECT TenBM FROM dbo.BoMon
-- Đổi tên cột hiển thị
SELECT MaBM AS 'Mã Bộ Môn', TenBM AS N'Tên Bộ Môn' FROM dbo.BoMon
--Xuất ra mã giáo viên + tên + tên bộ môn giáo viên đó dạy
SELECT MaGV, TenGV, TenBM FROM dbo.GiaoVien, dbo.BoMon

--Tìm kiếm tên giáo viên bắt đầu bằng chữ L
SELECT * FROM dbo.GiaoVien WHERE TenGV LIKE 'L%'
--Tìm kiếm tên giáo viên kết thúc bằng chữ C
SELECT * FROM dbo.GiaoVien WHERE TenGV LIKE '%C'
--Tìm kiếm thông tin giáo viên có tồn tại chữ N
SELECT * FROM dbo.GiaoVien WHERE TenGV LIKE '%N%'
--Tìm kiếm thông tin giáo viên có tồn tịa chữ ẦN
SELECT * FROM dbo.GiaoVien WHERE TenGV LIKE N'%ần%'

/* Inner Join
1. Kiểu cũ, có thể không còn được hỗ trợ
SELECT * FROM dbo.BoMon, dbo.GiaoVien 
WHERE BoMon.MaBM = GiaoVien.MaBM
2. Kiểu mới
SELECT * FROM dbo.GiaoVien INNER JOIN dbo.BoMon 
ON BoMon.MaBM = GiaoVien.MaBM
Viết tắt
SELECT * FROM dbo.GiaoVien JOIN dbo.BoMon 
ON BoMon.MaGV = GiaoVien.MaGV
SELECT * FROM dbo.BoMon INNER JOIN dbo.GiaoVien ON BoMon.MaBM = GiaoVien.MaBM
*/

/* Outer Join
Gom 2 bảng theo điều kiện bên nào không có dữ liệu thì để null
*/
--Cách thường sử dụng
SELECT * FROM dbo.GiaoVien, dbo.BoMon WHERE BoMon.MaBM = GiaoVien.MaBM
--Ít khi sử dụng
SELECT * FROM dbo.GiaoVien FULL OUTER JOIN dbo.BoMon ON BoMon.MaBM = GiaoVien.MaBM

/*Cross join là tổ hợp mỗi record của bảng A với all record của bảng B
SELECT * FROM dbo.GiaoVien CROSS JOIN dbo.BoMon */

/* Half Outer Join
Nếu bảng A Left Outer Join với bảng B thì kết quả gồm các bản ghi có trong bảng A, với
các bản ghi có mặt trong bảng B thì các cột B đc điền null. Các bản ghi chỉ có trong B mà 
không có trong A sẽ được trả về
 */
--Left Join & Right Join
SELECT * FROM dbo.GiaoVien LEFT JOIN dbo.BoMon ON BoMon.MaBM = GiaoVien.MaBM
SELECT * FROM dbo.GiaoVien JOIN dbo.BoMon ON BoMon.MaBM = GiaoVien.MaBM
SELECT * FROM dbo.GiaoVien RIGHT JOIN dbo.BoMon ON BoMon.MaBM = GiaoVien.MaBM

/* Union dùng để kết hợp kết quả của hai hoặc 
nhiều lệnh SELECT mà không trả về bất cứ bản sao nào */
SELECT MaBM FROM dbo.GiaoVien WHERE Sex = 1
UNION
SELECT MaBM FROM dbo.BoMon WHERE MaBM = 'BM01'

/* SELECT INTO
1. Lấy hết dữ liệu của 1 bảng nào đó đưa vào bảng mới tên là *NewTable* bảng này có các record (row) tương ứng như bảng (...)
   SELECT * INTO CopyTable FROM dbo.GiaoVien
2. Tạo ra một bảng mới có cột dữ liệu tương ứng như bảng (...)
   SELECT MaBM INTO CopyTable FROM dbo.MaBM
3. Thực hiện câu lệnh có điều kiện
   SELECT MaBM INTO CopyTable FROM dbo.MaBM WHERE MaBM = 'BM03'
4. Tạo một bảng từ nhiều bảng
	SELECT MaGV, TenGV, TenBM INTO BackupDB FROM dbo.GiaoVie, dbo.BoMon
	WHERE BoMon.MaBM = GiaoVien.MaGV
*/
































