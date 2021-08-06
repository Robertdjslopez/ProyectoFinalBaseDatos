--Proyecto Final de Base de Datos
--Integrantes:
--Isaac Almonte Polanco 20-EIIN-1-002 
--Luis Miguel Marte Gratereaux 20-EIIN-1-024 
--Robert De Jesús López Peralta 20-EIIN-1-017
--Universidad Dominicana O&M
--Maestro: Starling Germosen
--Materia: Base de Datos
--Sección: 0541

--Códigos SQL
--Comandos para crear una DB
--Create Database DBProyectoFinalMaxWatts
--Comandos para usar la DB creada
--Use DBProyectoFinalMaxWatts 
--Drop table TBEmpleado
----------Tablas SQL----------
--Estructura de Tablas
create table TBEmpleado
(
	Cedula varchar(13) not null,
	CodigoEmpleado int identity(1,1) not null,
	Nombre varchar(50) not null,
	Apellidos varchar(60) not null,
	Sexo char(1) not null,
	Nacionalidad varchar(100) null, 
	fechaNacimiento varchar(25) null,
	Edad int null, 
	Ocupacion varchar(60) not null,
	Antiguedad int not null,
	Salario money not null,
	FechaIngreso varchar(25) not null,	
	Primary Key(CodigoEmpleado)
)

--Comandos para almacenar datos
insert into TBEmpleado values('002-1072225-8', 'Juan', 'Fernández', 'M', 'Dominicano', '14-08-1988', 32, 'Gerente', 5, 109000, '14-09-2015')
insert into TBEmpleado values('BR345627', 'Ramon', 'Figueroa', 'M', 'Brasil', '19-01-1991', 30, 'Gerente', 5, 105000, '14-03-2016')
insert into TBEmpleado values('012-0008691-5', 'Lorenzo', 'Díaz', 'M', 'Dominicano', '10-12-1993', 27, 'Gerente', 3, 103000, '14-12-2017')
insert into TBEmpleado values('JA052389', 'Ana', 'Marmolejos', 'F', 'Jamaica', '08-08-1990', 30, 'Gerente', 3, 115000, '14-02-2018')
insert into TBEmpleado values('CU896532', 'Odaliz', 'López', 'M', 'Cuba', '15-11-1995', 25, 'Coordinador', 2, 80625, '08-08-2018')
insert into TBEmpleado values('VE013923', 'Angela', 'Bautista', 'F', 'Venezuela', '20-11-1994', 26, 'Coordinadora', 2, 80625, '08-08-2018')
insert into TBEmpleado values('001-8469823-3', 'Rangel', 'Ravelo', 'M', 'Dominicano', '24/12/1995', 25, 'Supervisor', 1, 54000, '09-09-2019')
insert into TBEmpleado values('090-1239872-5', 'Carlos', 'Chacón', 'M', 'Dominicano', '07-10-1987', 33, 'Supervisor', 1, 54000, '09-09-2019')
insert into TBEmpleado values('001-7893214-1', 'Julio', 'Paulino', 'M', 'Dominicano', '30-03-1981', 40, 'Técnico', 1, 21120, '09-09-2019')
insert into TBEmpleado values('CO101589', 'Alberto', 'Polanco', 'M', 'Colombia', '29-06-1979', 28, 'Técnico', 1, 21120, '09-09-2019')

--Comandos para visualizar todos los campos de una tabla
select * From TBEmpleado
select * From TBEmpleado where Nombre = 'Juan'
--Comando para actualizar una tabla
update TBEmpleado set Cedula = '111-1111111-1', Nombre = 'Jose', Apellidos = 'Martinez', Sexo = 'M', Nacionalidad = 'Colombiano', fechaNacimiento = '25-12-1995', Edad = 25
where CodigoEmpleado = 1

--Comando para eliminar un registro
Delete from TBEmpleado where CodigoEmpleado =1

	