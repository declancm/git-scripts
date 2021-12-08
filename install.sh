printf "Do you want to install for vim or neovim? "
read input
keymap="source \$HOME/git-auto-commit/keymap.vim"
if [ "$input" = "vim" ] || [ "$input" = "Vim" ]
then
    if grep -qF "$keymap" ~/.vimrc;then
        printf "The keymap is already sourced in the .vimrc\n"
    else
        printf "\n$keymap\n" >> ~/.vimrc
    fi
    printf "The keymap.vim was installed for vim. Please source your .vimrc.\n"
elif [ "$input" = "neovim" ] || [ "$input" = "Neovim" ] || [ "$input" = "nvim" ]
then
    if grep -qF "$keymap" ~/.config/nvim/init.vim;then
        printf "They keymap is already sourced in the init.vim\n"
    else
        printf "\n$keymap\n" >> ~/.config/nvim/init.vim
    fi
    printf "The keymap.vim was installed for neovim. Please source your init.vim.\n"
else
    printf "You did not enter a valid option.\n"
fi
