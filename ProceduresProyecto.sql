
create or replace procedure GUARDAR_PRESUPUESTO_DETALLE(idPresu number)  as
costo_parcial decimal(10,2) := 0;
idPart number;           
cursor curPre is select par.id_part , par.costo_metro
                from presupuestos pre, Detalle_Partidas dp ,partidas par  
                where pre.id_presu=dp.id_presu and dp.id_part=par.id_part and pre.id_presu=idPresu;            
costo decimal(10,2) := 0;
begin
open curPre;
loop
    fetch curPre into idPart,costo;
    exit when curPre%notfound;
    update detalle_partidas set costo_parcial = costo where id_part = idPart and id_presu=idPresu;
end loop;
close curPre;
end;



create or replace procedure ACTUALIZAR_DATOS_PRESUPUESTO(idPresu number) as
suma decimal(10,2) := 0;
impuestos decimal(10,2) := 0;
total decimal(10,2) := 0;
cantidad decimal(10,2) := 0;
Cursor curDP is select (dp.costo_parcial*dp.metraje)
                from detalle_partidas dp
                where dp.id_presu =iDpresu ;
begin
open curDP;
loop
    fetch curDP into cantidad;
    exit when curDP%notfound;
    suma := suma + cantidad;   
end loop;
impuestos := suma*0.18;
total := impuestos + suma;
update presupuestos set impuesto = impuestos, importe_total = total where id_presu = idPresu;
close curDP;
end;

select * from presupuestos where id_proy =null;
