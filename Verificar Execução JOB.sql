--Verificar Execução JOB

SELECT sj.name, msdb.dbo.agent_datetime(sjh.run_date,sjh.run_time) AS TIME, sjh.message
FROM msdb.dbo.sysjobhistory AS SJH
INNER JOIN msdb.dbo.sysjobs AS SJ
ON sjh.job_id = sj.job_id
WHERE sjh.step_id = 0
ORDER BY TIME DESC