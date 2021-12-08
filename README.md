# git-auto-comit
A shell script **for linux**, that can be run within vim/neovim with a keymap, which will:
- stage any non-ignored files that have been added to the current repository,
- generate a git commit with the current date and time in the message,
- and git push the generated commit to the external git repository branch.

The script detects the current git repository, the current branch and the name of the remote repository, then pushes to the remote repository with the branch of the same name.

If you don't use vim/neovim, only the commit.sh script is needed which can be run in terminal.

## Dependencies:
- git

## Quick Installation:
1. git clone https://github.com/declancm/git-commit-vim
2. cd git-commit-vim && ./install.sh
3. Make sure you have added an external repository to your desired git directory (https://docs.github.com/en/get-started/getting-started-with-git/managing-remote-repositories).

If the installation process has been completed successfully, the downloaded directory can be removed if desired.

## Manual Installation:
1. Add the commit.sh script to the directory at ' ~/auto-commit/ ' for vim, or ' ~/.config/nvim/auto-commit/ ' for neovim.
2. For vim, add the first keymap from the keymap.vim file to your .vimrc at ' ~/.vimrc '.
3. For neovim, add the second keymap from the keymap.vim file to your init.vim at ' ~/.config/nvim/init.vim '.
4. Make sure you have added an external repository to your desired git directory (https://docs.github.com/en/get-started/getting-started-with-git/managing-remote-repositories).

## Instructions:
- **For vim/neovim usage:**\
Use **\<leader\>cp** within vim/neovim to commit and push.

- **For terminal usage:**\
From terminal, run **"source <path-to-commit.sh>"** to manually run the shell script. An alias can be created within ' ~/.bashrc ' (or zsh etc. as long as bash is installed) like so:

  - alias commit='source ~/auto-commit/commit.sh'

  After adding the alias, enter 'commit' within the terminal to run the script.
