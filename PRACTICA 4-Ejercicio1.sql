/*Hacer un estore procedure que reciba dos par�metros [c�digo del empleado] y [opci�n] y
dependiendo de la opci�n 1) lista c�digo del empleado, nombre y apellido en may�sculas,
titulo y fecha de contrataci�n, email (estar� formado por primera letra del nombre + el
apellido @ +primeras cinco letras del titulo + .com, ejemplo: Sara Davis, CEO, quedara:
sdavis@ceo.com y la opci�n 2) ser� listar c�digo del empleado, nombre y apellido en
may�sculas, nombre completo del supervisor y su email. El par�metro numero del empleado
debe ser opcional */

EXEC spPunto1 4,1

ALTER PROCEDURE [dbo].[spPunto1]
(	@Numempleado	INT=NULL,
	@Opcion		CHAR(1))
AS
BEGIN
IF (@Opcion =1) AND @Numempleado IS NOT NULL 
	SELECT EmployeeID AS [Codigo del empleado], 
		WHERE EmployeeID=@Numempleado
ELSE IF @Opcion=2 AND @Numempleado IS NOT NULL 
	BEGIN
		SELECT e.EmployeeID AS [Codigo del empleado],
		WHERE e.EmployeeID=@Numempleado
	END

ELSE IF  (@Opcion =1)  
	SELECT EmployeeID AS [Codigo del empleado], 
ELSE IF @Opcion=2 
	BEGIN
		SELECT e.EmployeeID AS [Codigo del empleado],
	END
END
