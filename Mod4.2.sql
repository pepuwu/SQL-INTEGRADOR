USE laboratorio;
SET SQL_SAFE_UPDATES = 0;

UPDATE clientes_neptuno
SET Pais='USA'
WHERE Pais='Estados Unidos';

UPDATE clientes_neptuno
SET NombreCompania=UPPER(NombreCompania);

UPDATE clientes_neptuno
SET Ciudad=UPPER(Ciudad),
Pais=UPPER(Pais);

SELECT * FROM clientes_neptuno;

ALTER TABLE empleados
ADD NOMBRE_EMPLEADO varchar(30) 
after IdEmpleado;

UPDATE empleados
SET NOMBRE_EMPLEADO= CONCAT(Apellidos, ', ', Nombre);
ALTER TABLE empleados 
DROP Apellidos,
DROP Nombre;

select * from empleados;

ALTER TABLE clientes
ADD tipo varchar(3)
after responsable;
UPDATE clientes 
SET tipo='VIP'
WHERE CIUDAD='Madrid';

SELECT* FROM clientes;

ALTER TABLE clientes MODIFY TELEFONO varchar(15);
UPDATE clientes 
SET TELEFONO=CONCAT('+34- ', TELEFONO) 
WHERE TELEFONO IS NOT NULL;

select* from clientes;

ALTER TABLE productos 
ADD fecha date;
UPDATE productos SET fecha= CONCAT(ANO, '-', MES, '-', DIA);
ALTER TABLE productos DROP ANO, DROP MES, DROP DIA;
UPDATE productos SET ORIGEN='España' 
WHERE ORIGEN='Espana';
SELECT* from productos;

ALTER TABLE productos_neptuno 
MODIFY Suspendido varchar(2);
UPDATE productos_neptuno 
SET Suspendido=If(Suspendido= '0', 'NO', 'SI');
SELECT* from productos_neptuno;

UPDATE productos_neptuno
SET PrecioUnidad=ROUND(PrecioUnidad * 1.1,2);
select * FROM productos_neptuno;

UPDATE proveedores SET Region= null
WHERE Region=' ';
SELECT* FROM proveedores;

UPDATE  clientes 
SET CIUDAD=CONCAT(UPPER(LEFT(CIUDAD,1)),LOWER(SUBSTRING(CIUDAD, 2)));
SELECT*FROM clientes;

CREATE TABLE PRODUCTOS_SUSPENDIDOS
SELECT* FROM productos_neptuno 
WHERE Suspendido='SI';
SELECT* FROM PRODUCTOS_SUSPENDIDOS;