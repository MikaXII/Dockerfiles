#!/bin/bash
PEERTUBE_VERSION=$1
ARTIFACTS_DIR=${PWD}/artifact
echo "Remove artifact"
rm -rf artifact/*
echo "Docker build peertube-build version $PEERTUBE_VERSION"
docker build -f Dockerfile.build -t peertube-build .
echo "Docker run peertube-build version $PEERTUBE_VERSION"
docker run --rm -it -v `pwd`/artifact:/artifact peertube-build
echo "Docker build peertube version $PEERTUBE_VERSION"
docker build -t mikaxii/peertube:$PEERTUBE_VERSION .
echo "Docker push peertube version $PEERTUBE_VERSION"
docker push mikaxii/peertube:$PEERTUBE_VERSION
