#!/bin/bash

docker run -it --rm \
  -v $(pwd):/site \
  -v ~/.ssh:/root/.ssh:ro \
  -v ~/.hugo_cache:/root/.cache/hugo \
  -p 1313:1313 \
  jackstyles/hugo-ubuntu \
  bash -c "cd /site/site && hugo -D serve --bind 0.0.0.0"