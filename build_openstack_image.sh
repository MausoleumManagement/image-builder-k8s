#!/bin/bash

# https://image-builder.sigs.k8s.io/capi/providers/openstack

set -euo pipefail

cd ./image-builder/images/capi

make deps-qemu
make build-qemu-ubuntu-2604

# image will end up under
#image-builder/images/capi/output/ubuntu-2604-kube-v1.36.1/ubuntu-2604-kube-v1.36.1
