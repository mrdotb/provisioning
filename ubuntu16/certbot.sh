#!/bin/bash

set -eux

apt-get install -qy software-properties-common

add-apt-repository -y universe
add-apt-repository -y ppa:certbot/certbot

apt-get update -qy
apt-get install -qy certbot python3-certbot-dns-cloudflare
