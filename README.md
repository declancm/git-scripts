# git-commit-script

A shell script that uses **Bash**, that can be run within vim/neovim with a\
keymap, which will:

- stage any non-ignored files that have been added to the current repository,
- generate a git commit with the current date and time in the message,
- and git push the generated commit to the external git repository branch.

The script detects the current git repository, the current branch and the name\
of the remote repository, then pushes to the remote repository with the branch\
of the same name.

If you don't use vim/neovim, the script can be run from terminal with the same\
results.

## Dependencies

- Bash
- git

## Quick Installation

1. Clone the directory:

    ```Bash
    git clone https://github.com/declancm/git-commit-script.git ~/git-commit-script
    ```

2. Ensure the scripts executable:

    ```Bash
    chmod +x ~/git-commit-script/commit.sh ~/git-commit-script/install.sh
    ```

3. Run the installation script to install the keymap:

    ```Bash
    . ~/git-commit-script/install.sh
    ```

4. Make sure you have added a remote repository to your desired git directory:

<https://docs.github.com/en/get-started/getting-started-with-git/managing-remote-repositories>

## Manual Installation

1. Add the commit.sh script to your desired directory.
2. Install the keymap:
    - For vim, add the keymap from the keymap.vim file to your .vimrc at\
      ' ~/.vimrc '. The path to the commit.sh script will need to be adjusted to\
      match where you added the commit.sh file.
    - For neovim, add the keymap from the keymap.vim file to your init.vim at\
      ' ~/.config/nvim/init.vim '. The path to the commit.sh script will need to\
      be adjusted to match where you added the commit.sh file.
3. Make sure you have added an external repository to your desired git directory:

<https://docs.github.com/en/get-started/getting-started-with-git/managing-remote-repositories>

## Instructions

### For vim/neovim usage

Use `\<leader\>cp` within vim/neovim to commit and push.

### For terminal usage

From terminal, manually run the shell script:

```Bash
source ~/git-commit-script/commit.sh
```

An alias can be created within ' ~/.bashrc ' (or zsh etc. as long as bash is\
installed) like so:

```Bash
alias commit='source ~/git-commit-script/commit.sh'
```

After adding the alias, enter `commit` within the terminal to run the script.
