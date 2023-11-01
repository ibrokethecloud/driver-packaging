#!/bin/bash
set -e

source ./version

docker build --pull \
	--build-arg BASE_OS_IMAGE="${BASE_OS_IMAGE}" \
	-t ${IMAGE_NAME}:${IMAGE_TAG} .