DECLARE @FromDate datetime
DECLARE @ToDate datetime

SET @FromDate = GETDATE()
SET @ToDate = GETDATE()
Print '------------------------ '
PRINT @FromDate
PRINT @ToDate
SET @FromDate = CONVERT(DATETIME, CONVERT(varchar(11),@FromDate, 111 ) + ' 00:00:00', 111) 
SET @ToDate = CONVERT(DATETIME, CONVERT(varchar(11),@ToDate, 111 ) + ' 23:59:59', 111)
Print '------------------------ '
PRINT @FromDate
PRINT @ToDate



DECLARE @TEST_FROM DATETIME
SET @TEST_FROM = dateadd(month,((YEAR(@FromDate)-1900)*12)+MONTH(@FromDate)-1,DAY(@FromDate)-1) + ' 12:00:00'

DECLARE @TEST_TO DATETIME
SET @TEST_TO = dateadd(month,((YEAR(@ToDate)-1900)*12)+MONTH(@ToDate)-1,DAY(@ToDate)-1) + ' 23:59:59'

Print '------------------------ '
PRINT @TEST_FROM
PRINT @TEST_TO