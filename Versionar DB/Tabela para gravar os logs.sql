CREATE TABLE [dbo].[TB_Adm_AlteracaoBD](
	[IdAlteracaoBd] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[TpEvento] [varchar](200) NULL,
	[DtAlteracao] [datetime] NULL,
	[NmServidor] [varchar](200) NULL,
	[NmLogin] [varchar](200) NULL,
	[NmDatabase] [varchar](200) NULL,
	[NmMaquina] [varchar](200) NULL,
	[NmObjeto] [varchar](200) NULL,
	[UltVersao] [xml] NULL,
 CONSTRAINT [TB_Adm_AlteracaoBD_PK] PRIMARY KEY CLUSTERED 
(
	[IdAlteracaoBd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)