#!/usr/bin/env bash

set -e
gcloud config set account maxhogervorst
gcloud docker -- push $1
