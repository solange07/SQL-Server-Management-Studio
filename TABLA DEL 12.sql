DECLARE @CONTADOR1 INT=1, @NUM INT, @CONTADOR2 INT= 1 

WHILE @CONTADOR1<12
BEGIN
WHILE @CONTADOR2<10

PRINT @CONTADOR2+'*'+@NUM+'='+ (@CONTADOR2*@NUM)

SET @CONTADOR2= @CONTADOR2+1


SET @CONTADOR1=@CONTADOR1+1
