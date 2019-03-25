#!/bin/bash

function usage {
    cat << __EOT__
Usage: docker.sh [USER]

Install docker and allow the USER to use docker without sudo.
__EOT__
}

if [ -z $1 ]; then usage && exit; fi

set -eux

apt-get install -qy apt-transport-https ca-certificates software-properties-common

declare -r FINGERPRINT=0EBFCD88
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint ${FINGERPRINT}

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

apt-get update -qy
apt-get install -qy docker-ce

usermod -aG docker $1
