#!/bin/bash
set -euxo pipefail

source public_env_generic
source public_env_proxmox

cd ./image-builder/images/capi


# see supported oses and platforms in image-builder/images/capi/Makefile
time make deps-proxmox
time make build-proxmox-${UBUNTU_VERSION}
