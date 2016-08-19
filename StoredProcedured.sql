/*Hacer un estore procedure que reciba dos par�metros [c�digo del empleado] y [opci�n] y
dependiendo de la opci�n 1) lista c�digo del empleado, nombre y apellido en may�sculas,
titulo y fecha de contrataci�n, email (estar� formado por primera letra del nombre + el
apellido @ +primeras cinco letras del titulo + .com, ejemplo: Sara Davis, CEO, quedara:
sdavis@ceo.com y la opci�n 2) ser� listar c�digo del empleado, nombre y apellido en
may�sculas, nombre completo del supervisor y su email. El par�metro numero de supervisor
debe ser opcional */CREATE PROCEDURE spEjercicio1(@D INT,@OPCION INT,@NumSupervisor INT)ASBEGIN	SET @NumSupervisor=NULL	IF @OPCION=1 		SELECT empid AS [Codigo del empleado], 		UPPER(Firstname)+space(1)+UPPER (lastname) AS Nombre, 		title AS Titulo,hiredate AS [Fecha contratacion],		LOWER(SUBSTRING(firstname,1,1))+LOWER(LastName)+'@'+LOWER(SUBSTRING(title,1,5))+'.com' AS Email		FROM HR.Employees 	ELSE IF @OPCION=2		SELECT empid AS [Codigo del empleado],		UPPER(Firstname)+space(1)+UPPER (lastname) AS Nombre,				FROM HR.Employees END