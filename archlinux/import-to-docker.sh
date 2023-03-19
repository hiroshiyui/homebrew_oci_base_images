#!/bin/env bash
set -euo pipefail
BASEDIR=$(dirname $0)

cat archlinux-baseimage.tar | docker import - archlinux
