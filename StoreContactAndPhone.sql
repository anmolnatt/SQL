IF OBJECT_ID('[dbo].[StoreContactAndPhone]') IS NOT NULL
BEGIN
	DROP FUNCTION dbo.StoreContactAndPhone
END
GO

CREATE FUNCTION dbo.StoreContactAndPhone (
	@contact VARCHAR(255)
	,@phone VARCHAR(255)
)
RETURNS VARCHAR(512)
AS 
BEGIN
	DECLARE @returnValue VARCHAR(512)
	SET @returnValue = TRIM(@contact) + ': ' + TRIM(@phone)

	RETURN @returnValue
END
GO
