# Created by Declan Mullen
# Git repository can be found at: https://github.com/declancm/git-commit-script

#!/bin/bash

printf "Do you want to install for vim or neovim? "
read input
keymap="source \$HOME/git-commit-kit/keymap.vim"
if [ "$input" = "vim" ] || [ "$input" = "Vim" ]
then
    if grep -qF "$keymap" ~/.vimrc;then
        printf "The keymap is already sourced in the .vimrc\n"
    else
        printf "\n$keymap\n" >> ~/.vimrc
        printf "The keymap.vim was added for vim. Please source your .vimrc.\n"
    fi
elif [ "$input" = "neovim" ] || [ "$input" = "Neovim" ] || [ "$input" = "nvim" ]
then
    if grep -qF "$keymap" ~/.config/nvim/init.vim;then
        printf "They keymap is already sourced in the init.vim\n"
    else
        printf "\n$keymap\n" >> ~/.config/nvim/init.vim
        printf "The keymap.vim was added for neovim. Please source your init.vim.\n"
    fi
else
    printf "You did not enter a valid option.\n"
fi
