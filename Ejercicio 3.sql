/*3) Crear un informe que muestra el ID del pedido, el nombre de la empresa que realizó el pedido ,
y el nombre y apellido del trabajador asociado .
Mostrar sólo los pedidos realizados a 1 de enero de 1998, que se enviaron después de que fueran necesarios .
Ordenar por Nombre de la empresa. */

Select
O.OrderID as [ID Pedido],
C.CompanyName as [Empresa ],
E.FirstName+space(1)+E.LastName as [Empleado]
From  Orders O 
inner join Employees E on O.Employeeid=E.Employeeid 
inner join Customers C on C.CustomerID=O.CustomerID
Where O.OrderDate>'1998-01-01'AND O.ShippedDate> O.RequiredDate
ORDER BY 2


