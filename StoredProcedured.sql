/*Hacer un estore procedure que reciba dos parámetros [código del empleado] y [opción] y
dependiendo de la opción 1) lista código del empleado, nombre y apellido en mayúsculas,
titulo y fecha de contratación, email (estará formado por primera letra del nombre + el
apellido @ +primeras cinco letras del titulo + .com, ejemplo: Sara Davis, CEO, quedara:
sdavis@ceo.com y la opción 2) será listar código del empleado, nombre y apellido en
mayúsculas, nombre completo del supervisor y su email. El parámetro numero de supervisor
debe ser opcional */CREATE PROCEDURE spEjercicio1(@D INT,@OPCION INT,@NumSupervisor INT)ASBEGIN	SET @NumSupervisor=NULL	IF @OPCION=1 		SELECT empid AS [Codigo del empleado], 		UPPER(Firstname)+space(1)+UPPER (lastname) AS Nombre, 		title AS Titulo,hiredate AS [Fecha contratacion],		LOWER(SUBSTRING(firstname,1,1))+LOWER(LastName)+'@'+LOWER(SUBSTRING(title,1,5))+'.com' AS Email		FROM HR.Employees 	ELSE IF @OPCION=2		SELECT empid AS [Codigo del empleado],		UPPER(Firstname)+space(1)+UPPER (lastname) AS Nombre,				FROM HR.Employees END