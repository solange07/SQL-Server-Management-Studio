DECLARE @Multiplicando INT, @Multiplicador INT 
SET @Multiplicando = 1
WHILE @Multiplicando <= 12
BEGIN
    SET @Multiplicador = 1
    WHILE @Multiplicador <= 10
    BEGIN
        PRINT CONVERT(VARCHAR, @Multiplicando) + ' * ' + 
		CONVERT(VARCHAR, @Multiplicador)
         + ' = ' + CONVERT(VARCHAR, @Multiplicando * @Multiplicador)
        SET @Multiplicador = @Multiplicador + 1
    END
    SET @Multiplicando = @Multiplicando + 1
END

