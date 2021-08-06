--Proyecto Final de Base de Datos
--Integrantes:
--Isaac Almonte Polanco 20-EIIN-1-002 
--Luis Miguel Marte Gratereaux 20-EIIN-1-024 
--Robert De Jesús López Peralta 20-EIIN-1-017
--Universidad Dominicana O&M
--Maestro: Starling Germosen
--Materia: Base de Datos
--Sección: 0541

create table TBCliente(
ClienteID int identity(1,1) not null,
Nombre varchar(100) not null,
Direccion varchar(100) not null,
Contacto char(12) not null,
Primary Key(ClienteID)
)
Select * From TBCliente

--Comandos para almacenar datos
insert into TBCliente values('Grupo Ramos', 'Santo Domingo', '829-322-4444')
insert into TBCliente values('Grupo Rojas', 'Santo Domingo', '809-564-1134')
insert into TBCliente values('Ferretería Ochoa', 'Santo Domingo Oeste', '809-530-7969')
insert into TBCliente values('Ferremix', 'Av. Isabel Aguilar, Herrera', '829-537-3000')
insert into TBCliente values('Carrefour', 'Autopista Duarte', '809-412-2333')
insert into TBCliente values('Almacenes Unidos', 'Santo Domingo', '809-472-6911')
insert into TBCliente values('Hipermecados Olé', 'Bajos de Haina', '809-536-0690')
insert into TBCliente values('Jumbo', 'Av. Luperon, Santo Domingo', '809-333-2111')
insert into TBCliente values('La Cadena', 'Santo Domingo', '809-243-0002')
insert into TBCliente values('Ferretería Americana', 'Av. San Martín, Santo Domingo', '809-332-1720')

--Comando para actualizar una tabla
update TBCliente set Nombre = 'Grupo Ramos', Direccion = 'Santo Domingo', Contacto = '829-322-4444'
where ClienteID = 1

--comando para eliminar un registro
Delete from TBCliente where ClienteID = 21

