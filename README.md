# Getting started with Java/Spring-boot

![flavour Spring-Boot Logo](https://utils.flavours.dev/presskit/Icon%20Glossy.png)


## Project Outline
This project template utilizes

* Java 11
* [FlywayDB](https://flywaydb.org/) for database migrations;
* [Gradle](https://gradle.org/) to build and, in dev-mode, run the application with hot reload;
* [Spring JPA](https://docs.spring.io/spring-data/jpa/docs/current/reference/html/) for database access;
* [Spring Web](https://spring.io/guides/gs/serving-web-content/) to serve HTTP requests;
* [Thymeleaf](https://www.thymeleaf.org/doc/tutorials/3.0/thymeleafspring.html) for HTML-templating;

## Local development
### Quick start
Run `docker-compose up web` to start a dev-server with hot reloadling enabled.

### Info
The container runs a Tomcat server listening on port 8080. The docker-compose.yml file is set up to
expose this port to the docker host at port 8080 as well, but you are free to change it as you wish.



## Prepare a new release of the getting-started project
To create a new release of the getting started project, you have to updated the default welcome screen with the latest version. 

```
docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/core:2.9.2 -s --css https://utils.flavours.dev/baseproject/1.0/style.css -o /data/src/main/resources/templates/index.html /data/README.md
```

