#!/usr/bin/env bash

export OWNER=mikhaelsantos
export IMAGE_NAME=jimbr
export VCS_REF=`git rev-parse --short HEAD`
export IMAGE_VERSION=0.2.${TRAVIS_BUILD_NUMBER}
export QNAME=${OWNER}/${IMAGE_NAME}

export GIT_TAG=${QNAME}:${VCS_REF}
export BUILD_TAG=${QNAME}:${IMAGE_VERSION}
export LATEST_TAG=${QNAME}:latest

docker build \
    --build-arg VCS_REF=${VCS_REF} \
    --build-arg IMAGE_VERSION=${IMAGE_VERSION} \
    -t ${GIT_TAG} .

docker tag ${GIT_TAG} ${BUILD_TAG}
docker tag ${GIT_TAG} ${LATEST_TAG}
docker login -u "${DOCKER_USER}" -p "${DOCKER_PASS}"
if [ "$TRAVIS_PULL_REQUEST" = "false" ]; then
docker push ${LATEST_TAG}
fi