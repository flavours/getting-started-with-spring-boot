# How to contribute to the project

Thanks for contributing, welcome aboard.

Please see our [CODE OF CONDUCT](./CODE_OF_CONDUCT.md) for our code of conduct.


## Submitting proposals

Please provide proposals as
[pull requests](https://github.com/flavours/getting-started-with-spring-boot/pulls)
or
[issues](https://github.com/flavours/getting-started-with-spring-boot/issues) as appropriate.


## Pull requests and branches

Please make pull requests:

* from an appropriately-named new branch
* to the ``master`` branch

See: 

* [how to make pull requests](https://help.github.com/articles/using-pull-requests/)
* [how to manage branches](https://help.github.com/articles/creating-and-deleting-branches-within-your-repository/)


### Whitespace

Do not use trailing whitespace (spaces or tabs at the end of a line). They are often not visible, and can cause silent 
problems and misleading unexpected changes. For example, some editors quietly delete them by default.


### Prepare a new release of the getting-started project

* Update the default welcome screen - i.e. the ``README`` - with the latest version. Run:

  ```
  docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/core:2.9.2 -s --css https://utils.flavours.dev/baseproject/1.0/style.css --metadata pagetitle="Spring Boot Flavour" -o /data/src/main/resources/templates/index.html /data/README.md
  ```

  This uses the ``README.md`` file to populate the project's ``index.html`` - both files should be committed.

* Update the [CHANGELOG](https://github.com/flavours/getting-started-with-spring-boot/blob/master/CHANGELOG.md. Follow 
  the format of existing entries.

* Tag the new release on GitHub.
