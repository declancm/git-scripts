printf "Do you want to install for vim or neovim"
read input
if [ $input == 'vim' || $input == 'Vim' ]
then

else if [$input == 'neovim' || $input == 'Neovim' || $input == 'nvim' ]
then

else

fi
