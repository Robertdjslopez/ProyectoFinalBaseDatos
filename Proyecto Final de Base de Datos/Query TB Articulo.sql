--Proyecto Final de Base de Datos
--Integrantes:
--Isaac Almonte Polanco 20-EIIN-1-002 
--Luis Miguel Marte Gratereaux 20-EIIN-1-024 
--Robert De Jes�s L�pez Peralta 20-EIIN-1-017
--Universidad Dominicana O&M
--Maestro: Starling Germosen
--Materia: Base de Datos
--Secci�n: 0541

Create table TBArticulos (
Codigo int identity(1,1) not null,
Descripcion varchar(200) not null,
UDM char(2000) not null,
Cantidad int not null,
Valor money not null,
 Primary Key(Codigo)
)

select Descripcion, UDM, Cantidad, Valor, Cantidad * Valor as Total From TBArticulos

--Comandos para almacenar datos
insert into TBArticulos values('Cable el�ctrico #8', 'Pie', 150, 16)
insert into TBArticulos values('Cable el�ctrico #10', 'Pie', 200, 14)
insert into TBArticulos values('Tuberia de hierro 1/2', 'UN', 250, 150)
insert into TBArticulos values('L�mparas de 100 Watt', 'UN', 400, 4000)
insert into TBArticulos values('Interruptor', 'UN', 500, 120)
insert into TBArticulos values('Toma Corriente', 'UN', 25, 90)
insert into TBArticulos values('Mult�metro', 'UN', 20, 2200)
insert into TBArticulos values('Transformador', 'UN', 25, 35000)
insert into TBArticulos values('Capacitor', 'UN', 20, 1100)
insert into TBArticulos values('Resistencia de 100 Ohmios', 'UN', 2500, 10)
insert into TBArticulos values('Resistencia de 250 Ohmios', 'UN', 3000, 25)
insert into TBArticulos values('Caja de Brackets', 'UN', 125, 245)
insert into TBArticulos values('Brackets de 15 Amperes', 'UN', 756, 110)


--Comando para actualizar una tabla
update TBArticulos set Descripcion = 'Cable el�ctrico #8', UDM = 'Pie', Cantidad = 150, Valor = 16
where Codigo = 1

--Inicio de la transacci�n para realizar un commit
begin transaction

--Comando para eliminar un registro
Delete from TBArticulos where Codigo = 5

--Cierre de la transacci�n commit
commit transaction

