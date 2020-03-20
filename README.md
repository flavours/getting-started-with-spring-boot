# Getting started with Java/Spring-boot

[![Actions](https://github.com/flavours/documentation/workflows/CI/badge.svg)]

[![GitHub license](https://img.shields.io/github/license/Naereen/StrapDown.js.svg)](https://github.com/flavours/getting-started-with-spring-boot/blob/master/LICENSE)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Naereen/StrapDown.js/graphs/commit-activity)

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
expose this port to the docker host at port 8000, but you are free to change it as you wish.



## Getting-started project development

If you want to contribute to this project, please checkout github for our [contribution guide](https://github.com/flavours/getting-started-with-spring-boot/blob/master/CONTRIBUTING.md) and [code of conduct](https://github.com/flavours/getting-started-with-spring-boot/blob/master/CODE_OF_CONDUCT.md).

### How to prepare a new release of the getting-started project

To create a new release of the getting started project, you have to updated the default welcome screen with the latest version. Please also update the changelog accordingly and tag a new release in github.

```
docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/core:2.9.2 -s --css https://utils.flavours.dev/baseproject/1.0/style.css -o /data/src/main/resources/templates/index.html /data/README.md
```

