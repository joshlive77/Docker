# crear contenedor 
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=passw0rdSqlServer" \
    -p 1433:1433 --name sql1 \
    -d mcr.microsoft.com/mssql/server

docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=qvUmB6*4E36Y" `
    -p 1431:1433 --name sql_server_cont1 `
    -d mcr.microsoft.com/mssql/server

# mostrae contenedores
docker ps -a

# cambiar contraseña
docker exec -it sql1 /opt/mssql-tools/bin/sqlcmd `
   -S localhost -U SA -P "passw0rdSqlServer" `
   -Q "ALTER LOGIN SA WITH PASSWORD='qvUmB6*4E36Y'"


docker exec -it sql1 /opt/mssql-tools/bin/sqlcmd `
    -S localhost,1431 -d examen_final -E -Q "SELECT * FROM Investigador" `
    -o "investigadores.csv" -h-1 -s"," -w 700

# conectarse al bash del contenedor
docker exec -it sql1 "bash"

# conectarse a sql server
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "qvUmB6*4E36Y"
QUIT

# CONECTARSE DE FORMA REMOTA
/opt/mssql-tools/bin/sqlcmd -S 192.168.0.138,1433 -U SA -P "qvUmB6*4E36Y"
QUIT

# detiene contenedor
docker stop sql1

# continua con el contenedor
docker start sql1

# eliminar contenedor
docker rm sql1

# correr contenedor luego de eliminar
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=qvUmB6*4E36Y" `
    -p 1433:1433 --name sql1 `
    -d mcr.microsoft.com/mssql/server

# crear carpeta
docker exec -it sql1 mkdir /var/opt/mssql/backup

# copiar un archivo deesde docker a windows 
docker cp 95:/var/opt/mssql/backup/prueba.mx C:\Users\joshl\Documents\docker\backup

# copiar un archivo desde windows a docker
docker cp C:\Users\joshl\Documents\docker\backup\prebawin.ts 95:/var/opt/mssql/backup

# ejecutar un script sql desde archivo
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "qvUmB6*4E36Y" -i /var/opt/mssql/backup/test2db.sql

# ejecutar un script sql desde archivo y guardarlo en un archivo
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "qvUmB6*4E36Y" -i /var/opt/mssql/backup/test2db.sql -o /var/opt/mssql/backup/test2dbOutput.txt

# copiamos el archivo bak de la base de datos
docker cp 95:/var/opt/mssql/data/MinisterioTrabajoBD-20191121-1-4-22.bak C:\Users\joshl\Documents\docker\backup

