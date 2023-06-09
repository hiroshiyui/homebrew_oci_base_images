#!/bin/env bash
set -euo pipefail
BASEDIR=$(dirname $0)
TIMESTAMP=$(date +%Y%m%d%H%M)
DEBIAN_VERSION=bullseye

if [ ! -x "$(command -v cdebootstrap)" ]; then
    echo "Package 'cdebootstrap' should be present in system!"
    exit 1
fi

mkdir -p ${BASEDIR}/bootstrap_rootfs

if [ ! -f ${BASEDIR}/bootstrap_rootfs.tar ]; then
  sudo cdebootstrap ${DEBIAN_VERSION} ${BASEDIR}/bootstrap_rootfs http://deb.debian.org/debian
  sudo tar cvf ${BASEDIR}/bootstrap_rootfs.tar bootstrap_rootfs
fi

if [ -x "$(command -v podman)" ]; then
  podman build --squash-all -f Containerfile -t debian_${DEBIAN_VERSION}:${TIMESTAMP}
  podman image tag debian_${DEBIAN_VERSION}:${TIMESTAMP} debian_${DEBIAN_VERSION}:latest
  exit 0
fi

if [ -x "$(command -v docker)" ]; then
  docker build --squash -f Containerfile -t debian_${DEBIAN_VERSION}:${TIMESTAMP}
  docker image tag debian_${DEBIAN_VERSION}:${TIMESTAMP} debian_${DEBIAN_VERSION}:latest
  exit 0
fi
