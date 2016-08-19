/*1.- Hacer un reporte que muestre el código del empleado, nombre, supervisor (reportsto),
y la cantidad de ordenes por mes que el empleado ha
realizado por año (1996,1997,1998)*/
Select 
	e.EmployeeID as Codigo_del_empleado,
	e.FirstName+Space(1)+e.LastName as Nombre, 
	su.FirstName+Space(1)+su.LastName as Supervisor, 
	SUM(case when year(o.orderdate)=1996 then 1 end) as [1996],
	SUM(case when year(o.orderdate)=1997 then 1 end) as [1997],
	SUM(case when year(o.orderdate)=1998 then 1 end) as [1998],
	COUNT(o.OrderID) as Total  
from Employees as e
		inner join Employees as su on su.EmployeeID = e.ReportsTo
		inner join Orders as o on e.EmployeeID = o.EmployeeID
group by  e.EmployeeID,e.FirstName,e.LastName, su.FirstName,su.LastName

