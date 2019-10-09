s---------------------------------------------------------------------------------
-- Listar colunas da tabela (Views de sistema)

select * from information_schema.columns where table_name = 'nomeTabela'
select * from sys.all_columns where object_id = object_id('nomeTabela')
select * from sys.columns where object_id = object_id('nomeTabela')