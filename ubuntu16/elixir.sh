#!/bin/bash

set -eux

cd /tmp
wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb
dpkg -i erlang-solutions_2.0_all.deb && rm -rf erlang-solutions_2.0_all.deb
apt-get update -qy
apt-get install -qy esl-erlang elixir
