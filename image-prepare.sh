#!/usr/bin/env bash

set -e

# Build jar
mvn deploy

#Build image
docker build --no-cache=true -t $1 .