RESTORE DATABASE DHM_2023
FROM DISK = '/var/opt/sqlserver/backup/mifile.bac'
WITH REPLACE,
MOVE 'DHM 2023_Data' TO '/var/opt/sqlserver/data/DHM_2023_data.mdf',
MOVE 'DHM 2023_Log' TO '/var/opt/sqlserver/data/DHM_2023_log.ldf';