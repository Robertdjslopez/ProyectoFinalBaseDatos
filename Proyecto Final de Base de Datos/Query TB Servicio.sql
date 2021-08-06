--Proyecto Final de Base de Datos
--Integrantes:
--Isaac Almonte Polanco 20-EIIN-1-002 
--Luis Miguel Marte Gratereaux 20-EIIN-1-024 
--Robert De Jesús López Peralta 20-EIIN-1-017
--Universidad Dominicana O&M
--Maestro: Starling Germosen
--Materia: Base de Datos
--Sección: 0541

Create table TBServicio (
IDServicio int identity(1,1) Primary Key not null,
EmpleadoID int not null,
CodigoCliente int not null,
ArticuloID int not null,
Fecha varchar(25) not null,
CantidadArt int not null,

	constraint FK_Servicio_Empleado
	foreign key (EmpleadoID) references TBEmpleado(CodigoEmpleado)
	on update cascade
	on delete cascade,

	constraint FK_Servicio_Cliente
	foreign key (CodigoCliente) references TBCliente(ClienteID)
	on update cascade
	on delete cascade,

	constraint FK_Servicio_Articulo
	foreign key (ArticuloID) references TBArticulos(Codigo)
	on update cascade
	on delete cascade,
)


--Comandos para visualizar todos los campos de una tabla

select serv.CodigoCliente as 'Id Cliente', cli.Nombre as Nombre, art.Descripcion as 'Descripción', serv.CantidadArt as Cantidad,
art.Valor as Precio, serv.CantidadArt * art.Valor as Total, emp.Nombre	as 'Atendido por', serv.Fecha from TBServicio serv 
inner join TBArticulos art on serv.ArticuloID = art.Codigo
inner join TBCliente cli on serv.CodigoCliente = cli.ClienteID
inner join TBEmpleado emp on serv.EmpleadoID = emp.CodigoEmpleado

--Comandos para almacenar datos
Insert Into TBServicio values(1, 12, 6, '13-7-2021', 5)
Insert Into TBServicio values(2, 13, 7, '13-7-2021', 3)
Insert Into TBServicio values(3, 14, 8, '13-7-2021', 2)
Insert Into TBServicio values(4, 15, 9, '13-7-2021', 15)
Insert Into TBServicio values(5, 16, 10, '13-7-2021', 25)
Insert Into TBServicio values(6, 17, 11, '13-7-2021', 1)
Insert Into TBServicio values(7, 18, 12, '13-7-2021', 3)
Insert Into TBServicio values(8, 18, 13, '13-7-2021', 7)
Insert Into TBServicio values(9, 19, 14, '13-7-2021', 4)
Insert Into TBServicio values(10, 20, 15, '13-7-2021', 2)

