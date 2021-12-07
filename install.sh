printf "Do you want to install for vim or neovim? "
read input
if [ "$input" = "vim" ] || [ "$input" = "Vim" ]
then
    [ ! -d ~/auto-commit ] && mkdir -p ~/auto-commit && printf "The auto-commit directory was created.\n"
    cp -f ./commit.sh ~/auto-commit/commit.sh
    keymapvim="nnoremap <leader>cp :!source ~/auto-commit/commit.sh<CR>"
    if grep -qF "$keymapvim" ~/.vimrc;then
        printf "The keymap already exists in the .vimrc\n"
    else
        printf "$keymapvim" >> ~/.vimrc
    fi
elif [ "$input" = "neovim" ] || [ "$input" = "Neovim" ] || [ "$input" = "nvim" ]
then
    [ ! -d ~/.config/nvim/auto-commit ] && mkdir -p ~/.config/nvim/auto-commit && printf "The auto-commit directory was created.\n"
    cp -f ./commit.sh ~/.config/nvim/git-auto-commit/commit.sh
    keymapneovim="nnoremap <leader>cp :!source ~/.config/nvim/auto-commit/commit.sh<CR>"
    if grep -qF "$keymapneovim" ~/.config/nvim/init.vim;then
        printf "They keymap already exists in the init.vim\n"
    else
        printf "$keymapneovim" >> ~/.config/nvim/init.vim
    fi
else
    printf "\nYou did not enter a valid option.\n\n"
fi
