DECLARE @CONTADOR1 INT=1, @CONTADOR2 INT=1,@OPERACION INT


WHILE @CONTADOR1<=12
	BEGIN
		WHILE @CONTADOR2<=10
			BEGIN
				SET @OPERACION=@CONTADOR1*@CONTADOR2
				PRINT CAST(@CONTADOR1 as nvarchar)+'X'+CAST(@CONTADOR2 as nvarchar)+'='+ CAST(@OPERACION as nvarchar)
				SET @CONTADOR2=@CONTADOR2+1
			END
		SET @CONTADOR1=@CONTADOR1+1
	END 
