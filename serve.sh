#!/bin/bash

docker run -it --rm \
  -v $(pwd)/site:/site \
  -v ~/.ssh:/root/.ssh \
  -p 1313:1313 \
  hugo-dev-env bash
