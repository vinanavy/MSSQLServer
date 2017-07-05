CREATE PROC ChiTietSP
@ma INT
AS
SELECT * FROM dbo.SanPham WHERE MaSanPham = @ma

EXEC dbo.ChiTietSP @ma = 1 -- int
