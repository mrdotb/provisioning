#!/bin/bash

set -eux

function add_line() {
  FILE=$1
  LINE=$2

  grep -qF -- "$LINE" "$FILE" || echo "$LINE" >> "$FILE"
}

## bashrc
### vi mode
add_line "$HOME/.bashrc" "set -o vi"
### prompt
add_line "$HOME/.bashrc" 'export PS1="\[\e[34m\]\u@\h\[\e[m\][\[\e[35m\]\w\[\e[m\]]\n$ "'
## set default
add_line "$HOME/.bashrc" "export VISUAL=vim"
add_line "$HOME/.bashrc" "export EDITOR=vim"
## vimrc
curl https://raw.githubusercontent.com/mrdotb/provisioning/master/configs/.vimrc > "$HOME/.vimrc"

## install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all
