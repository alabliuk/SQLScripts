--Eliminar último caractere

SELECT STUFF(@QTDAbertura, LEN(@QTDAbertura), 1, '')