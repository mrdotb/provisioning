#!/bin/bash

function usage {
    cat << __EOT__
Usage: docker.sh

Install elixr and erlang.
__EOT__
}

if [ -z $1 ]; then usage && exit; fi

set -eux

cd /tmp
wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb
dpkg -i erlang-solutions_2.0_all.deb && rm -rf erlang-solutions_2.0_all.deb
apt-get update -qy
apt-get install -qy esl-erlang elixir
