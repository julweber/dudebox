# circleci-kubectl-helm docker build file

# based on circleci/buildpack-deps:stretch
FROM alpine

MAINTAINER Julian Weber <julianweberdev@gmail.com>

# BUILD ENV
ENV BUILD_PATH=/root
WORKDIR $BUILD_PATH

# install dependencies
RUN apk add bind-tools curl htop wget nano\
   && rm -rf /var/cache/apk/*

CMD ["/bin/sh"]