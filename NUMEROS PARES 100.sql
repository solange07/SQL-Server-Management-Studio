DECLARE  @Numero INT=2

WHILE @Numero <=100
	BEGIN
		PRINT CONVERT (VARCHAR, @Numero) 
		SET @Numero=@Numero+2
	END
