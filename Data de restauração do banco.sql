-- Data de restaura��o do banco

USE MSDB

select * from msdb.dbo.restorehistory where destination_database_Name = 'DATABASE_NAME' 
