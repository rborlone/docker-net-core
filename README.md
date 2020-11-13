
# Ejemplo de Docker en Net Core con Base de Datos MariaDB

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

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

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)


   [dill]: <https://github.com/joemccann/dillinger>
   [git-repo-url]: <https://github.com/joemccann/dillinger.git>
   [john gruber]: <http://daringfireball.net>
   [df1]: <http://daringfireball.net/projects/markdown/>
   [markdown-it]: <https://github.com/markdown-it/markdown-it>
   [Ace Editor]: <http://ace.ajax.org>
   [node.js]: <http://nodejs.org>
   [Twitter Bootstrap]: <http://twitter.github.com/bootstrap/>
   [jQuery]: <http://jquery.com>
   [@tjholowaychuk]: <http://twitter.com/tjholowaychuk>
   [express]: <http://expressjs.com>
   [AngularJS]: <http://angularjs.org>
   [Gulp]: <http://gulpjs.com>

   [PlDb]: <https://github.com/joemccann/dillinger/tree/master/plugins/dropbox/README.md>
   [PlGh]: <https://github.com/joemccann/dillinger/tree/master/plugins/github/README.md>
   [PlGd]: <https://github.com/joemccann/dillinger/tree/master/plugins/googledrive/README.md>
   [PlOd]: <https://github.com/joemccann/dillinger/tree/master/plugins/onedrive/README.md>
   [PlMe]: <https://github.com/joemccann/dillinger/tree/master/plugins/medium/README.md>
   [PlGa]: <https://github.com/RahulHP/dillinger/blob/master/plugins/googleanalytics/README.md>
