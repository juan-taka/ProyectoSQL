USE Bodegas;

SET GLOBAL local_infile = true;


-- NO TENES NINGUNA BODEGA!! 
-- CREAMOS 4 para dar como ejemplo --> por favor corregir esto
INSERT INTO BODEGAS (NOMBRE, UBICACION, TELEFONO, EMAIL)
VALUES ('Bodega A', 'Ubicación A', '123-456-7890', 'contactoA@example.com');
INSERT INTO BODEGAS (NOMBRE, UBICACION, TELEFONO, EMAIL)
VALUES ('Bodega B', 'Ubicación B', '234-567-8901', 'contactoB@example.com');
INSERT INTO BODEGAS (NOMBRE, UBICACION, TELEFONO, EMAIL)
VALUES ('Bodega C', 'Ubicación C', '345-678-9012', 'contactoC@example.com');
INSERT INTO BODEGAS (NOMBRE, UBICACION, TELEFONO, EMAIL)
VALUES ('Bodega D', 'Ubicación D', '456-789-0123', 'contactoD@example.com');


INSERT INTO PROVEEDORES (NOMBREPROVEEDOR, TELEFONO, UBICACION, TARIFA, EMAIL)
VALUES 
('Viñedos La Rioja', '+34 941 123 456', 'La Rioja, España', 50, 'info@vinedoslarioja.es'),
('Bodega Mendoza', '+54 261 987 6543', 'Mendoza, Argentina', 45, 'ventas@bodegamendoza.com'),
('Napa Valley Wines', '+1 707 555 1234', 'California, USA', 60, 'contact@napavalleywines.com'),
('Château Bordeaux', '+33 5 56 00 00 00', 'Bordeaux, Francia', 55, 'export@chateaubordeaux.fr');

INSERT INTO CATEGORIA_VINOS (IDCATEGORIA_VINOS, NOMBRE, DESCRIPCION) VALUES
(1, 'Tinto', 'Vinos elaborados con uvas tintas.'),
(2, 'Blanco', 'Vinos elaborados con uvas blancas.'),
(3, 'Rosado', 'Vinos que tienen un color rosado, entre tinto y blanco.'),
(4, 'Espumoso', 'Vinos con burbujas debido a la carbonatación.'),
(5, 'Dulce', 'Vinos con un alto contenido de azúcar.'),
(6, 'Fortificado', 'Vinos con un contenido de alcohol añadido, como el oporto.'),
(7, 'Seco', 'Vinos con bajo contenido de azúcar residual.'),
(8, 'Semiseco', 'Vinos con un contenido moderado de azúcar residual.'),
(9, 'Reserva', 'Vinos de alta gama con un tiempo prolongado de envejecimiento.'),
(10, 'Joven', 'Vinos que no han sido envejecidos por mucho tiempo.'),
(11, 'Crianza', 'Vinos que han sido envejecidos en barrica y botella por un período intermedio.'),
(12, 'Gran Reserva', 'Vinos con un largo período de envejecimiento en barrica y botella.'),
(13, 'Bio', 'Vinos elaborados con prácticas de cultivo orgánicas.'),
(14, 'Natural', 'Vinos con mínima intervención en su elaboración.'),
(15, 'Vintage', 'Vinos de una cosecha particular, generalmente de alta calidad.');

INSERT INTO VINOS (IDBODEGAS, NOMBRE, VARIEDAD, ANIO, PRECIO, CANTIDAD, IDCATEGORIA_VINOS)
VALUES 
(1, 'Crianza Reserva', 'Tempranillo', 2018, 25, 500, 3),
(1, 'Blanco Viura', 'Viura', 2021, 15, 750, 7),
(2, 'Malbec Premium', 'Malbec', 2019, 30, 600, 1),
(2, 'Torrontés Clásico', 'Torrontés', 2022, 18, 800, 9),
(3, 'Napa Cabernet', 'Cabernet Sauvignon', 2017, 45, 400, 2),
(3, 'Chardonnay Reserve', 'Chardonnay', 2020, 35, 550, 5),
(4, 'Grand Cru', 'Merlot', 2016, 80, 300, 4),
(4, 'Sauvignon Blanc', 'Sauvignon Blanc', 2021, 28, 700, 8),
(1, 'Gran Reserva', 'Tempranillo', 2015, 50, 250, 6),
(2, 'Cabernet Blend', 'Cabernet Sauvignon', 2018, 40, 450, 10),
(1, 'Crianza Reserva', 'Tempranillo', 2018, 25, 500, 3),
(1, 'Blanco Viura', 'Viura', 2021, 15, 750, 7),
(2, 'Malbec Premium', 'Malbec', 2019, 30, 600, 1),
(2, 'Torrontés Clásico', 'Torrontés', 2022, 18, 800, 9),
(3, 'Napa Cabernet', 'Cabernet Sauvignon', 2017, 45, 400, 2),
(3, 'Chardonnay Reserve', 'Chardonnay', 2020, 35, 550, 5),
(4, 'Grand Cru', 'Merlot', 2016, 80, 300, 4),
(4, 'Sauvignon Blanc', 'Sauvignon Blanc', 2021, 28, 700, 8),
(1, 'Gran Reserva', 'Tempranillo', 2015, 50, 250, 6),
(2, 'Cabernet Blend', 'Cabernet Sauvignon', 2018, 40, 450, 10),
(3, 'Pinot Noir Elegance', 'Pinot Noir', 2019, 55, 350, 11),
(4, 'Riesling Alsace', 'Riesling', 2020, 32, 600, 12),
(1, 'Garnacha Old Vines', 'Garnacha', 2017, 38, 400, 13);


-- ESTO ESTA MAL POR QUE NO EXISTEN ESTAS BODEGAS!!! 
-- INSERT INTO EMPLEADOS (IDEMPLEADOS, IDBODEGAS, NOMBRE, PUESTO, EMAIL, TELEFONO, FECHA_INGRESO) VALUES
-- (1, 16, 'Laura Pérez', 'Gerente', 'laura.perez@bodega.com', '123-456-789', '2022-01-15'),
-- (2, 17, 'Mario Gómez', 'Sommelier', 'mario.gomez@bodega.com', '234-567-890', '2021-06-10'),
-- (3, 18, 'Ana Ruiz', 'Vendedor', 'ana.ruiz@bodega.com', '345-678-901', '2023-03-22'),
-- (4, 19, 'Carlos Fernández', 'Administrador', 'carlos.fernandez@bodega.com', '456-789-012', '2020-11-05'),
-- (5, 20, 'Marta López', 'Encargada de Almacén', 'marta.lopez@bodega.com', '567-890-123', '2022-09-14'),
-- (6, 21, 'Luis Martínez', 'Cajero', 'luis.martinez@bodega.com', '678-901-234', '2021-12-20'),
-- (7, 22, 'Isabel Torres', 'Asistente de Ventas', 'isabel.torres@bodega.com', '789-012-345', '2023-07-17'),
-- (8, 23, 'Javier Jiménez', 'Marketing', 'javier.jimenez@bodega.com', '890-123-456', '2021-05-30'),
-- (9, 24,'Beatriz García', 'Contadora', 'beatriz.garcia@bodega.com', '901-234-567', '2022-04-25'),
-- (10, 25, 'Francisco Díaz', 'Logística', 'francisco.diaz@bodega.com', '012-345-678', '2020-08-19'),
-- (11, 26,'Patricia Morales', 'Atención al Cliente', 'patricia.morales@bodega.com', '123-456-790', '2022-10-02'),
-- (12, 27,'Sergio Romero', 'Técnico de Bodega', 'sergio.romero@bodega.com', '234-567-891', '2023-02-15'),
-- (13, 28,'Verónica Sánchez', 'Encargada de Compras', 'veronica.sanchez@bodega.com', '345-678-902', '2021-09-08'),
-- (14, 29,'Roberto Castillo', 'Control de Calidad', 'roberto.castillo@bodega.com', '456-789-013', '2022-12-18'),
-- (15, 30,'Carolina Moreno', 'Asistente Administrativo', 'carolina.moreno@bodega.com', '567-890-124', '2023-01-11');

INSERT INTO EMPLEADOS (IDBODEGAS, NOMBRE, PUESTO, EMAIL, TELEFONO)
VALUES 
(1, 'María García', 'Enólogo', 'maria.garcia@bodega1.com', '+34 600 123 456'),
(1, 'Juan Rodríguez', 'Gerente de Ventas', 'juan.rodriguez@bodega1.com', '+34 601 234 567'),
(2, 'Ana Martínez', 'Sommelier', 'ana.martinez@bodega2.com', '+54 9 11 2345 6789'),
(2, 'Carlos López', 'Jefe de Producción', 'carlos.lopez@bodega2.com', '+54 9 11 3456 7890'),
(3, 'Emily Johnson', 'Marketing Manager', 'emily.johnson@bodega3.com', '+1 707 555 1234'),
(3, 'Michael Brown', 'Vineyard Manager', 'michael.brown@bodega3.com', '+1 707 555 5678'),
(4, 'Sophie Dubois', 'Directrice des Ventes', 'sophie.dubois@bodega4.com', '+33 6 12 34 56 78'),
(4, 'Pierre Martin', 'Maître de Chai', 'pierre.martin@bodega4.com', '+33 6 23 45 67 89'),
(1, 'Laura Fernández', 'Asistente de Enología', 'laura.fernandez@bodega1.com', '+34 602 345 678'),
(3, 'David Wilson', 'Tasting Room Host', 'david.wilson@bodega3.com', '+1 707 555 9012');

INSERT INTO CLIENTES (NOMBRE, REFERENCIA, TELEFONO, EMAIL)
VALUES 
('Restaurante El Sabor', 'REST001', '+34 910 123 456', 'contacto@elsabor.es'),
('Hotel Bella Vista', 'HOT002', '+1 305 555 1234', 'reservas@bellavista.com'),
('Vinoteca La Cava', 'VIN003', '+33 1 23 45 67 89', 'info@lacava.fr'),
('Supermercado GranCompra', 'SUP004', '+54 11 4321 5678', 'atencion@grancompra.com.ar'),
('Club de Vinos Enófilo', 'CLU005', '+44 20 7946 0123', 'members@enofiloclub.co.uk');


-- LOS VINOS VAN HASTA EL 10 por eso se recorta
INSERT INTO PROMOCIONES (IDPROMOCIONES, IDVINOS, NOMBRE, DESCRIPCION, FECHA_INICIO, FECHA_FIN, DESCUENTO) VALUES
(1, 4, 'Descuento de Verano', '20% de descuento en vinos blancos', '2024-06-01', '2024-08-31', 20.00),
(2, 5, 'Oferta de Fin de Año', 'Compra 2 botellas, lleva la 3ra gratis', '2024-12-01', '2024-12-31', 33.33),
(3, 6, 'Vino del Mes', '15% de descuento en el vino del mes', '2024-07-01', '2024-07-31', 15.00),
(4, 7, 'Descuento de Navidad', '10% de descuento en todos los vinos', '2024-12-01', '2024-12-25', 10.00),
(5, 8, 'Promoción Anual', '25% de descuento en vinos de reserva', '2024-01-01', '2024-12-31', 25.00),
(6, 9, 'Happy Hour', '5% de descuento en compras realizadas entre 18:00 y 20:00', '2024-07-01', '2024-07-31', 5.00),
(7, 10, 'Oferta del Sommelier', '30% de descuento en vinos recomendados por el sommelier', '2024-07-01', '2024-07-31', 30.00),
(8, 11, 'Pack Familiar', 'Compra un pack familiar con 3 vinos diferentes con un 20% de descuento', '2024-07-01', '2024-07-31', 20.00),
(9, 12, 'Día del Vino', '10% de descuento en compras superiores a $100', '2024-07-15', '2024-07-15', 10.00),
(10, 13, 'Especial de Octubre', '10% de descuento en todos los vinos tintos', '2024-10-01', '2024-10-31', 10.00),
(11, 14, 'Descuento de Año Nuevo', '15% de descuento en cualquier compra superior a $150', '2024-12-26', '2024-12-31', 15.00),
(12, 15, 'Oferta de Primavera', '20% de descuento en vinos rosados', '2024-03-01', '2024-05-31', 20.00);

INSERT INTO VENTAS (IDCLIENTES, IDVINOS, CANTIDAD, PRECIO_TOTAL, FECHA)
VALUES 
(1, 3, 2, '60.00', '2024-07-01 10:30:00'),
(2, 7, 1, '80.00', '2024-07-02 14:15:00'),
(3, 1, 3, '75.00', '2024-07-03 16:45:00'),
(4, 5, 2, '90.00', '2024-07-04 11:20:00'),
(5, 9, 1, '50.00', '2024-07-05 13:00:00'),
(1, 2, 4, '60.00', '2024-07-06 15:30:00'),
(2, 8, 2, '56.00', '2024-07-07 17:45:00'),
(3, 4, 1, '18.00', '2024-07-08 09:15:00'),
(4, 6, 3, '105.00', '2024-07-09 12:30:00'),
(5, 10, 2, '80.00', '2024-07-10 14:00:00'),
(1, 1, 2, '50.00', '2024-07-11 16:20:00'),
(2, 3, 1, '30.00', '2024-07-12 10:45:00'),
(3, 5, 2, '90.00', '2024-07-13 13:15:00'),
(4, 7, 1, '80.00', '2024-07-14 15:30:00'),
(5, 2, 3, '45.00', '2024-07-15 17:00:00'),
(1, 9, 2, '100.00', '2024-07-16 11:45:00'),
(2, 4, 4, '72.00', '2024-07-17 14:30:00'),
(3, 6, 1, '35.00', '2024-07-18 16:15:00'),
(4, 8, 2, '56.00', '2024-07-19 09:30:00'),
(5, 10, 3, '120.00', '2024-07-20 12:00:00');
