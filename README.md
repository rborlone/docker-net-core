
# Ejemplo de Docker en Net Core con Base de Datos MariaDB

El siguiente proyecto es un ejemplo de una Api Rest realizada en Net Core basada en el ejemplo de https://bezkoder.com/node-js-express-sequelize-mysql/

# Caracteristicas Principales
  - Se puede compilar en Linux, Windows y Mac.
  - Implementa su Archivo Dockerfile para aquellos que estan trabajando con Docker (Se debe levantar una base de datos mariaDb)
  - Implementa su Archivo docker-compose.yml

### Instalación

Correr la Aplicacion requiere tener mariaDB arriba de esta forma.

```sh
$ docker create network mi-red
$ docker run --name=db --network=mi-red -e MYSQL_ROOT_PASSWORD=123456 -e MYSQL_DATABASE=testdb -d mariadb:latest 
$ docker build --tag=netcoreexample .
$ docker run --name=netcore --network=mi-red -p 8080:80 -d netcoreexample 
```

Si se quiere correr con Docker Compose

```sh
$ docker-compose up -d
```
Por favor si tienen dudas o consultas o sugerencias, me envian un mensaje para que las revisemos :)

**Free Software, Hell Yeah!**


![N](https://i.ibb.co/t2k957J/656d6ace.png)
