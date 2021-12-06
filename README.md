# git-commit-vim
A shell script **for linux** that allows for automatic git commit generation and pushing to an external repository, that can be run inside vim/neovim with a keymap.
The script detects the current git repository as well as the current branch, and pushes to the 'origin' external repository branch of the same name.

If you don't use vim/neovim, the shell script can just be run from terminal, with the same *great* result.

## Dependencies:
- git

## Quick Installation:
1. git clone https://github.com/declancm/git-commit-vim
2. cd git-commit-vim && ./install.sh

If the installation process has been completed successfully, the downloaded directory can be removed if desired.

## Manual Installation
1. Add the commit.sh script to the directory at ' ~/ ' for vim, or ' ~/.config/nvim/ ' for neovim.
2. For vim, add the first keymap from the keymap.vim file to your .vimrc at ' ~/.vimrc '.
3. For neovim, add the second keymap from the keymap.vim file to your init.vim at ' ~/.config/nvim/init.vim '.
4. Add an external repository to your desired git directory (git remote add external \<repository URL\>).

## Instructions:
**Use \<leader\>cp** within vim/neovim to:
- stage any non-ignored files that have been added to the repository,
- generate a git commit with the current date and time in the message,
- and git push the generated commit to the external git repository branch.

From terminal, **run "source <path-to-commit.sh>"** to automaticall commit and push a git repository to the external repository. A short path is recommended to minimize effort such as: ' ~/commit.sh ' or ' ./commit.sh '.
