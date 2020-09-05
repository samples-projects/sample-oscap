#!/bin/bash

VAGRANT_CLOUD_TOKEN=3A7R1uWN05aScQ.atlasv1.Xv42jCw5DjkMDVIAFKIU11hrmykSbyFHCB6yG9MQIBwVHzFNFI66pA9SkCLIXwEMw9Q
VAGRANT_USER=kannkyo

BOX_NAME=openscap
BOX_VERSION=0.0.1
BOX_PROVIDER=virtualbox

response=$(curl \
  --header "Authorization: Bearer $VAGRANT_CLOUD_TOKEN" \
  https://app.vagrantup.com/api/v1/box/${VAGRANT_USER}/${BOX_NAME}/version/${BOX_VERSION}/provider/${BOX_PROVIDER}/upload)

upload_path=$(echo "$response" | jq -r .upload_path)

curl \
  $upload_path \
  --request PUT \
  --upload-file package.box
