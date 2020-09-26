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


echo "Setting zsh antibody plugins"
antibody bundle < `realpath antibody/zsh_plugins.txt` > ~/.zsh_plugins.sh

config_dirs=( alacritty mako sway waybar )
for x in "${config_dirs[@]}"; do
    echo "Setting $x config"
    ln -sf `realpath $x` ~/.config/$x
done

echo "Copying .profile"
ln -sf `realpath profile/profile` ~/.profile

echo -e "\n=====================\n       Done\n====================="
echo -e "Ensure you have in your ~/.zshrc:\n\nsource ~/.zsh_plugins.sh"
