-- Ativar ou Desativar CONTRAINTs

-- Para Ativar ou Desativar UMA CONTRAINTs:

ALTER TABLE [Nome da Tabela] NOCHECK CONSTRAINT [Nome da Constraint]
ALTER TABLE [Nome da Tabela] CHECK CONSTRAINT [Nome da Constraint]

-- Para Ativar ou Desativar todas as CONTRAINTs:

ALTER TABLE [Nome da Tabela] NOCHECK CONSTRAINT ALL
ALTER TABLE [Nome da Tabela] CHECK CONSTRAINT ALL