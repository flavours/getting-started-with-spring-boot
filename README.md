# Getting started with Java/Spring-boot and flavour

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
expose this port to the docker host at port 8000.
