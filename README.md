docker-sencha-cmd
=================

Docker image to run Sencha Cmd with its dependencies satisfied.

Build Production App
--------------------

Here's an example command for building the production version of your project.

    docker run --rm -v $(pwd):/code --workdir /code codekoala/sencha app build
