

Declare @Num1 int=9, @Num2 int=6

IF @Num1 > @Num2
	BEGIN
		PRINT CONVERT (@Num1, varchar)+' es mayor que '+CONVERT (@Num2, varchar)
	END
ELSE IF @Valor1=@Valor2 
	BEGIN
		PRINT CONVERT (@Num1, varchar)+' es igual que '+CONVERT (@Num2, varchar)
	END
ELSE 
	BEGIN
		PRINT CONVERT (@Num2, varchar)+' es mayor que '+CONVERT (@Num1, varchar)PRINT 'El segundo numero es mayor'
	END

