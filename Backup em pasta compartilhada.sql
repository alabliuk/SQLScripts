BACKUP DATABASE nomeBase
TO DISK = '\\CaminhoServer\nomeBase.bak'
With Init,
Format,
COMPRESSION,
COPY_ONLY,
Description = 'BCK' 
Go