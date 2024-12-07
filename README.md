# hugo-dev
Dockerfile to create a HUGO development environment built on ubuntu

## Building the Docker image
```
docker build -t hugo-dev-env:latest .
```


## Run the Docker container
```
docker run -v $(pwd)/site:/site -it --rm hugo-dev-env bash
```

This will use the -v flag to bind the $(pwd)/site on your local machine to the /site dir in your ubuntu container. When you create a HUGO site and make any changes they will also propogate through and save onto your local development manchine in the /site dir. This means that you can use ephemeral containers and save any additional site specific details onto your local machine for future use.

## Run the HUGO development server

### Start the container
```
docker run -it --rm -v $(pwd)/site:/site -p 1313:1313 hugo-dev-env bash
```

### Build the static HTML pages and assets

```
hugo build
```
hugo --buildDrafts    # or -D
hugo --buildExpired   # or -E
hugo --buildFuture    # or -F

### Start the HUGO server
*-D flag ensures that draft posts will be shown, good for development*

Make sure you're in the HUGO website dir before you run the command below. (*e.g. "cd quickstart"*)

```
hugo -D serve --bind 0.0.0.0
```
