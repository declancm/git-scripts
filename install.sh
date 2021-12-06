printf "Do you want to install for vim or neovim?"
read input
if [ $input == 'vim' || $input == 'Vim' ]
then
    cp ./git.sh ~/git.sh
    printf "nnoremap <leader>cp :!source ~/git.sh<CR>" >> ~/.vimrc
else if [$input == 'neovim' || $input == 'Neovim' || $input == 'nvim' ]
then
    cp ./git.sh ~/.config/nvim/git.sh
    printf "nnoremap <leader>cp :!source ~/.config/nvim/git.sh<CR>" >> ~/.config/nvim/init.vim
else
    printf "You did not enter a valid option."
fi
