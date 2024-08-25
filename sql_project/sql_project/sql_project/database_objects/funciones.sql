USE Bodegas;

-- Creacion de FUNCIONES.

-- Funcion para la cantidad de vinos vendidos, mediante su ID.
DELIMITER //

CREATE FUNCTION cantidad_vinos_vendidos(IDVINOS INT)
RETURNS INT
DETERMINISTIC

BEGIN
      DECLARE vinos_vendidos INT;
      
    SELECT SUM(CANTIDAD) INTO vinos_vendidos
    FROM VINOS
    WHERE IDVINOS = IDVINOS;
    
    RETURN vinos_vendidos;
END //

DELIMITER ;

-- Funcion para obtener la cantidad de personal contratado mediante ID.

DELIMITER //

CREATE FUNCTION cantidad_personal_contratado(IDVEMPLEADOS INT)
RETURNS INT
DETERMINISTIC 

BEGIN
    DECLARE cantidad_personal_contratado INT;
    
  SELECT SUM(PUESTO) INTO cantidad_personal_contratado
  FROM EMPLEADOS
  WHERE IDEMPLEADOS = IDEMPLEADOS;
  
  RETURN cantidad_personal_contratado;
END //

DELIMITER ;
