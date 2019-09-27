#!/bin/bash

DOCKER_REPO=julianweberdev
IMAGE=dudebox:latest
DEPLOYMENT=dudebox-deployment

kubectl run -i -t --generator=deployment/apps.v1 \
--image=$DOCKER_REPO/$IMAGE $DEPLOYMENT