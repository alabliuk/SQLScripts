-- select de multiplos registros na mesma linha

-- Variavel para receber os registros da tabela separados por ","
DECLARE @Lista VARCHAR(80)

-- Define o valor para vazio
SET @Lista = ''

-- Seleciona o registro, e coloca na variavel
SELECT @Lista = @Lista + ',' + COALESCE(CAMPO_DA_TABELA, '') FROM TABELA

-- Remove primeira "," da variavel
SET @Lista = SUBSTRING(@Lista, 2, LEN(@Lista))

-- Exibe os resultados da variavel
SELECT @Lista