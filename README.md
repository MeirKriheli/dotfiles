# My Dotfiles

A place for various dotfiles I have, excluding
[Neovim](https://github.com/MeirKriheli/dotneovim) and
[Vim](https://github.com/MeirKriheli/dotvim) which have their own repositories.


## Install

Clone the repo to a direcory (assuming `~/.dotfiles` from now on):

    git clone https://github.com/MeirKriheli/dotfiles.git ~/.dotfiles.

Run install.sh passing the wanted color scheme:

    cd ~/.dotfiles
    ./install.sh gruvbox

Will install:

* A dircolors config, based on the color scheme you've passed to the script
* Tmux config with tpm
* Ctags config
* antibody zsh_plugins.txt
