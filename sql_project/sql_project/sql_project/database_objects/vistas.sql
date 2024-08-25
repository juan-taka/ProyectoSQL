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

-- Vista creada para obtener informacion de las ventas y un ID de la bodega que se realizo la venta. 
CREATE OR REPLACE VIEW
Bodegas.view_admin_ventas_bodegas
AS (
SELECT
b.idbodegas AS "Bodega en la cual se realizo la compra",
v.cantidad AS "Cantidad de vinos vendidos",
v.fecha AS "fecha en la que se realizo la venta",
v.precio_total AS "Facturado en la venta"
FROM Bodegas AS b
JOIN ventas AS v 
      ON b.idbodegas = v.idbodegas);  
SELECT
* FROM Bodegas.view_admin_ventas_bodegas;

-- Vista creada para obtener nombre del empleado, puesto actual, fecha de ingreso y en que bodega trabaja el empleado.
CREATE OR REPLACE VIEW
Bodegas.view_admin_empleados
AS (
SELECT 
nombre AS "Nombre del empleado",
puesto AS "Puesto del empleado",
fecha_ingreso AS "Fecha de ingreso",
idbodegas AS "Bodega en la que trabaja el empleado actualmente"
FROM EMPLEADOS);

SELECT
* FROM Bodegas.view_admin_empleados;

-- Vista creada para administracion que permite obtener informacion sobre vinos.
CREATE OR REPLACE VIEW
Bodegas.view_admin_vinos_categoria_vinos
AS (
SELECT
b.idvinos AS "Bodega en la que se encuentra el vino",
b.variedad AS "variedad de vinos",
b.nombre AS "Nombre del vino",
b.precio AS "precio del vino",
b.cantidad AS "stock disponible"
FROM VINOS b
JOIN vinos v ON b.idvinos = v.idvinos);

SELECT
* FROM Bodegas.view_admin_vinos_categoria_vinos;

-- Vista creada para obtener informacion de proveedores.
CREATE OR REPLACE VIEW
Bodegas.view_admin_proveedores
AS (
SELECT
nombreproveedor AS "Nombre del proveedor",
telefono AS "Numero de contacto",
ubicacion AS "ubicacion del proveedor",
tarifa AS "Costos de distribucion"
FROM PROVEEDORES);

SELECT
* FROM Bodegas.view_admin_proveedores;
