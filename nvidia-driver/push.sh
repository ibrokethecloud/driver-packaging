#!/bin/bash

set -e
source ./version
docker push ${IMAGE_NAME}:${IMAGE_TAG}