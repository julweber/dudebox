#!/bin/bash

set -euo pipefail

# Configuration (adjust as needed)
export DOCKER_REPO=julianweberdev/dudebox

export TAG="$(cat ./VERSION)"

# Build image
docker build -t ${DOCKER_REPO}:${TAG} .

docker tag ${DOCKER_REPO}:${TAG} ${DOCKER_REPO}:latest
