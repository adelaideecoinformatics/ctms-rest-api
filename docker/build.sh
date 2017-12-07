#!/bin/bash
# Builds the docker image
set -e
cd `dirname "$0"`/..
unique_tag=`date +%Y%m%d_%H%M`
prefix='ctms-rest-api'
gcloud_tag='asia.gcr.io/image-repo-1234/ctms-rest-api:test'
docker build -t $prefix:$unique_tag -t $prefix:latest -t $gcloud_tag .
echo "[INFO] Build complete, push to registry with:"
echo "  gcloud docker -- push $gcloud_tag"
