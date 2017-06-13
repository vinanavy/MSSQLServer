
CREATE TABLE GiaoVien
(
	MaGV NVARCHAR(10),
	TenGV NVARCHAR(30)
)
GO

INSERT INTO dbo.GiaoVien
        ( MaGV, TenGV )
VALUES  ( N'', -- MaGV - nvarchar(10)
          N''  -- TenGV - nvarchar(30)
          )