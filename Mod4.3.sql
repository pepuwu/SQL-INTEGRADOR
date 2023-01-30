USE laboratorio;

UPDATE  productos_neptuno
SET Suspendido='SI'
WHERE IdProveedor=1;
SELECT* FROM productos_neptuno;

INSERT INTO productos_suspendidos
SELECT* FROM productos_neptuno
WHERE Suspendido='SI';

DELETE FROM productos_neptuno
WHERE Suspendido='SI';