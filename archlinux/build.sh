#!/bin/env bash
set -euo pipefail
BASEDIR=$(dirname $0)
TIMESTAMP=$(date +%Y%m%d%H%M)

if [ ! -f ${BASEDIR}/archlinux-bootstrap-x86_64.tar.gz ]; then
  wget http://mirror.archlinux.tw/ArchLinux/iso/2023.03.01/archlinux-bootstrap-x86_64.tar.gz
fi

if [ ! -f ${BASEDIR}/busybox ]; then
  wget https://www.busybox.net/downloads/binaries/1.35.0-x86_64-linux-musl/busybox
fi

if [ -x "$(command -v podman)" ]; then
  podman build --squash-all -f Containerfile -t archlinux:${TIMESTAMP}
  podman image tag archlinux:${TIMESTAMP} archlinux:latest
  exit 0
fi

if [ -x "$(command -v docker)" ]; then
  docker build --squash -f Containerfile -t archlinux:${TIMESTAMP}
  docker image tag archlinux:${TIMESTAMP} archlinux:latest
  exit 0
fi
