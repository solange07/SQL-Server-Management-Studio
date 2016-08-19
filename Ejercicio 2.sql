/*2) -Hacer una consulta que liste código, nombre, apellido del empleado y el numero y fecha de cada
orden que se han realizado.*/

Select
	e.EmployeeID as Codigo,
	e.FirstName as Nombre,
	e.LastName as Apellido,
	o.OrderID as Numero_orden,
	o.OrderDate as Fecha
From Employees e inner join Orders o on e.EmployeeID=o.EmployeeID



