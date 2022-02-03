# git-scripts

Bash shell scripts to make life easier when using Git.

The scripts allow for:

- automated git commit and push,
- automated git pull.

## The Scripts

### commit.sh

- The script detects the current git repository, the current branch and the name\
  of the remote repository, then pushes to the remote repository with the branch\
  of the same name.

### pull.sh

- Git pull from your remote repository for your current branch.

## Dependencies

- Bash
- git

## Installation

1. Clone the directory:

    ```Bash
    git clone https://github.com/declancm/git-scripts.git ~/git-scripts
    ```

2. Ensure the scripts executable:

    ```Bash
    chmod +x ~/git-scripts/*.sh
    ```

3. Make sure you have added a remote repository to your desired git directory:

    <https://docs.github.com/en/get-started/getting-started-with-git/managing-remote-repositories>

4. Aliases can be created within ' ~/.bashrc ' (or ' ~/.zshrc ' for ZSH as long as\
   bash is installed) like so:

   ```Bash
   alias commit='source ~/git-scripts/commit.sh'
   alias pull='source ~/git-scripts/pull.sh'
   ```

## Instructions

### For Terminal Usage

From terminal, manually run the shell scripts:

```Bash
source ~/git-scripts/commit.sh
source ~/git-scripts/pull.sh
```

Or if the aliases have been created, enter `commit` or `pull` within the terminal\
to run a script.

### For Vim/Neovim

The same scripts can be used for vim/neovim:

```vim
nnoremap <silent> <leader>gc :!source ~/git-scripts/commit.sh<CR>
nnoremap <silent> <leader>gp :!source ~/git-scripts/pull.sh<CR>
```
