# Created by Declan Mullen
# Git repository can be found at: https://github.com/declancm/git-scripts

#!/usr/bin/env bash

if git rev-parse --git-dir > /dev/null 2>&1; then
    branch=$(git rev-parse --abbrev-ref HEAD)
    gitDirectory=$(git rev-parse --show-toplevel)
    cd $gitDirectory
    remote=$(git remote)
    git add .
    wait
        if [ $# -eq 0 ] || [ -z "$1" ]
    then
        git commit -a -m "Auto Commit: `date -u +'%b %d %H:%M:%S %Y'` UTC"
    else
        git commit -a -m "$1"
    fi
    wait
    git push $remote $branch
    cd $OLDPWD
else
    printf "You are not inside a git repository.\n"
    exit 1
fi
