-- Pesquisar objeto

select obj.* 
from syscomments cmt
inner join sysobjects obj
on cmt.id = obj.id
where text like '%XXNomeObjeto%'    