BACKUP DATABASE test3db
TO DISK = N'/var/opt/mssql/backup/test3db.bak' 
WITH NOFORMAT, NOINIT,  
NAME = N'test3dbbackup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO


USE test3db
RESTORE DATABASE test3db
FROM DISK = N'/var/opt/mssql/backup/test3db.bak' 
WITH  FILE = 1,  NOUNLOAD,  STATS = 5
GO