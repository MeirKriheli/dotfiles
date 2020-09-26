# My Dotfiles

A place for various dotfiles I have, excluding:

* [Neovim](https://github.com/MeirKriheli/dotneovim)
* [Vim](https://github.com/MeirKriheli/dotvim)

which have their own repositories.


## Install

Clone the repo to a direcory (assuming `~/.dotfiles` from now on):

    git clone https://github.com/MeirKriheli/dotfiles.git ~/.dotfiles.

Run install.sh passing the wanted color scheme:

    cd ~/.dotfiles
    ./install.sh gruvbox

Will install configs for:

* dircolors, based on the color scheme you've passed to the script
* Tmux with tpm
* Ctags
* [Antibody](https://getantibody.github.io/) - ZSH plugin manager
* [Sway](https://swaywm.org/) - Wayland Window Manager
* [Waybar](https://github.com/Alexays/Waybar) Highly customizable Wayland bar for Sway and Wlroots based compositors
* [mako](https://github.com/emersion/mako) - A lightweight notification daemon for Wayland
* [Alacritty](https://github.com/alacritty/alacritty) - Fsstest terminal emulator
