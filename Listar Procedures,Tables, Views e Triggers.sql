-- Listar:

-- Procedures
Select name From sys.objects Where type = 'P'

-- Tables
Select name From sys.objects Where type = 'U'

-- Views
Select name From sys.objects Where type = 'V'

-- Trigger
SELECT name FROM sysobjects WHERE (xtype = 'TR')