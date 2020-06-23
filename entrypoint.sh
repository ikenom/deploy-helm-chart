#!/bin/bash

set -e

echo $CONTAINER_REGISTRY_PASSWORD | helm registry login ${CONTAINER_REGISTRY} \
  --username $CONTAINER_REGISTRY_USERNAME \
  --password-stdin

OUTPUT=( "$(helm chart save $HELM_CHART_NAME ${CONTAINER_REGISTRY}/dev-workspace)")
OUTPUTS=( $OUTPUT )
IMAGE_NAME=${OUTPUTS[1]}
helm chart push $IMAGE_NAME
