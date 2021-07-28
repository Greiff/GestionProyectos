insert into empleados values(00000000,'Admin','del Sistema','telefono1','Direccion1',to_date('10/10/1000', 'MM/DD/YYYY'),'admin','admin',null);
insert into empleados values(11111111,'Nombre1','Apellido1','telefono1','Direccion1',to_date('10/13/1920', 'MM/DD/YYYY'),'user1','user1',null);
insert into empleados values(22222222,'Nombre2','Apellido2','telefono2','Direccion2',to_date('01/13/1932', 'MM/DD/YYYY'),'user2','user2',null);
insert into empleados values(33333333,'Nombre3','Apellido3','telefono3','Direccion3',to_date('10/15/1976', 'MM/DD/YYYY'),'user3','user3',11111111);
insert into empleados values(44444444,'Nombre4','Apellido4','telefono4','Direccion4',to_date('06/13/1924', 'MM/DD/YYYY'),'user4','user4',null);
insert into empleados values(55555555,'Nombre5','Apellido5','telefono5','Direccion5',to_date('10/13/1918', 'MM/DD/YYYY'),'user5','user5',11111111);
insert into empleados values(66666666,'Nombre6','Apellido6','telefono6','Direccion6',to_date('08/13/1990', 'MM/DD/YYYY'),'user6','user6',null);
insert into empleados values(77777777,'Nombre7','Apellido7','telefono7','Direccion7',to_date('10/13/1988', 'MM/DD/YYYY'),'user7','user7',11111111);

insert into clientes values(88888888,'Cliente1','telefono8','emal1','Direccion8');
insert into clientes values(99999999,'Cliente2','telefono9','emal2','Direccion9');
insert into clientes values(20111111110,'Cliente3','telefono10','emal3','Direccion10');
insert into clientes values(20222222220,'Cliente4','telefono11','emal4','Direccion11');

insert into terrenos values(102030,'Titular1',200.00,'Tipo1');
insert into terrenos values(203040,'Titular2',500.00,'Tipo1');

insert into materiales values(1,'Mano de obra hr',6.00);
insert into materiales values(2,'Cemento kg',0.54);
insert into materiales values(3,'Arena Fina kg',0.17);
insert into materiales values(4,'Placa de yeso m2',2);
insert into materiales values(5,'Masilla para Drywall kg',1.6);
insert into materiales values(6,'Cinta de papel 5cm por 90m',16.50);
insert into materiales values(7,'lana de vidrio m2',7.17);
insert into materiales values(8,'Temple kg',0.88);
insert into materiales values(9,'Pintura Latex gl',31.00);
insert into materiales values(11,'brocha und',17.00);
insert into materiales values(12,'Rodillo und',14.00);
insert into materiales values(13,'Lijas und',2.00);
insert into materiales values(14,'Masking Tape und',9.15);
insert into materiales values(15,'Parante metalico 64x38x0.45mm por 3m und',11.64);
insert into materiales values(16,'Riel metalico 65x25x0.45mm por 3m und',8.55);

insert into capitulos values(1,'Electricidad');
insert into capitulos values(2,'Pintura');
insert into capitulos values(3,'Contruccion Pisos');
insert into capitulos values(4,'Contruccion Muros');
insert into capitulos values(5,'Construccion Techo');
insert into capitulos values(6,'Cerrajeria Interior');
insert into capitulos values(7,'Cerrajeria Exterior');
insert into capitulos values(8,'Carpinteria');

insert into partidas values(1,null,'Paredes de Drywall 7mm normal m2',4);
insert into partidas values(2,null,'Paredes de Drywall 7mm aislante de sonido m2',4);
insert into partidas values(3,null,'Mano de Pintura para Pared con Latex m2',2);
insert into partidas values(4,null,'Mano de Pintura para Pared con Esmalte m2',2);
insert into partidas values(5,null,'Mano de Pintura para Rejas m2',2);

insert into composiciones values(1.00,4,1);
insert into composiciones values(0.50,5,1);
insert into composiciones values(0.2,6,1);
insert into composiciones values(0.33,15,1);
insert into composiciones values(0.33,16,1);
insert into composiciones values(2.00,1,1);
insert into composiciones values(1.00,4,2);
insert into composiciones values(0.50,5,2);
insert into composiciones values(0.2,6,2);
insert into composiciones values(0.33,15,2);
insert into composiciones values(0.33,16,2);
insert into composiciones values(1,7,2);
insert into composiciones values(3.00,1,2);
insert into composiciones values(0.69,9,3);
insert into composiciones values(0.50,8,3);
insert into composiciones values(0.05,12,3);
insert into composiciones values(0.40,16,3);
insert into composiciones values(4.00,1,3);

insert into presupuestos values(1,'VO-001',CURRENT_DATE,null,null,1,55555555);


insert into detalle_partidas values(null,null,1,1);
insert into detalle_partidas values(null,null,3,1);

insert into proyectos values(1,'Proyecto1',CURRENT_DATE,null,null,'URL:....',null,99999999,203040,11111111);



insert into planos values(1,'PL-001','URL:....',CURRENT_DATE,33333333,1);
insert into planos values(2,'PL-002','URL:....',CURRENT_DATE,33333333,1);
