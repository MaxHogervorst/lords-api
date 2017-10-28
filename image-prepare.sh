#!/usr/bin/env bash

set -e

# Build jar
mvn clean compile assembly:single

#Build image
docker build --no-cache=true -t $1 .