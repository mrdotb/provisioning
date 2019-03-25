#!/bin/bash

set -eux

## install basic
apt-get -qy update
apt-get install -qy git vim htop build-essential ncdu curl wget
