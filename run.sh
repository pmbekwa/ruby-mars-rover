#!/usr/bin/env bash

docker build \
  -f Dockerfile \
  --compress \
  --no-cache \
  -t ruby-mars-rover .
docker run --rm -it \
      ruby-mars-rover
