#!/bin/env bash
set -euo pipefail
BASEDIR=$(dirname $0)

if [ ! -f ${BASEDIR}/archlinux-bootstrap-x86_64.tar.gz ]; then
  wget http://mirror.archlinux.tw/ArchLinux/iso/2023.03.01/archlinux-bootstrap-x86_64.tar.gz
fi

mkdir -p ${BASEDIR}/bootstrap_root
sudo tar xvfz ${BASEDIR}/archlinux-bootstrap-x86_64.tar.gz --numeric-owner --strip-components=1 --directory ${BASEDIR}/bootstrap_root
sudo tar cvf ${BASEDIR}/archlinux-baseimage.tar --directory ${BASEDIR}/bootstrap_root ${BASEDIR}
