# DUDEBOX

Small handy Docker image for debugging within docker/kubernetes.

## Building the image
Ensure you are logged in to your docker repository.
You can adjust the target repository by adjusting the DOCKER_REPO env variable in build.sh.
You can also adjust the kubectl and helm client versions to install here.
The build script will build the image locally and push it to the configured repository.

```
bash build.sh
```

## Push to dockerhub
```
bash push_image.sh
```

## Using the image locally
Start a bash shell in a local container:

```
DOCKER_REPO=julianweberdev
IMAGE=dudebox
docker run -i -t "$DOCKER_REPO/$IMAGE" /bin/bash
```

## Run the image locally with kubernetes
Start a bash shell in a local container:

```
DOCKER_REPO=julianweberdev
IMAGE=dudebox:latest
DEPLOYMENT=dudebox-deployment

kubectl run -i -t --generator=deployment/apps.v1 --image=$DOCKER_REPO/$IMAGE $DEPLOYMENT

# remove container afterwards
kubectl delete deployments/$DEPLOYMENT