# hugo-dev-env (Docker Image)
Dockerfile to create a HUGO development environment built on ubuntu

## Building the Docker image
Ensure you're in the same dir as the Dockerfile (you can find the Dockerfile in this repository)
You'll only have to build this once OR when you make changes to the underlying Ubuntu based image.
```
docker build -t hugo-dev-env:latest .
```

## Run the Docker container
```
docker run -it --rm -v $(pwd)/site:/site -p 1313:1313 hugo-dev-env bash
```

-v flag will bind $(pwd)/site to the /site dir within the container. 
Bear in-mind that we set `WORKDIR /site` in the Dockerfile, so when starting the container it will automatically open in the /site dir.

-p 1313:1313 will bind the local port to the container port (1313 is the default port for HUGO server)

### Build the static HTML pages and assets
```
hugo build
```
You can add one of the following flags to build optional files as described below:

hugo --buildDrafts    # or -D
hugo --buildExpired   # or -E
hugo --buildFuture    # or -F

Example:
If you wanted to build the draft:true posts then you'd use the following command:
```
hugo -D build
```

### Start the HUGO server
```
hugo -D serve --bind 0.0.0.0
```
