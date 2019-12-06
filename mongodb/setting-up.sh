# instalar la ultima version de docker 
docker pull mongo

# ver que imagenes hay descargadas
docker images

# ejecutar el contenedor
docker run --name mongodb-test -d mongo

# acceder a la shell
docker exec -it mongodb-test bash

# logs de mongo
docker logs mongodb-test

# para inicial mongodb
mongo

