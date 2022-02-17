/* Poryecto Integracion Datamart de la base de datos Northwind business intelligence */


select *
from [dbo].[Categories]

Alter table [dbo].[Categories]
ADD Grupo_Categoria  Varchar(20);

--- Asignacion de los grupos a la tabla Categoria.

update dbo.Categories set Grupo_Categoria = 'Grupo A '
 where CategoryID = 1
update dbo.Categories set Grupo_Categoria = 'Grupo A '
 where CategoryID = 3
update dbo.Categories set Grupo_Categoria = 'Grupo A '
 where CategoryID = 5
update dbo.Categories set Grupo_Categoria = 'Grupo A '
 where CategoryID = 7
update dbo.Categories set Grupo_Categoria = 'Grupo A '
 where CategoryID = 8

 update dbo.Categories set Grupo_Categoria = 'Grupo B '
 where CategoryID = 6
  update dbo.Categories set Grupo_Categoria = 'Grupo B '
 where CategoryID = 2

 update dbo.Categories set Grupo_Categoria = 'Grupo C '
 where CategoryID = 4


 -- Vista tabla producto

 select P.ProductName as Producto, P.UnitPrice as Precio_Unitario,
 C.CategoryName as Categoria, C.Grupo_Categoria as Grupo
 from [dbo].[Products] as P
 inner join [dbo].[Categories] as C
 on P.CategoryID = c.CategoryID

 -- Vista tabla  Empleado	

 select *
 from [dbo].[Employees]

 /* Para solucionar los datos Null se identifica dichos varoles se encuentran en los empleados de  Reino Unido , Analizando desde esta perspectiva
  londres pertenece al condado de Gran Londres que para esta la modificaremos por GL.*/
 

 update [dbo].[Employees] set Region = 'GL'
 where EmployeeID = 5 
 update [dbo].[Employees] set Region = 'GL'
 where EmployeeID = 6
 update [dbo].[Employees] set Region = 'GL'
 where EmployeeID = 7
 update [dbo].[Employees] set Region = 'GL'
 where EmployeeID = 9
 
 /*Como el vicepresidente  no genera reportes en esta ocacion  realizara 1 reporte para evitar los null y no sacarlo de los futuros analisis*/

 update [dbo].[Employees] set ReportsTo = '1'
 where EmployeeID = 2

 /*la consulta para  la integracion del datamart seria la siguiente*/

 select  CONCAT_WS(' ', LastName, FirstName) as NombreCompleto, [Address] as Direccion,
 City as Ciudad, Region , Country as Pais, ReportsTo as Empleado_Superior_Skey  
 from [dbo].[Employees]


 -- Vista tabla Cliente 

 select *
 from [dbo].[Customers]

 -- Solucioon de los Datos null 

update [dbo].[Customers] set Region = 	'BE'	where City = 	'Berlin'
update [dbo].[Customers] set Region = 	'CMX'	where City = 	'México D.F.'
update [dbo].[Customers] set Region = 	'GB'	where City = 	'London'
update [dbo].[Customers] set Region = 	'BD'	where City = 	'Luleå'
update [dbo].[Customers] set Region = 	'RP'	where City = 	'Mannheim'
update [dbo].[Customers] set Region = 	'GES'	where City = 	'Strasbourg'
update [dbo].[Customers] set Region = 	'Maryland'  where City = 	'Madrid'
update [dbo].[Customers] set Region = 	'PAC'	where City = 	'Marseille'
update [dbo].[Customers] set Region = 	'AR-B'	where City = 	'Buenos Aires'
update [dbo].[Customers] set Region = 	'SER'	where City = 	'Bern'
update [dbo].[Customers] set Region = 	'NW'	where City = 	'Aachen'
update [dbo].[Customers] set Region = 	'PDL'	where City = 	'Nantes'
update [dbo].[Customers] set Region = 	'AT-6'	where City = 	'Graz'
update [dbo].[Customers] set Region = 	'Connecticut'	where City = 	'Madrid'
update [dbo].[Customers] set Region = 	'FHD'	where City = 	'Lille'
update [dbo].[Customers] set Region = 	'Z'	where City = 	'Bräcke'
update [dbo].[Customers] set Region = 	'NW'	where City = 	'München'
update [dbo].[Customers] set Region = 	'I-21'	where City = 	'Torino'
update [dbo].[Customers] set Region = 	'P-11'	where City = 	'Lisboa'
update [dbo].[Customers] set Region = 	'Connecticut'	where City = 	'Barcelona'
update [dbo].[Customers] set Region = 	'UN'	where City = 	'Sevilla'
update [dbo].[Customers] set Region = 	'HH'	where City = 	'Brandenburg'
update [dbo].[Customers] set Region = 	'PAC'	where City = 	'Versailles'
update [dbo].[Customers] set Region = 	'OCC'	where City = 	'Toulouse'
update [dbo].[Customers] set Region = 	'BB'	where City = 	'Frankfurt a.M.'
update [dbo].[Customers] set Region = 	'I-25'	where City = 	'Bergamo'
update [dbo].[Customers] set Region = 	'BRU'	where City = 	'Bruxelles'
update [dbo].[Customers] set Region = 	'SN'	where City = 	'Leipzig'
update [dbo].[Customers] set Region = 	'NW'	where City = 	'Köln'
update [dbo].[Customers] set Region = 	'FDI'	where City = 	'Paris'
update [dbo].[Customers] set Region = 	'AT-5'	where City = 	'Salzburg'
update [dbo].[Customers] set Region = 	'L11'	where City = 	'Lisboa'
update [dbo].[Customers] set Region = 	'SN'	where City = 	'Cunewalde'
update [dbo].[Customers] set Region = 	'I-45'	where City = 	'Reggio Emilia'
update [dbo].[Customers] set Region = 	'GE'	where City = 	'Genève'
update [dbo].[Customers] set Region = 	'S11'	where City = 	'Stavern'
update [dbo].[Customers] set Region = 	'KH'	where City = 	'Kobenhavn'
update [dbo].[Customers] set Region = 	'VLG'	where City = 	'Charleroi'
update [dbo].[Customers] set Region = 	'NW'	where City = 	'Münster'
update [dbo].[Customers] set Region = 	'SJ'	where City = 	'Århus'
update [dbo].[Customers] set Region = 	'ARA'	where City = 	'Lyon'
update [dbo].[Customers] set Region = 	'BRE'	where City = 	'Reims'
update [dbo].[Customers] set Region = 	'BW'	where City = 	'Stuttgart'
update [dbo].[Customers] set Region = 	'FI-OL'	where City = 	'Oulu'
update [dbo].[Customers] set Region = 	'FI-IS'	where City = 	'Helsinki'
update [dbo].[Customers] set Region = 	'P-14'	where City = 	'Warszawa'


-- consulta clientes para el datamart

select c.ContactName as Cliente_Nombre, 
c.CompanyName as compania,
c.[Address] as Direccion,
c.City as Ciudad,
c.Region,
c.Country as Pais
from  [dbo].[Customers] as c



-- vista de la tabla fecha 

select 
CONVERT(date,o.OrderDate) as FechaActual,
CONVERT(int,DATEPART(YEAR,o.OrderDate)) as Tiempo_Año,
CONVERT(int,DATEPART(QUARTER,o.OrderDate)) as Tiempo_Trimestre,
CONVERT(int,DATEPART(MONTH,o.OrderDate)) as Tiempo_Mes,
CONVERT(int,DATEPART(WEEK,o.OrderDate)) as Tiempo_Semana,
CONVERT(int,DATEPART(DY,o.OrderDate)) as Tiempo_DiaAno,
CONVERT(int,DATEPART(WEEKDAY,o.OrderDate)) as Tiempo_DiaSemana,
case --- determinacion de sabados y domingos
when CONVERT(int,DATEPART(WEEKDAY,o.OrderDate)) = 6 then 1
when CONVERT(int,DATEPART(WEEKDAY,o.OrderDate)) = 7 then 1
else 0 
end  as Tiempo_EsFinSemana,
case --- determinacion de  dias festivos
when CONVERT(date,o.OrderDate) =  '1998-01-01'	then 1
when CONVERT(date,o.OrderDate) =  '1998-02-12'	then 1
when CONVERT(date,o.OrderDate) =  '1998-03-17'	then 1
when CONVERT(date,o.OrderDate) =  '1998-06-14'	then 1
when CONVERT(date,o.OrderDate) =  '1998-07-05'	then 1
when CONVERT(date,o.OrderDate) =  '1998-09-11'	then 1
when CONVERT(date,o.OrderDate) =  '1998-09-17'	then 1
when CONVERT(date,o.OrderDate) =  '1998-10-31'	then 1
when CONVERT(date,o.OrderDate) =  '1998-11-11'	then 1
when CONVERT(date,o.OrderDate) =  '1998-12-15'	then 1
when CONVERT(date,o.OrderDate) =  '1998-12-25'	then 1
when CONVERT(date,o.OrderDate) =  '1998-12-31'	then 1
when CONVERT(date,o.OrderDate) =  '1997-01-01'	then 1
when CONVERT(date,o.OrderDate) =  '1997-02-12'	then 1
when CONVERT(date,o.OrderDate) =  '1997-03-17'	then 1
when CONVERT(date,o.OrderDate) =  '1997-06-14'	then 1
when CONVERT(date,o.OrderDate) =  '1997-07-05'	then 1
when CONVERT(date,o.OrderDate) =  '1997-09-11'	then 1
when CONVERT(date,o.OrderDate) =  '1997-09-17'	then 1
when CONVERT(date,o.OrderDate) =  '1997-10-31'	then 1
when CONVERT(date,o.OrderDate) =  '1997-11-11'	then 1
when CONVERT(date,o.OrderDate) =  '1997-12-15'	then 1
when CONVERT(date,o.OrderDate) =  '1997-12-25'	then 1
when CONVERT(date,o.OrderDate) =  '1997-12-31'	then 1
when CONVERT(date,o.OrderDate) =  '1996-01-01'	then 1
when CONVERT(date,o.OrderDate) =  '1996-02-12'	then 1
when CONVERT(date,o.OrderDate) =  '1996-03-17'	then 1
when CONVERT(date,o.OrderDate) =  '1996-06-14'	then 1
when CONVERT(date,o.OrderDate) =  '1996-07-05'	then 1
when CONVERT(date,o.OrderDate) =  '1996-09-11'	then 1
when CONVERT(date,o.OrderDate) =  '1996-09-17'	then 1
when CONVERT(date,o.OrderDate) =  '1996-10-31'	then 1
when CONVERT(date,o.OrderDate) =  '1996-11-11'	then 1
when CONVERT(date,o.OrderDate) =  '1996-12-15'	then 1
when CONVERT(date,o.OrderDate) =  '1996-12-25'	then 1
when CONVERT(date,o.OrderDate) =  '1996-12-31'	then 1
else 0 
end  as Tiempo_EsFeriado,
case -- Determinar comentarios 
when CONVERT(date,o.OrderDate) =  '1998-01-01'	then 'New Years Day'
when CONVERT(date,o.OrderDate) =  '1998-02-12'	then 'Abraham Lincoln Day'
when CONVERT(date,o.OrderDate) =  '1998-03-17'	then 'St. Patricks Day'
when CONVERT(date,o.OrderDate) =  '1998-06-14'	then 'Flag Day'
when CONVERT(date,o.OrderDate) =  '1998-07-05'	then 'Independence Day'
when CONVERT(date,o.OrderDate) =  '1998-09-11'	then 'Patriot Day'
when CONVERT(date,o.OrderDate) =  '1998-09-17'	then 'Constitution Day'
when CONVERT(date,o.OrderDate) =  '1998-10-31'	then 'Halloween'
when CONVERT(date,o.OrderDate) =  '1998-11-11'	then 'Veterans Day'
when CONVERT(date,o.OrderDate) =  '1998-12-15'	then 'Bill of Rights Day'
when CONVERT(date,o.OrderDate) =  '1998-12-25'	then 'Christmas Day'
when CONVERT(date,o.OrderDate) =  '1998-12-31'	then 'New Years Eve'
when CONVERT(date,o.OrderDate) =  '1997-01-01'	then 'New Years Day'
when CONVERT(date,o.OrderDate) =  '1997-02-12'	then 'Abraham Lincoln Day'
when CONVERT(date,o.OrderDate) =  '1997-03-17'	then 'St. Patricks Day'
when CONVERT(date,o.OrderDate) =  '1997-06-14'	then 'Flag Day'
when CONVERT(date,o.OrderDate) =  '1997-07-05'	then 'Independence Day'
when CONVERT(date,o.OrderDate) =  '1997-09-11'	then 'Patriot Day'
when CONVERT(date,o.OrderDate) =  '1997-09-17'	then 'Constitution Day'
when CONVERT(date,o.OrderDate) =  '1997-10-31'	then 'Halloween'
when CONVERT(date,o.OrderDate) =  '1997-11-11'	then 'Veterans Day'
when CONVERT(date,o.OrderDate) =  '1997-12-15'	then 'Bill of Rights Day'
when CONVERT(date,o.OrderDate) =  '1997-12-25'	then 'Christmas Day'
when CONVERT(date,o.OrderDate) =  '1997-12-31'	then 'New Years Eve'
when CONVERT(date,o.OrderDate) =  '1996-01-01'	then 'New Years Day'
when CONVERT(date,o.OrderDate) =  '1996-02-12'	then 'Abraham Lincoln Day'
when CONVERT(date,o.OrderDate) =  '1996-03-17'	then 'St. Patricks Day'
when CONVERT(date,o.OrderDate) =  '1996-06-14'	then 'Flag Day'
when CONVERT(date,o.OrderDate) =  '1996-07-05'	then 'Independence Day'
when CONVERT(date,o.OrderDate) =  '1996-09-11'	then 'Patriot Day'
when CONVERT(date,o.OrderDate) =  '1996-09-17'	then 'Constitution Day'
when CONVERT(date,o.OrderDate) =  '1996-10-31'	then 'Halloween'
when CONVERT(date,o.OrderDate) =  '1996-11-11'	then 'Veterans Day'
when CONVERT(date,o.OrderDate) =  '1996-12-15'	then 'Bill of Rights Day'
when CONVERT(date,o.OrderDate) =  '1996-12-25'	then 'Christmas Day'
when CONVERT(date,o.OrderDate) =  '1996-12-31'	then 'New Years Eve'
else 'NULO'
end  as Tiempo_Comentario,
CONVERT(int,DATEPART(WEEK,o.OrderDate)-DATEPART(WEEK,DATEADD(MM,DATEDIFF(MM,0,o.OrderDate),0))+1) as SemanaCalendario,
CONVERT(int,DATEPART(WEEK,o.OrderDate)-1) as Tiempo_SemanasDelAniolaboral,
case
when CONVERT(int,DATEPART(YEAR,o.OrderDate)%400) = 0 then 1 
when CONVERT(int,DATEPART(YEAR,o.OrderDate)%4) = 0 then 1
else 0 
end as Tiempo_AnioBisiesto,
DATENAME(DW,o.OrderDate)  as Tiempo_DescDiaDeSemana,
DATENAME(MONTH,o.OrderDate) as Tiempo_Desc_Mes,
case 
when DATENAME(QUARTER,o.OrderDate) =1 then 'primer trimes'
when DATENAME(QUARTER,o.OrderDate) =2 then 'segundo trimes'
when DATENAME(QUARTER,o.OrderDate) =3 then 'tercer trimes'
when DATENAME(QUARTER,o.OrderDate) =4 then 'cuarto trimes'
else 'N/A'
end as Timepo_DescTrimestre,
case
when DATEPART(QUARTER,o.OrderDate) >= 3 then 'semestre dos'
else 'semestre uno'
end
as Tiempo_Descri_Trimestre
from [dbo].[Orders] as o


--- visualizacion de la tabla ordenes 

select *
from [dbo].[Orders]

-- Solucionar valores null  de la columna Shipregion  por la conversion. 

update [dbo].[Orders] set ShipRegion  = 	'BE'	where ShipCity  = 	'Berlin'
update [dbo].[Orders] set ShipRegion  = 	'CMX'	where ShipCity  = 	'México D.F.'
update [dbo].[Orders] set ShipRegion  = 	'GB'	where ShipCity  = 	'London'
update [dbo].[Orders] set ShipRegion  = 	'BD'	where ShipCity  = 	'Luleå'
update [dbo].[Orders] set ShipRegion  = 	'RP'	where ShipCity  = 	'Mannheim'
update [dbo].[Orders] set ShipRegion  = 	'GES'	where ShipCity  = 	'Strasbourg'
update [dbo].[Orders] set ShipRegion  = 	'Maryland'  where ShipCity  = 	'Madrid'
update [dbo].[Orders] set ShipRegion  = 	'PAC'	where ShipCity  = 	'Marseille'
update [dbo].[Orders] set ShipRegion  = 	'AR-B'	where ShipCity  = 	'Buenos Aires'
update [dbo].[Orders] set ShipRegion  = 	'SER'	where ShipCity  = 	'Bern'
update [dbo].[Orders] set ShipRegion  = 	'NW'	where ShipCity  = 	'Aachen'
update [dbo].[Orders] set ShipRegion  = 	'PDL'	where ShipCity  = 	'Nantes'
update [dbo].[Orders] set ShipRegion  = 	'AT-6'	where ShipCity  = 	'Graz'
update [dbo].[Orders] set ShipRegion  = 	'Connecticut'	where ShipCity  = 	'Madrid'
update [dbo].[Orders] set ShipRegion  = 	'FHD'	where ShipCity  = 	'Lille'
update [dbo].[Orders] set ShipRegion  = 	'Z'	where ShipCity  = 	'Bräcke'
update [dbo].[Orders] set ShipRegion  = 	'NW'	where ShipCity  = 	'München'
update [dbo].[Orders] set ShipRegion  = 	'I-21'	where ShipCity  = 	'Torino'
update [dbo].[Orders] set ShipRegion  = 	'P-11'	where ShipCity  = 	'Lisboa'
update [dbo].[Orders] set ShipRegion  = 	'Connecticut'	where ShipCity  = 	'Barcelona'
update [dbo].[Orders] set ShipRegion  = 	'UN'	where ShipCity  = 	'Sevilla'
update [dbo].[Orders] set ShipRegion  = 	'HH'	where ShipCity  = 	'Brandenburg'
update [dbo].[Orders] set ShipRegion  = 	'PAC'	where ShipCity  = 	'Versailles'
update [dbo].[Orders] set ShipRegion  = 	'OCC'	where ShipCity  = 	'Toulouse'
update [dbo].[Orders] set ShipRegion  = 	'BB'	where ShipCity  = 	'Frankfurt a.M.'
update [dbo].[Orders] set ShipRegion  = 	'I-25'	where ShipCity  = 	'Bergamo'
update [dbo].[Orders] set ShipRegion  = 	'BRU'	where ShipCity  = 	'Bruxelles'
update [dbo].[Orders] set ShipRegion  = 	'SN'	where ShipCity  = 	'Leipzig'
update [dbo].[Orders] set ShipRegion  = 	'NW'	where ShipCity  = 	'Köln'
update [dbo].[Orders] set ShipRegion  = 	'FDI'	where ShipCity  = 	'Paris'
update [dbo].[Orders] set ShipRegion  = 	'AT-5'	where ShipCity  = 	'Salzburg'
update [dbo].[Orders] set ShipRegion  = 	'L11'	where ShipCity  = 	'Lisboa'
update [dbo].[Orders] set ShipRegion  = 	'SN'	where ShipCity  = 	'Cunewalde'
update [dbo].[Orders] set ShipRegion  = 	'I-45'	where ShipCity  = 	'Reggio Emilia'
update [dbo].[Orders] set ShipRegion  = 	'GE'	where ShipCity  = 	'Genève'
update [dbo].[Orders] set ShipRegion  = 	'S11'	where ShipCity  = 	'Stavern'
update [dbo].[Orders] set ShipRegion  = 	'KH'	where ShipCity  = 	'Kobenhavn'
update [dbo].[Orders] set ShipRegion  = 	'VLG'	where ShipCity  = 	'Charleroi'
update [dbo].[Orders] set ShipRegion  = 	'NW'	where ShipCity  = 	'Münster'
update [dbo].[Orders] set ShipRegion  = 	'SJ'	where ShipCity  = 	'Århus'
update [dbo].[Orders] set ShipRegion  = 	'ARA'	where ShipCity  = 	'Lyon'
update [dbo].[Orders] set ShipRegion  = 	'BRE'	where ShipCity  = 	'Reims'
update [dbo].[Orders] set ShipRegion  = 	'BW'	where ShipCity  = 	'Stuttgart'
update [dbo].[Orders] set ShipRegion  = 	'FI-OL'	where ShipCity  = 	'Oulu'
update [dbo].[Orders] set ShipRegion  = 	'FI-IS'	where ShipCity  = 	'Helsinki'
update [dbo].[Orders] set ShipRegion  = 	'P-14'	where ShipCity  = 	'Warszawa'


select 
DBN_MC.Cliente_Skey as Cliente_Skey,
DBN_MP.Producto_Skey as Producto_Skey,
DBN_ME.Empleado_Skey as Empleado_Skey,
DBN_MT.Tiempo_Skey as Tiempo_Skey,
DBNO.OrderID as Ventas_NOrden,
(DBNO.Quantity*DBNO.UnitPrice) as Ventas_Monto,
DBNO.Quantity as Ventas_unidades ,
DBNO.UnitPrice as Ventas_Punitario ,
(AVG(DBNO.UnitPrice * DBNO.Discount)) as Ventas_Descuento
from [dbo].[Products] DBNP
inner join [dbo].[Categories] DBNC
on DBNP.CategoryID = DBNC.CategoryID 
inner join [dbo].[Shippers] DBNPR
on DBNP.SupplierID = DBNP.SupplierID
inner join [dbo].[Order Details] DBNO
on DBNP.ProductID = DBNO.ProductID
inner join [dbo].[Orders] DBNOR
on DBNO.OrderID = DBNOR.OrderID
inner join [dbo].[Customers] DBNCL
on DBNOR.CustomerID = DBNCL.CustomerID
inner join [dbo].[Employees] DBNE
on DBNOR.EmployeeID = DBNE.EmployeeID
inner join  Northwind_fullDatamart.dbo.Dim_Producto DBN_MP
on DBNP.ProductName = DBN_MP.Producto_Nombre 
inner join Northwind_fullDatamart.dbo.Dim_Cliente DBN_MC
on DBNCL.ContactName =  DBN_MC.Cliente_Nombre
inner join Northwind_fullDatamart.dbo.Dim_Empleado DBN_ME
on CONCAT_WS(' ',DBNE.LastName,DBNE.FirstName) = DBN_ME.Empleado_NombreCompleto
inner join Northwind_fullDatamart.dbo.Dim_Tiempo DBN_MT
on (CONVERT(date,DBNOR.OrderDate)) =(CONVERT(date,DBN_MT.Tiempo_FechaActual))
group by DBN_MC.Cliente_Skey,
		 DBN_MP.Producto_Skey,
		 DBN_ME.Empleado_Skey,
		 DBN_MT.Tiempo_Skey,
		 DBNO.OrderID,
		(DBNO.Quantity*DBNO.UnitPrice),
		 DBNO.Quantity,
		 DBNO.UnitPrice 


--- delete de las columnas del data mart

Delete from [dbo].[FACT_VENTAS];
Delete from [dbo].[Dim_Producto];
Delete from [dbo].[Dim_Cliente];
Delete from [dbo].[Dim_Empleado];
Delete from [dbo].[Dim_Tiempo];
Delete from [dbo].[FACT_VENTAS];





