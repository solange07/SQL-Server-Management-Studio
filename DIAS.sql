DECLARE @DIA VARCHAR(12)='Miercoles'                                                                                                                                                                         
SELECT  CASE   
    WHEN @DIA='Domingo' THEN 'No laborable'
	WHEN @DIA='Lunes' THEN 'Laborable'
    WHEN @DIA='Martes' THEN 'Laborable'
    WHEN @DIA='Miercoles' THEN 'Laborable' 
    WHEN @DIA='Jueves' THEN 'Laborable'  
    WHEN @DIA='Viernes' THEN 'Laborable'  
    WHEN @DIA='Sabado' THEN 'No laborable' 
END
