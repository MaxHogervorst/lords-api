#!/usr/bin/env bash

set -e
gcloud config set account 763744110904-compute@developer.gserviceaccount.com
gcloud docker -- push $1
