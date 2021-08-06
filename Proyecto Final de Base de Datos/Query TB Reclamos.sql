--Proyecto Final de Base de Datos
--Integrantes:
--Isaac Almonte Polanco 20-EIIN-1-002 
--Luis Miguel Marte Gratereaux 20-EIIN-1-024 
--Robert De Jesús López Peralta 20-EIIN-1-017
--Universidad Dominicana O&M
--Maestro: Starling Germosen
--Materia: Base de Datos
--Sección: 0541

Create Table TBReclamos(
	CodigoReclamo int identity(1,1) primary key not null,
	CodigoCliente int not null,
	EmpleadoID int not null,
	ServicioID int not null,
	ArticuloID int not null,
	Comentario varchar(85) not null, 
	fechaDevolucion nchar(12) null,
	Cantidad int not null,

	constraint FK_Reclamod_Servicio
	foreign key (ServicioID) references TBServicio(IDServicio)
	on update cascade
	on delete cascade,
)


select rec.CodigoReclamo as 'No. de Reclamo', cli.Nombre as Cliente, serv.Fecha as 'Fecha del servicio', art.Descripcion 'Nombre del Producto', serv.CantidadArt as 'Cantidad vendida', art.UDM as 'UDM', rec.Cantidad as 'Cantidad a devolver', rec.Comentario as 'Motivo', rec.fechaDevolucion as 'Fecha', (emp.Nombre + ' ' + emp.Apellidos)as 'Atendido por' from TBReclamos rec
inner join TBServicio serv on rec.ServicioID = serv.IDServicio
inner join TBCliente cli on rec.CodigoCliente = cli.ClienteID
inner join TBEmpleado emp on rec.EmpleadoID = emp.CodigoEmpleado
inner join TBArticulos art on rec.ArticuloID = art.Codigo

where rec.CodigoReclamo = 1


Insert Into TBReclamos (CodigoCliente, EmpleadoID, ServicioID, ArticuloID, Comentario, fechaDevolucion, Cantidad) Values(12, 1, 1, 6, 'Cable roto', '28-07-2021', 1)
Insert Into TBReclamos (CodigoCliente, EmpleadoID, ServicioID, ArticuloID, Comentario, fechaDevolucion, Cantidad) Values(13, 2, 2, 7, 'Cable roto', '28-07-2021', 1)
Insert Into TBReclamos (CodigoCliente, EmpleadoID, ServicioID, ArticuloID, Comentario, fechaDevolucion, Cantidad) Values(14, 3, 3,8, 'Tuberia doblada', '28-07-2021', 1)
Insert Into TBReclamos (CodigoCliente, EmpleadoID, ServicioID, ArticuloID, Comentario, fechaDevolucion, Cantidad) Values(15, 4, 4, 9, 'Lámparas quemadas', '28-07-2021', 3)
Insert Into TBReclamos (CodigoCliente, EmpleadoID, ServicioID, ArticuloID, Comentario, fechaDevolucion, Cantidad) Values(16, 5, 5, 10,'Interruptor dañado', '28-07-2021', 5)
Insert Into TBReclamos (CodigoCliente, EmpleadoID, ServicioID, ArticuloID, Comentario, fechaDevolucion, Cantidad) Values(17, 6, 6, 11, 'Equipo dañado', '28-07-2021', 1)
Insert Into TBReclamos (CodigoCliente, EmpleadoID, ServicioID, ArticuloID, Comentario, fechaDevolucion, Cantidad) Values(18, 7, 7, 12, 'Equipo dañado', '28-07-2021', 1)
Insert Into TBReclamos (CodigoCliente, EmpleadoID, ServicioID, ArticuloID, Comentario, fechaDevolucion, Cantidad) Values(18, 8, 8, 13, 'Equipo dañado', '28-07-2021', 2)
Insert Into TBReclamos (CodigoCliente, EmpleadoID, ServicioID, ArticuloID, Comentario, fechaDevolucion, Cantidad) Values(20, 9, 9, 8, 'Tuberia doblada', '28-07-2021', 1)
Insert Into TBReclamos (CodigoCliente, EmpleadoID, ServicioID, ArticuloID, Comentario, fechaDevolucion, Cantidad) Values(20, 10, 10, 9, 'Lámparas quemadas', '28-07-2021', 2)


update TBReclamos set Comentario = 'Cable roto' where CodigoReclamo = 2
update TBReclamos set Comentario = 'Cable roto' where CodigoReclamo = 3
update TBReclamos set Comentario = 'Tuberia doblada' where CodigoReclamo = 4
update TBReclamos set Comentario = 'Lámparas quemadas' where CodigoReclamo = 5
update TBReclamos set Comentario = 'Interruptor dañado' where CodigoReclamo = 6
