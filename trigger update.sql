-- ================================================
-- trigger actualizar
-- Author:		<german navarro>
-- =============================================
CREATE TRIGGER
TR_paciente_Update
ON paciente
AFTER UPDATE
AS
BEGIN
      
	  INSERT INTO movimientos (tipo_movimiento,hora,fecha)
	  SELECT 'actualizacion',GETDATE(),GETDATE()
	  deleted FROM deleted;
	  END;


