#!/bin/bash
set -euxo pipefail

source public_env
source secret_env

cd ./image-builder/images/capi

time make deps-proxmox

# see supported oses and platforms in image-builder/images/capi/Makefile
time make build-proxmox-ubuntu-2404
