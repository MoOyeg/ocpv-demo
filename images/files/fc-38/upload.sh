#!/bin/bash

BASEDIR=$(dirname "$0")

virtctl image-upload --insecure dv fc38-base --size=20Gi \
  --image-path=${BASEDIR}/Fedora-Cloud-Base-38-1.6.x86_64.raw.xz \
  --insecure-skip-tls-verify=true