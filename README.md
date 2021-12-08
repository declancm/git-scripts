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
1. Clone the diretory:

       git clone https://github.com/declancm/git-auto-commit.git ~/git-auto-commit


2. Run the installation script:

       . ~/git-auto-commit/install.sh

3. Make sure you have added an external repository to your desired git directory

https://docs.github.com/en/get-started/getting-started-with-git/managing-remote-repositories.

## Manual Installation:
1. Add the commit.sh script to your desired directory.
2. For vim, add the keymap from the keymap.vim file to your .vimrc at ' ~/.vimrc '. The path to the commit.sh script will need to be adjusted to match where you added the commit.sh file.
3. For neovim, add the keymap from the keymap.vim file to your init.vim at ' ~/.config/nvim/init.vim '. The path to the commit.sh script will need to be adjusted to match where you added the commit.sh file.
4. Make sure you have added an external repository to your desired git directory (https://docs.github.com/en/get-started/getting-started-with-git/managing-remote-repositories).

## Instructions:
- **For vim/neovim usage:**

Use **\<leader\>cp** within vim/neovim to commit and push.

- **For terminal usage:**

From terminal, manually run the shell script:

    source = <path-to-commit.sh>

An alias can be created within ' ~/.bashrc ' (or zsh etc. as long as bash is installed) like so:

    alias commit='source ~/git-auto-commit/commit.sh'

After adding the alias, enter 'commit' within the terminal to run the script.
