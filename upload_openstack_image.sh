#!/bin/bash

set -euxo pipefail

. ./public_env_generic

image_path="image-builder/images/capi/output/${UBUNTU_VERSION}-kube-${K8S_BUGFIX}/${UBUNTU_VERSION}-kube-${K8S_BUGFIX}"
image_name="$(basename $image_path)"

# TODO: it would be nice to explicitly set these variables for clarity
# we just use the ~/.config/openstack/clouds.yaml for most of the required env vars
# password will be prompted for
openstack image create --progress --file "${image_path}" --disk-format raw --tag k8s "${image_name}"


