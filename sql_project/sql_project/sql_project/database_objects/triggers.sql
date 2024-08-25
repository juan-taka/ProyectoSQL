USE Bodegas;

-- Creacion de TRIGGERS
-- Este trigger se utilizara para poder verificar que el descuento sea valido.

DELIMITER //

CREATE TRIGGER trg_cheker_promociones
AFTER INSERT ON Bodegas.PROMOCIONES
FOR EACH ROW
BEGIN 
	DECLARE descuento VARCHAR (100);
    
    SELECT COUNT(*) INTO descuento
    FROM PROMOCIONES
    WHERE descuento = 35;
    
    SELECT COUNT(*) INTO descuento
    FROM PROMOCIONES
    WHERE descuento = 40;
    
   IF descuento < 35 THEN 
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'El descuento que intenta encontra ya caduco';
    END IF;
    
    IF descuento > 35 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El descuento sigue vigente';
	END IF;
END //

 DELIMITER ;
 
 -- Trigger creado para notificar la actualizacion de datos de los empleados.
 DELIMITER //
 
 CREATE TRIGGER update_empleados
 AFTER UPDATE ON Bodegas.EMPLEADOS
 FOR EACH ROW
 BEGIN 
      INSERT INTO Bodegas.EMPLEADOS
      (IDEMPLEADOS, NOMBRE, PUESTO, FECHA_INGRESO)
      VALUES
      (
          NEW.IDEMPLEADOS,
          NEW.NOMBRE,
          NEW.PUESTO,
          NEW.FECHA_INGRESO
	  );
END; //
           
DELIMITER //
