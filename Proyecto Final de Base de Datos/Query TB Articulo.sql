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
insert into TBArticulos values('Cable eléctrico #8', 'Pie', 150, 16)
insert into TBArticulos values('Cable eléctrico #10', 'Pie', 200, 14)
insert into TBArticulos values('Tuberia de hierro 1/2', 'UN', 250, 150)
insert into TBArticulos values('Lámparas de 100 Watt', 'UN', 400, 4000)
insert into TBArticulos values('Interruptor', 'UN', 500, 120)
insert into TBArticulos values('Toma Corriente', 'UN', 25, 90)
insert into TBArticulos values('Multímetro', 'UN', 20, 2200)
insert into TBArticulos values('Transformador', 'UN', 25, 35000)
insert into TBArticulos values('Capacitor', 'UN', 20, 1100)
insert into TBArticulos values('Resistencia de 100 Ohmios', 'UN', 2500, 10)
insert into TBArticulos values('Resistencia de 250 Ohmios', 'UN', 3000, 25)
insert into TBArticulos values('Caja de Brackets', 'UN', 125, 245)
insert into TBArticulos values('Brackets de 15 Amperes', 'UN', 756, 110)


--Comando para actualizar una tabla
update TBArticulos set Descripcion = 'Cable eléctrico #8', UDM = 'Pie', Cantidad = 150, Valor = 16
where Codigo = 1

--Inicio de la transacción para realizar un commit
begin transaction

--Comando para eliminar un registro
Delete from TBArticulos where Codigo = 5

--Cierre de la transacción commit
commit transaction

