#!/bin/bash

set -eux

cd $HOME
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.con
cp .tmux/.tmux.conf.local .
vim .tmux.conf.local
