#!/bin/env bash
set -euo pipefail
BASEDIR=$(dirname $0)
TIMESTAMP=$(date +%Y%m%d%H%M)

if [ ! -x "$(command -v debootstrap)" ]; then
    echo "Package 'debootstrap' should be present in system!"
    exit 1
fi

if [ ! -f ${BASEDIR}/../common/busybox ]; then
  echo "Need 'busybox' to continue the build process! Change directory to ../common/ and run 'make busybox' to download it!"
  exit 1
fi

# WIP:
#   - mkdir bootstrap rootfs
#   - debootstrap in the bootstrap rootfs
#   - make tar of bootstrap rootfs
#   - build base image
#       - extract the bootstrap rootfs archive
#       - do essential configurations
#   - clean (optional)
