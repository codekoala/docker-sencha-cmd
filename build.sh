#!/usr/bin/env bash

envsubst '${CMD_VER}' < Dockerfile.in > Dockerfile

docker build --pull --tag ${IMG}:${CMD_VER} .
docker tag ${IMG}:${CMD_VER} ${IMG}:${CMD_VER_SHORT}
docker tag ${IMG}:${CMD_VER} ${IMG}:latest
