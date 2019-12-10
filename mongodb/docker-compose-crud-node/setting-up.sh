# crear el contenedor desde docker-compose
docker-compose up

# para ejecutar el contenedor en seguno plano
docker-compose up -d

# ejecutar el contenedor
docker exec -it mongo-test bash

# ingresar a mongodb
mongo -u mongoadmin -p mongoadmin --authenticationDatabase mongo-test