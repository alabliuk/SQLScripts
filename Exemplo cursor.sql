ALTER PROCEDURE [dbo].[zzGestorExecucaoCalcLinhaLinha]
AS
BEGIN
	DECLARE @IdOsVerifone INT
	DECLARE ListaDeOssVerifone CURSOR FOR 

		SELECT 
			IdOsVerifone
		FROM 
			zzDataMartFinanceiro
		WHERE 
			(StatusOperadora in ('ENCERRADA', 'CANCELADA'))

	OPEN ListaDeOssVerifone 

	FETCH NEXT FROM ListaDeOssVerifone INTO @IdOsVerifone

	WHILE @@FETCH_STATUS = 0 
	BEGIN

		EXEC zzCalculoLinhaDataMartFinanceiro @IdOsVerifone

	FETCH NEXT FROM ListaDeOssVerifone INTO @IdOsVerifone
	END 

	CLOSE ListaDeOssVerifone
	DEALLOCATE ListaDeOssVerifone
END