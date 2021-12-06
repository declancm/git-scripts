# git-auto-comit
A shell script **for linux**, that can be run within vim/neovim with a keymap, which will:
- stage any non-ignored files that have been added to the current repository,
- generate a git commit with the current date and time in the message,
- and git push the generated commit to the external git repository branch.

The script detects the current git repository as well as the current branch, and pushes to the 'origin' external repository branch of the same name.

If you don't use vim/neovim, just the commit.sh script is needed which can be run within terminal with the same *great* result.

## Dependencies:
- git

## Quick Installation:
1. git clone https://github.com/declancm/git-commit-vim
2. cd git-commit-vim && ./install.sh
3. Add an external repository to your desired git directory (git remote add external \<repository URL\>).

If the installation process has been completed successfully, the downloaded directory can be removed if desired.

## Manual Installation:
1. Add the commit.sh script to the directory at ' ~/ ' for vim, or ' ~/.config/nvim/ ' for neovim.
2. For vim, add the first keymap from the keymap.vim file to your .vimrc at ' ~/.vimrc '.
3. For neovim, add the second keymap from the keymap.vim file to your init.vim at ' ~/.config/nvim/init.vim '.
4. Add an external repository to your desired git directory (git remote add external \<repository URL\>).

## Instructions:
**For vim/neovim usage:**\
Use **\<leader\>cp** within vim/neovim to run the shell script.


**For terminal usage:**\
From terminal, run **"source <path-to-commit.sh>"** to manually run the shell script. An alias can be created within ' ~/.bashrc ' (or zsh etc. as long as bash is installed) like so:

alias acommit='source ~/auto-commit/commit.sh'
