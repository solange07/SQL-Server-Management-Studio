/*2) Hacer un store procedure que muestre las ventas por vendedor de un periodo, los par�metros
ser�n fecha inicial y fecha final. El listado debe mostrar c�digo del empleado, nombre
completo, total de ordenes del periodo*/alter PROCEDURE spEjercicio2(@inicio DATE,@fin DATE)ASBEGINSELECT e.empid AS [Codigo del empleado],		e.firstname+space(1)+e.lastname AS Nombre,		COUNT(o.orderid)		FROM HR.Employees AS e inner join Sales.Orders AS o on e.empid= o.empid--WHERE o.orderdate >= @inicio AND o.orderdate<= @finGROUP BY e.empid,e.firstname,e.lastnameORDER BY 3 DESCENDexec spEjercicio2 (2006-07-01,2006-11-02)--select * from--sales.Orders