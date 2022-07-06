#!/bin/bash
set -x
set -e

if ! which sealer;then
	echo "sealer not found, please download latest sealer"
	exit 1
fi

TAG=$1
ARCH=$2

# Build sealer image
sealer build -f Kubefile -t anolis-cloud-native:${TAG} --platform ${ARCH} .
