CREATE FUNCTION PRUEBA (@A INT)
RETURNS INT 
AS

BEGIN
DECLARE @B INT
	IF @A=1 SET @B=1
	ELSE
	SET @B= @A*DBO.PRUEBA(@A-1)
	RETURN @B
END


SELECT DBO.PRUEBA(10) 