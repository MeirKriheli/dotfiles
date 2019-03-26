#!/bin/sh

THEME=$1

if [ -n "$THEME" ]; then
    echo "Setting dircolors theme to $1"
    ln -sf `realpath dircolors/dircolors-$THEME` ~/.dircolors
fi
