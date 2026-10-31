#!/bin/bash

# https://image-builder.sigs.k8s.io/capi/providers/openstack

set -euxo pipefail

. ./public_env_generic

cd ./image-builder/images/capi

# TODO: went with raw because that is slightly more performant, while being less flexible with disk space used
# also, apprently that allows ceph to instantiate new volumes as copy on write volume clones, which should be faster
# than writing the whole image
# https://specs.openstack.org/openstack/nova-specs/specs/victoria/implemented/nova-image-download-via-rbd.html
# https://www.reddit.com/r/openstack/comments/1d519qx/qcow2_glance_images_with_ceph/

# qcow2
#make deps-qemu
#make build-qemu-${UBUNTU_VERSION}
# raw
time make deps-raw
time make build-raw-${UBUNTU_VERSION}

# image will end up in a subdirectory under
# ./image-builder/images/capi/output
