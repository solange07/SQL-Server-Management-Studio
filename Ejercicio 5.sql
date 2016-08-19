/*5) Cree un reporte que muestre en un solo result set, el nombre de contacto y numero de teléfono de
todos los empleados, clientes y suplidores.*/

SELECT
Firstname+space(1)+Lastname as [Nombre de contacto],
HomePhone as Telefono
FROM Employees

UNION

SELECT 
ContactName as [Nombre de contacto],
Phone as Telefono
FROM Customers

UNION 

SELECT
ContactName as [Nombre de contacto],
Phone as Telefono
FROM Suppliers