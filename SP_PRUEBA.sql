USE PruebaDBUBI
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Hugo Gomez>
-- Create date: <Prueba>
-- Description:	<Prueba>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Plato]
	@Operacion int = 0,
	@Nombre NVARCHAR(50) = '',
	@Descripcion NVARCHAR(50) = '',
	@Precio  Decimal = 0.00,
	@Id int = 0
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 
	IF(@Operacion = 1)
	BEGIN

	SELECT * FROM dbo.Plato
	where Estado = 1

	
	END
	IF(@Operacion = 2)
	BEGIN
			INSERT INTO dbo.Plato
			(
			    Nombre,
			    Descripcion,
				Precio,
				UsuarioCreacion,
				FechaCreacion
			)
			VALUES
			(  @Nombre,       -- Nombre - nvarchar(50)
			    @Descripcion,       -- Descripcion - nvarchar(250)
				@Precio,
				'TEST',
				GETDATE()
			   
			    )


				SELECT 'Se inserto correctamente el registro'
	END
	IF (@Operacion = 3)
	BEGIN
	    UPDATE dbo.Plato	SET Nombre = @Nombre , Descripcion = @Descripcion, Precio = @Precio,
								UsuarioActualiza = 'TEST', FechaActualiza = GETDATE()
		WHERE	ID = @Id

		SELECT 'Se actualizo correctamente el registro'
	END
	IF(@Operacion = 4)
	BEGIN
			UPDATE dbo.Plato SET Estado = 0
			WHERE ID = @Id

			SELECT 'Se elimino correctamente el registro'
	END
	IF(@Operacion = 5)
	BEGIN
			SELECT * FROM dbo.Plato
			WHERE ID = @Id
	END

END
GO
