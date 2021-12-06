# git-commit-vim
A vim/neovim shell script and keymap **for linux** that allows for automatic git commit generation and pushing to an external repository (that has already been initialized).
The shell script detects the current git repository as well as the current branch, and pushes to the 'origin' external repository branch of the same name.

## Dependencies:
- git.
- vim/neovim.

## Quick Installation:
- git clone https://github.com/declancm/git-commit-vim
- cd git-commit-vim && ./install.sh

## Manual Installation (vim):
- Add the git.sh script to ' ~/. ' (This can be customized by changing the calling path in the keymap).
- Add the vim keymap from keymap.vim to your .vimrc.
- Initialize the external repo for your git repository.

## Manual Installation (nvim):
- Add the git.sh script to ' ~/.config/nvim/. ' (This can be customized by changing the calling path in the keymap).
- Add the neovim keymap from keymap.vim to init.vim.
- Initialize the external repo for your git repository.

## Instructions:
Use \<leader\>cp within vim/neovim to:
- stage any non-ignored files that have been added to the repository,
- generate a git commit with the current date and time in the message,
- and git push the generated commit to the external git repository.
