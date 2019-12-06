docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=qvUmB6*4E36Y" `
    -p 1431:1433 --name sql_server_cont1 `
    -d mcr.microsoft.com/mssql/server