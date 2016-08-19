

Declare @Num1 int=9, @Num2 int=6

IF @Num1 > @Num2
	BEGIN
		PRINT CONVERT (VARCHAR,@Num1)+' es mayor que '+CONVERT (VARCHAR,@Num2)
	END
ELSE IF @Num1=@Num1
	BEGIN
		PRINT CONVERT (VARCHAR,@Num1)+' es igual que '+CONVERT (VARCHAR,@Num2)
	END
ELSE 
	BEGIN
		PRINT CONVERT (VARCHAR,@Num2)+' es mayor que '+CONVERT (VARCHAR,@Num1)
	END

