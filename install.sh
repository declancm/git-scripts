printf "Do you want to install for vim or neovim? "
read input
if [ "$input" = "vim" ] || [ "$input" = "Vim" ]
then
    [ ! -d ~/auto-commit ] && mkdir -p ~/auto-commit && printf "The auto-commit directory was created.\n"
    cp -f ./commit.sh ~/auto-commit/commit.sh
    printf "nnoremap <leader>cp :!source ~/auto-commit/commit.sh<CR>" > ~/auto-commit/commit-keymap.vim
    vimMap="if !empty(glob(\"\$HOME/auto-commit/commit-keymap.vim\"))\n    source \$HOME/auto-commit/commit-keymap.vim\nendif"
    if grep -qF "$vimMap" ~/.vimrc;then
        printf "The keymap is already sourced in the .vimrc\n"
    else
        printf "\n$vimMap\n" >> ~/.vimrc
    fi
    printf "auto-commit was installed for vim. Please source your .vimrc .\n"
elif [ "$input" = "neovim" ] || [ "$input" = "Neovim" ] || [ "$input" = "nvim" ]
then
    [ ! -d ~/.config/nvim/auto-commit ] && mkdir -p ~/.config/nvim/auto-commit && printf "The auto-commit directory was created.\n"
    cp -f ./commit.sh ~/.config/nvim/auto-commit/commit.sh
    printf "nnoremap <leader>cp :!source ~/.config/nvim/auto-commit/commit.sh<CR>" > ~/.config/nvim/auto-commit/commit-keymap.vim
    neovimMap="if !empty(glob(\"\$HOME/.config/nvim/auto-commit/commit-keymap.vim\"))\n    source \$HOME/.config/nvim/auto-commit/commit-keymap.vim\nendif"
    if grep -qF "$neovimMap" ~/.config/nvim/init.vim;then
        printf "They keymap is already sourced in the init.vim\n"
    else
        printf "\n$neovimMap\n" >> ~/.config/nvim/init.vim
    fi
    printf "auto-commit was installed for neovim. Please source your init.vim .\n"
else
    printf "You did not enter a valid option.\n"
fi
