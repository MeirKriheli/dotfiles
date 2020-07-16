#!/bin/sh

THEME=$1

if [ -n "$THEME" ]; then
    echo "Setting dircolors theme to $1"
    ln -sf `realpath dircolors/dircolors-$THEME` ~/.dircolors
fi

echo "Setting tmux config"

if [ -d ~/.tmux/plugins/tpm ]; then
    echo "tpm directory already in place, not cloning"
else
    echo "Cloning tmux plugin manager"
    mkdir -p ~/.tmux/plugins
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

echo "Setting tmux config"
ln -sf `realpath tmux/tmux.conf` ~/.tmux.conf

echo "Setting ctags config"
ln -sf `realpath ctags/ctags.conf` ~/.ctags