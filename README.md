# git-commit-vim
A shellscript **for linux** that allows for automatic git commit generation and pushing to an external repository, that can be run inside vim/neovim with a keymap.
The shell script detects the current git repository as well as the current branch, and pushes to the 'origin' external repository branch of the same name.

## Dependencies:
- git.
- vim/neovim.

## Quick Installation:
- git clone https://github.com/declancm/git-commit-vim
- cd git-commit-vim && ./install.sh
If the installation process has been completed successfully, the downloaded directory can be removed if desired.

## Manual Installation
- Add the commit.sh script to the directory at ' ~/ ' for vim, or ' ~/.config/nvim/ ' for neovim.
- For vim, add the first keymap from the keymap.vim file to your .vimrc at ' ~/.vimrc '.
- For neovim, add the second keymap from the keymap.vim file to your init.vim at ' ~/.config/nvim/init.vim '.
- Add an external repository to your desired git directory (git remote add external \<repository URL\>).

## Instructions:
**Use \<leader\>cp** within vim/neovim to:
- stage any non-ignored files that have been added to the repository,
- generate a git commit with the current date and time in the message,
- and git push the generated commit to the external git repository branch.
