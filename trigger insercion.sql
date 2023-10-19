-- ================================================
-- trigger para  insercion en la tabla pacientes

-- Author:		<german navarro>

-- Description:	<insercion,,>
-- =============================================
CREATE TRIGGER
TR_paciente_Insert
ON paciente
AFTER INSERT
AS
BEGIN
      
	  INSERT INTO movimientos (tipo_movimiento,hora,fecha)
	  SELECT 'insercion',GETDATE(),GETDATE()
	  FROM inserted;
	  END;

