CREATE TRIGGER [TR_ControleVersao]
ON DATABASE
FOR DDL_DATABASE_LEVEL_EVENTS
AS
BEGIN
    SET NOCOUNT ON
    DECLARE @Evento XML,
			@HostName varchar(200)
    SET @Evento = EVENTDATA()
	SET @HostName = HOST_NAME()
    INSERT INTO TB_Adm_AlteracaoBD(TpEvento, DtAlteracao,
                        NmServidor, NmLogin, NmDatabase, NmObjeto,UltVersao,NmMaquina)
    SELECT  @Evento.value('(/EVENT_INSTANCE/EventType/text())[1]','varchar(200)') Tipo_Evento,
            @Evento.value('(/EVENT_INSTANCE/PostTime/text())[1]','datetime') PostTime,
            @Evento.value('(/EVENT_INSTANCE/ServerName/text())[1]','varchar(200)') ServerName,
            @Evento.value('(/EVENT_INSTANCE/LoginName/text())[1]','varchar(200)') LoginName,
            @Evento.value('(/EVENT_INSTANCE/DatabaseName/text())[1]','varchar(200)') DatabaseName,
            @Evento.value('(/EVENT_INSTANCE/ObjectName/text())[1]','varchar(200)') ObjectName, @Evento,@HostName
END

GO

ENABLE TRIGGER [TR_ControleVersao] ON DATABASE
GO