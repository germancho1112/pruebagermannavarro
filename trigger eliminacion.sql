-- ================================================
-- trigger eliminacion
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<german navarro>
-- =============================================
CREATE TRIGGER
TR_paciente_Deleted
ON paciente
AFTER DELETE
AS
BEGIN
      
	  INSERT INTO movimientos (tipo_movimiento,hora,fecha)
	  SELECT 'eliminacion',GETDATE(),GETDATE() 
	  deleted FROM deleted;
	  END;



