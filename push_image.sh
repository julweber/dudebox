#!/bin/bash

set -euo pipefail

# Configuration (adjust as needed)
export DOCKER_REPO=julianweberdev/dudebox

export TAG="$(cat ./VERSION)"

# Push image
docker push ${DOCKER_REPO}:${TAG}
docker push ${DOCKER_REPO}:latest