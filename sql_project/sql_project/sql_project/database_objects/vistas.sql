USE bodegas;

-- Vista creada para la administracion en la cual pueda obtener el nombre del cliente, un telefono del cliente y una ID de la bodega. en la cual realizo la compra.
CREATE OR REPLACE VIEW
Bodegas.view_admin_clientes_bodegas
AS (
SELECT
b.idbodegas AS 'Bodega en la cual se realizo la compra',
b.nombre AS 'Nombre Cliente',
b.telefono AS 'Telefono Cliente'
FROM Bodegas b
JOIN clientes c ON b.idbodegas = c.nombre);

SELECT
* FROM Bodegas.view_admin_clientes_bodegas;
