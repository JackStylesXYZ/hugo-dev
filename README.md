# hugo-dev
Dockerfile to create a HUGO development environment built on ubuntu

## Run the Docker container
`docker run -v $(pwd)/site:/site -it --rm hugo-dev-env bash`

This will use the -v flag to bind the $(pwd)/site on your local machine to the /site dir in your ubuntu container. When you create a HUGO site and make any changes they will also propogate through and save onto your local development manchine in the /site dir. This means that you can use ephemeral containers and save any additional site specific details onto your local machine for future use.

