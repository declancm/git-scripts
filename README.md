# git-commit-vim
A vim/neovim shell script and keymap for linux that allows for automatic git commiting and pushing to an external repository (that has already been initialized).

## Dependencies:
- git
- vim/neovim

## Installation (vim):
- Add the git.sh script to ' ~/. ' . This can be customized by changing the calling path in the keymap.
- Add the vim keymap to your ' ~/.vimrc ' .
- Initialize the external repo for your git repository.

## Installation (nvim):
- Add the git.sh script to ' ~/.config/nvim/. ' . This can be customized by changing the calling path in the keymap.
- Add the neovim keymap from keymap.vim to ' ~/.config/nvim/init.vim ' .
- Initialize the external repo for your git repository.

## Instructions:
- Use `<leader>`cp with vim/neovim to automatically save current file and add any created files to the cache, before committing and pushing to the external git repository.
