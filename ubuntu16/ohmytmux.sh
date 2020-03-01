#!/bin/bash

set -eux

cd $HOME
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
vim .tmux.conf.local
