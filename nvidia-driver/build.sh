#!/bin/bash
set -e

source ./version

docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .